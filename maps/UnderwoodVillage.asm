UnderwoodVillage_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 21, 21, PLAYERS_HOUSE_2F, 9
;	warp_event  5, 21
;	warp_event 15,  9
;	warp_event 21, 11
;	warp_event 31, 15
;	warp_event  5, 13

    def_coord_events
	coord_event 25, 14, 0, UnderwoodIndigoEventTrigger1
	coord_event 25, 15, 0, UnderwoodIndigoEventTrigger2

    def_bg_events
	bg_event 12, 15, BGEVENT_JUMPTEXT, UnderwoodVillageSignText
	bg_event 32, 16, BGEVENT_JUMPTEXT, UnderwoodVillageEldersHouseSignText

    db 3 ; object events
	person_event SPRITE_MOM,  9, 34, SPRITEMOVEDATA_PLACEHOLDER_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DoNothingScript, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	person_event SPRITE_FARFETCH_D, 16, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_ROCKET, 16, 30, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAVED_UNDERWOOD
;	person_event SPRITE_FARFETCH_D,  3, 10, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, UnderwoodVillageFarfetchd1Script, -1
;	person_event SPRITE_FARFETCH_D, 22, 19, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, UnderwoodVillageFarfetchd2Script, -1
;	person_event SPRITE_FARFETCH_D_G, 17, 14, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, UnderwoodVillageFarfetchdGScript, -1

    object_const_def
    const UNDERWOOD_PLAYER_SUB
    const UNDERWOOD_FARFETCH_D
    const UNDERWOOD_GRUNT

UnderwoodIndigoEventTrigger1:
    checkevent EVENT_SAVED_UNDERWOOD
    iftruefwd .Done
    callasm UnderwoodPreparePlayerSubstitute
    appear UNDERWOOD_PLAYER_SUB
    turnobject UNDERWOOD_PLAYER_SUB, RIGHT
    turnobject UNDERWOOD_FARFETCH_D, LEFT
    applymovement PLAYER, UnderwoodVillageCameraPan1_Movement
    sjumpfwd UnderwoodIndigoEvent
.Done
    end

UnderwoodIndigoEventTrigger2:
    checkevent EVENT_SAVED_UNDERWOOD
    iftruefwd .Done
    callasm UnderwoodPreparePlayerSubstitute
    appear UNDERWOOD_PLAYER_SUB
    turnobject UNDERWOOD_PLAYER_SUB, RIGHT
    turnobject UNDERWOOD_FARFETCH_D, LEFT
    applymovement PLAYER, UnderwoodVillageCameraPan2_Movement
.Done
    end

UnderwoodIndigoEvent:
    opentext
    writetext UnderwoodGrunt1Text
    waitbutton
    closetext
    cry FARFETCH_D
    waitsfx
    pause 5
    turnobject UNDERWOOD_GRUNT, DOWN
    pause 5
    opentext
    writetext UnderwoodGrunt2Text
    waitbutton
    closetext
    pause 10
    turnobject UNDERWOOD_GRUNT, RIGHT
    pause 5
    applyonemovement UNDERWOOD_GRUNT, fix_facing
    applyonemovement UNDERWOOD_GRUNT, slow_step_left
    pause 5
    applyonemovement UNDERWOOD_GRUNT, slow_step_left
    pause 5
    applymovement UNDERWOOD_GRUNT, GruntKicksFarfetchd_Movement
    applyonemovement UNDERWOOD_FARFETCH_D, fix_facing
    applyonemovement UNDERWOOD_FARFETCH_D, jump_step_right
    applyonemovement UNDERWOOD_FARFETCH_D, remove_fixed_facing
    cry FARFETCH_D
    end

UnderwoodGrunt1Text:
    ntag " PUNK "
    
    text "Come on!"

    para "Move out, you"
    line "stupid #MON!"
    done

UnderwoodGrunt2Text:
    ntag " PUNK "
    
    text "Gonna be like"
    line "that, huh?"

    para "You'll regret it!"
    done

UnderwoodVillageSignText:
    text "UNDERWOOD VILLAGE"
    done

UnderwoodVillageEldersHouseSignText:
    text "ELDER's HOUSE"
    done

UnderwoodPreparePlayerSubstitute:
	ld a, [wPlayerGender]
	ld b, SPRITE_CHRIS
	and a ; PLAYER_MALE
	jr z, .got_gender
	ld b, SPRITE_KRIS
	dec a ; PLAYER_FEMALE
	jr z, .got_gender
	; PLAYER_ENBY
	ld b, SPRITE_CRYS
.got_gender
	ld a, [wPlayerState]
	cp PLAYER_BIKE
	jr nz, .got_sprite
	assert SPRITE_CHRIS + 1 == SPRITE_CHRIS_BIKE
	assert SPRITE_KRIS + 1 == SPRITE_KRIS_BIKE
	assert SPRITE_CRYS + 1 == SPRITE_CRYS_BIKE
	inc b
.got_sprite
	ld a, b
	farcall LoadSpriteAsMapObject1
	ld a, [wXCoord]
	ld [wSavedXCoord], a
	add 4
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	ld b, UNDERWOOD_PLAYER_SUB
	farjp CopyDECoordsToMapObject

UnderwoodVillageCameraPan1_Movement:
    hide_object
    step_right
    step_right
    step_down
    step_right
    step_right
    step_end

UnderwoodVillageCameraPan2_Movement:
    hide_object
    step_right
    step_right
    step_right
    step_right
    step_end

GruntKicksFarfetchd_Movement:
    slow_step_right
    step_right
    remove_fixed_facing
    step_end
