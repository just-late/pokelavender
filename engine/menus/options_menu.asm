DEF NUM_OPTIONS EQU 5

OptionsMenu:
	ld hl, hInMenu
	ld a, [hl]
	push af
	ld [hl], $1
	call ClearBGPalettes
	hlcoord 0, 0
	lb bc, SCREEN_HEIGHT - 2, SCREEN_WIDTH - 2
	call Textbox
	hlcoord 2, 2
	ld de, StringOptions1
	rst PlaceString
	xor a
	ld [wCurOptionsPage], a
	call OptionsMenu_LoadOptions

	xor a
	ld [wJumptableIndex], a
	ld a, CGB_PLAIN
	call GetCGBLayout
	call SetPalettes

.joypad_loop
	call JoyTextDelay
	ldh a, [hJoyPressed]
	and START | B_BUTTON
	jr nz, .ExitOptions
	call OptionsControl
	jr c, .dpad
	call GetOptionPointer
	jr c, .ExitOptions

.dpad
	call Options_UpdateCursorPosition
	ld c, 3
	call DelayFrames
	jr .joypad_loop

.ExitOptions:
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	pop af
	ldh [hInMenu], a
	ret

OptionsMenu_LoadOptions:
	xor a
	ld [wJumptableIndex], a
	ldh [hJoyPressed], a
	ld c, NUM_OPTIONS - 1
.print_text_loop ; this next will display the settings of each option when the menu is opened
	push bc
	xor a
	ldh [hJoyLast], a
	call GetOptionPointer
	pop bc
	ld hl, wJumptableIndex
	inc [hl]
	dec c
	jr nz, .print_text_loop
	ld a, [wCurOptionsPage]
	and a
	call z, UpdateFrame
	ld a, 1
	ldh [hBGMapMode], a
	jmp ApplyTilemapInVBlank

StringOptions1:
	text  "TEXT SPEED"
	next1 "        :"
	next1 "BATTLE EFFECTS"
	next1 "        :"
	next1 "BATTLE STYLE"
	next1 "        :"
	next1 "FRAME"
	next1 "        :TYPE"
	next1 "SOUND"
	next1 "        :"
	next1 "DONE"
	done

GetOptionPointer:
	ld a, [wCurOptionsPage]
	and a
	ld a, [wJumptableIndex]
	jr z, .page1
	add 8
.page1
	call StackJumpTable

.Pointers:
	dw Options_TextSpeed
	dw Options_BattleEffects
	dw Options_BattleStyle
	dw Options_Frame
	dw Options_Sound
	dw Options_Done

Options_TextSpeed:
	ld a, [wOptions1]
	and TEXT_DELAY_MASK
	ld c, a
	ldh a, [hJoyPressed]
	dec c
	bit D_LEFT_F, a
	jr nz, .ok
	inc c
	bit D_RIGHT_F, a
	jr z, .NonePressed
	inc c
.ok
	ld a, c
	and TEXT_DELAY_MASK
	ld c, a
	ld a, [wOptions1]
	and ~TEXT_DELAY_MASK
	or c
	ld [wOptions1], a

.NonePressed:
	ld b, 0
	ld hl, .Strings
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	hlcoord 11, 3
	rst PlaceString
	and a
	ret

.Strings:
	dw .Instant
	dw .Fast
	dw .Medium
	dw .Slow

.Fast:
	db "FAST   @"
.Medium:
	db "MEDIUM @"
.Slow:
	db "SLOW   @"
.Instant:
	db "INSTANT@"

Options_BattleEffects:
	ld hl, wOptions1
	ldh a, [hJoyPressed]
	and D_LEFT | D_RIGHT
	jr nz, .Toggle
	bit BATTLE_EFFECTS, [hl]
	jr z, .SetOff
	jr .SetOn
.Toggle
	bit BATTLE_EFFECTS, [hl]
	jr z, .SetOn
.SetOff:
	res BATTLE_EFFECTS, [hl]
	ld de, .Off
	jr .Display
.SetOn:
	set BATTLE_EFFECTS, [hl]
	ld de, .On
.Display:
	hlcoord 11, 5
	rst PlaceString
	and a
	ret

.Off:
	db "OFF@"
.On:
	db "ON @"

Options_BattleStyle:
	ld hl, wOptions2
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr nz, .RightPressed
	bit BATTLE_SWITCH, [hl]
	jr nz, .SetSwitch
	bit BATTLE_PREDICT, [hl]
	jr nz, .SetPredict
.SetSet:
	res BATTLE_SWITCH, [hl]
	res BATTLE_PREDICT, [hl]
	ld de, .Set
	jr .Display

.LeftPressed:
	bit BATTLE_SWITCH, [hl]
	jr nz, .SetSet
	bit BATTLE_PREDICT, [hl]
	jr nz, .SetSwitch
	jr .SetPredict

.RightPressed:
	bit BATTLE_SWITCH, [hl]
	jr nz, .SetPredict
	bit BATTLE_PREDICT, [hl]
	jr nz, .SetSet
.SetSwitch:
	set BATTLE_SWITCH, [hl]
	res BATTLE_PREDICT, [hl]
	ld de, .Switch
	jr .Display

.SetPredict:
	res BATTLE_SWITCH, [hl]
	set BATTLE_PREDICT, [hl]
	ld de, .Predict
.Display:
	hlcoord 11, 7
	rst PlaceString
	and a
	ret

.Set:
	db "SET    @"
.Switch:
	db "SWITCH @"
.Predict:
	db "PREDICT@"

Options_Frame:
	ld hl, wTextboxFrame
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr nz, .RightPressed
	and a
	ret

.RightPressed:
	ld a, [hl]
	inc a
	cp NUM_FRAMES
	jr nz, .Save
	xor a
	jr .Save

.LeftPressed:
	ld a, [hl]
	dec a
	cp -1
	jr nz, .Save
	ld a, NUM_FRAMES - 1

.Save:
	ld [hl], a
UpdateFrame:
	ld a, [wTextboxFrame]
	inc a
	ld e, a
	ld d, 0
	hlcoord 17, 9
	ld a, " "
	ld [hld], a
	lb bc, PRINTNUM_LEFTALIGN, 2
	call PrintNumFromReg
	call LoadFrame
	and a
	ret

Options_Sound:
	ld hl, wOptions1
	ldh a, [hJoyPressed]
	and D_LEFT | D_RIGHT
	jr nz, .Toggle
	bit STEREO, [hl]
	jr z, .SetMono
	jr .SetStereo
.Toggle
	bit STEREO, [hl]
	jr z, .SetStereo
.SetMono:
	res STEREO, [hl]
	ld de, .Mono
	jr .Display
.SetStereo:
	set STEREO, [hl]
	ld de, .Stereo
.Display:
	hlcoord 11, 11
	rst PlaceString
	and a
	ret

.Mono:
	db "MONO  @"
.Stereo:
	db "STEREO@"

Options_Done:
	ldh a, [hJoyPressed]
	and A_BUTTON
	jr nz, .Exit
	and a
	ret

.Exit:
	scf
	ret

OptionsControl:
	ld hl, wJumptableIndex
	ldh a, [hJoyLast]
	cp D_DOWN
	jr z, .DownPressed
	cp D_UP
	jr z, .UpPressed
	and a
	ret

.DownPressed:
	ld a, [hl] ; load the cursor position to a
	cp NUM_OPTIONS
	jr nz, .Increase
	ld [hl], -1
.Increase:
	inc [hl]
	scf
	ret

.UpPressed:
	ld a, [hl]
	and a
	jr nz, .Decrease
	ld [hl], NUM_OPTIONS + 1
.Decrease:
	dec [hl]
	scf
	ret

Options_UpdateCursorPosition:
	hlcoord 1, 1
	ld de, SCREEN_WIDTH
	ld c, SCREEN_HEIGHT - 2
.loop
	ld [hl], " "
	add hl, de
	dec c
	jr nz, .loop
	hlcoord 1, 2
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wJumptableIndex]
	rst AddNTimes
	ld [hl], "▶"
	ret
