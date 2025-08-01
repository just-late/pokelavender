PlayRadioShow:
; If we're already in the radio program proper, we don't need to be here.
	ld a, [wCurRadioLine]
	cp POKE_FLUTE_RADIO
	jr nc, .ok
; If Team Rocket is not occupying the radio tower, we don't need to be here.
	ld a, [wStatusFlags2]
	bit STATUSFLAGS2_ROCKETS_IN_RADIO_TOWER_F, a
	jr z, .ok
; If we're in Kanto, we don't need to be here.
	call GetCurrentLandmark
	cp KANTO_LANDMARK
	jr nc, .ok
; Team Rocket broadcasts on all stations.
	ld a, ROCKET_RADIO
	ld [wCurRadioLine], a
.ok
; Jump to the currently loaded station.  The index to which we need to jump is in wCurRadioLine.
	ld a, [wCurRadioLine]
	call StackJumpTable

RadioJumptable:
; entries correspond to constants/radio_constants.asm
	table_width 2, RadioJumptable
	dw OaksPkmnTalk1  ; $00
	dw PokedexShow1 ; $01
	dw BenMonMusic1  ; $02
	dw LuckyNumberShow1 ; $03
	dw BuenasPassword1 ; $04
	dw PeoplePlaces1 ; $05
	dw FernMonMusic1 ; $06
	dw RocketRadio1 ; $07
	dw PokeFluteRadio ; $08
	dw UnownRadio ; $09
	dw EvolutionRadio ; $0a
	assert_table_length NUM_RADIO_CHANNELS
; OaksPkmnTalk
	dw OaksPkmnTalk2  ; $0b
	dw OaksPkmnTalk3  ; $0c
	dw OaksPkmnTalk4  ; $0d
	dw OaksPkmnTalk5  ; $0e
	dw OaksPkmnTalk6  ; $0f
	dw OaksPkmnTalk7  ; $10
	dw OaksPkmnTalk8  ; $11
	dw OaksPkmnTalk9  ; $12
	dw PokedexShow2 ; $13
	dw PokedexShow3 ; $14
	dw PokedexShow4 ; $15
	dw PokedexShow5 ; $16
; Ben Music
	dw BenMonMusic2  ; $17
	dw BenMonMusic3  ; $18
	dw BenFernMusic4 ; $19
	dw BenFernMusic5 ; $1a
	dw BenFernMusic6 ; $1b
	dw DoNothing     ; $1c
	dw FernMonMusic2 ; $1d
; Lucky Number Show
	dw LuckyNumberShow2 ; $1e
	dw LuckyNumberShow3 ; $1f
	dw LuckyNumberShow4 ; $20
	dw LuckyNumberShow5 ; $21
	dw LuckyNumberShow6 ; $22
	dw LuckyNumberShow7 ; $23
	dw LuckyNumberShow8 ; $24
	dw LuckyNumberShow9 ; $25
	dw LuckyNumberShow10 ; $26
	dw LuckyNumberShow11 ; $27
	dw LuckyNumberShow12 ; $28
	dw LuckyNumberShow13 ; $29
	dw LuckyNumberShow14 ; $2a
	dw LuckyNumberShow15 ; $2b
; People & Places
	dw PeoplePlaces2 ; $2c
	dw PeoplePlaces3 ; $2d
	dw PeoplePlaces4 ; $2e
	dw PeoplePlaces5 ; $2f
	dw PeoplePlaces6 ; $30
	dw PeoplePlaces7 ; $31
; Rocket Radio
	dw RocketRadio2 ; $32
	dw RocketRadio3 ; $33
	dw RocketRadio4 ; $34
	dw RocketRadio5 ; $35
	dw RocketRadio6 ; $36
	dw RocketRadio7 ; $37
	dw RocketRadio8 ; $38
	dw RocketRadio9 ; $39
	dw RocketRadio10 ; $3a
; More Pokemon Channel stuff
	dw OaksPkmnTalk10 ; $3b
	dw OaksPkmnTalk11 ; $3c
	dw OaksPkmnTalk12 ; $3d
	dw OaksPkmnTalk13 ; $3e
	dw OaksPkmnTalk14 ; $3f
; Buenas Password
	dw BuenasPassword2 ; $40
	dw BuenasPassword3 ; $41
	dw BuenasPassword4 ; $42
	dw BuenasPassword5 ; $43
	dw BuenasPassword6 ; $44
	dw BuenasPassword7 ; $45
	dw BuenasPassword8 ; $46
	dw BuenasPassword9 ; $47
	dw BuenasPassword10 ; $48
	dw BuenasPassword11 ; $49
	dw BuenasPassword12 ; $4a
	dw BuenasPassword13 ; $4b
	dw BuenasPassword14 ; $4c
	dw BuenasPassword15 ; $4d
	dw BuenasPassword16 ; $4e
	dw BuenasPassword17 ; $4f
	dw BuenasPassword18 ; $50
	dw BuenasPassword19 ; $51
	dw BuenasPassword20 ; $52
	dw BuenasPassword21 ; $53
	dw RadioScroll ; $54
; More Pokemon Channel stuff
	dw PokedexShow6 ; $55
	dw PokedexShow7 ; $56
	dw PokedexShow8 ; $57
	assert_table_length NUM_RADIO_SEGMENTS

NextRadioLine:
	push af
	call CopyRadioTextToRAM
	pop af
	; fallthrough

PrintRadioLine:
	ld [wNextRadioLine], a
	ld hl, wRadioText
	ld a, [wNumRadioLinesPrinted]
	cp 2
	jr nc, .print
	inc hl
	ld [hl], "<START>"
	inc a
	ld [wNumRadioLinesPrinted], a
	cp 2
	jr nz, .print
	bccoord TEXTBOX_INNERX, TEXTBOX_INNERY + 2
	call PlaceWholeStringInBoxAtOnce
	jr .skip
.print
	call PrintTextboxText
.skip
	ld a, RADIO_SCROLL
	ld [wCurRadioLine], a
	ld a, 100
	ld [wRadioTextDelay], a
	ret

RadioScroll:
	ld hl, wRadioTextDelay
	ld a, [hl]
	and a
	jr z, .proceed
	dec [hl]
	ret
.proceed
	ld a, [wNextRadioLine]
	ld [wCurRadioLine], a
	ld a, [wNumRadioLinesPrinted]
	cp 1
	call nz, CopyBottomLineToTopLine
	jmp ClearBottomLine

OaksPkmnTalk1:
	ld a, 5
	ld [wOaksPkmnTalkSegmentCounter], a
	call StartRadioStation
	ld hl, OPT_IntroText1
	ld a, OAKS_POKEMON_TALK_2
	jr NextRadioLine

OaksPkmnTalk2:
	ld hl, OPT_IntroText2
	ld a, OAKS_POKEMON_TALK_3
	jr NextRadioLine

OaksPkmnTalk3:
	ld hl, OPT_IntroText3
	ld a, OAKS_POKEMON_TALK_4
	jr NextRadioLine

OaksPkmnTalk4:
; Choose a random route, and a random Pokemon from that route.
	call Random
	and $1f
	cp (OaksPkmnTalkRoutes.End - OaksPkmnTalkRoutes) / 2
	jr nc, OaksPkmnTalk4
	; We now have a number between 0 and 14.
	ld hl, OaksPkmnTalkRoutes
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld c, [hl]
	ld b, a
	; bc now contains the chosen map's group and number indices.
	push bc

	; Search the JohtoGrassWildMons array for the chosen map.
	ld hl, JohtoGrassWildMons
.loop
	ld a, BANK(JohtoGrassWildMons)
	call GetFarByte
	cp -1
	jr z, .overflow
	inc hl
	cp b
	jr nz, .next
	ld a, BANK(JohtoGrassWildMons)
	call GetFarByte
	cp c
	jr z, .done
.next
	dec hl
	ld de, GRASS_WILDDATA_LENGTH
	add hl, de
	jr .loop

.done
rept 4
	inc hl
endr
	; Generate a number, either 0, 1, or 2, to choose a time of day.
	; (Disallows EVE.)
.loop2
	call Random
	and 3 ; no-optimize a & X == X
	cp 3
	jr z, .loop2

	ld bc, 3 * NUM_GRASSMON
	rst AddNTimes
.loop3
	; Choose one of the middle three Pokemon.
	call Random
	maskbits NUM_GRASSMON
	cp 2
	jr c, .loop3
	cp 5
	jr nc, .loop3
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	add hl, de
	inc hl ; skip level
	ld a, BANK(JohtoGrassWildMons)
	call GetFarWord
	ld a, l
	ld [wNamedObjectIndex], a
	ld [wCurPartySpecies], a
	ld a, h
	ld [wNamedObjectIndex+1], a
	ld [wCurForm], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	; Now that we've chosen our wild Pokemon,
	; let's recover the map index info and get its name.
	pop bc
	call GetWorldMapLocation
	ld e, a
	farcall GetLandmarkName
	ld hl, OPT_OakText1
	call CopyRadioTextToRAM
	ld a, OAKS_POKEMON_TALK_5
	jmp PrintRadioLine

.overflow
	pop bc
	ld a, OAKS_POKEMON_TALK
	jmp PrintRadioLine

INCLUDE "data/radio/oaks_pkmn_talk_routes.asm"

OaksPkmnTalk5:
	ld hl, OPT_OakText2
	ld a, OAKS_POKEMON_TALK_6
	jmp NextRadioLine

OaksPkmnTalk6:
	ld hl, OPT_OakText3
	ld a, OAKS_POKEMON_TALK_7
	jmp NextRadioLine

OPT_IntroText1:
	; MARY: PROF.OAK'S
	text_far _OPT_IntroText1
	text_end

OPT_IntroText2:
	; #MON TALK!
	text_far _OPT_IntroText2
	text_end

OPT_IntroText3:
	; With me, MARY!
	text_far _OPT_IntroText3
	text_end

OPT_OakText1:
	; OAK: @ @
	text_far _OPT_OakText1
	text_end

OPT_OakText2:
	; may be seen around
	text_far _OPT_OakText2
	text_end

OPT_OakText3:
	; @ .
	text_far _OPT_OakText3
	text_end

OaksPkmnTalk7:
	ld hl, wNamedObjectIndex
	ld a, [wCurPartySpecies]
	ld [hli], a
	ld a, [wCurForm]
	ld [hl], a
	call GetPokemonName
	ld hl, OPT_MaryText1
	ld a, OAKS_POKEMON_TALK_8
	jmp NextRadioLine

OPT_MaryText1:
	; MARY: @ 's
	text_far _OPT_MaryText1
	text_end

OaksPkmnTalk8:
	call Random
	and $f
	ld e, a
	ld d, 0
	ld hl, .Adverbs
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, OAKS_POKEMON_TALK_9
	jmp NextRadioLine

.Adverbs:
	dw .sweetadorably
	dw .wigglyslickly
	dw .aptlynamed
	dw .undeniablykindof
	dw .unbearably
	dw .wowimpressively
	dw .almostpoisonously
	dw .sensually
	dw .mischievously
	dw .topically
	dw .addictively
	dw .looksinwater
	dw .evolutionmustbe
	dw .provocatively
	dw .flippedout
	dw .heartmeltingly

.sweetadorably
	; sweet and adorably
	text_far OPT_SweetAdorably
	text_end

.wigglyslickly
	; wiggly and slickly
	text_far OPT_WigglySlickly
	text_end

.aptlynamed
	; aptly named and
	text_far OPT_AptlyNamed
	text_end

.undeniablykindof
	; undeniably kind of
	text_far OPT_UndeniablyKindOf
	text_end

.unbearably
	; so, so unbearably
	text_far OPT_Unbearably
	text_end

.wowimpressively
	; wow, impressively
	text_far OPT_WowImpressively
	text_end

.almostpoisonously
	; almost poisonously
	text_far OPT_AlmostPoisonously
	text_end

.sensually
	; ooh, so sensually
	text_far OPT_Sensually
	text_end

.mischievously
	; so mischievously
	text_far OPT_Mischievously
	text_end

.topically
	; so very topically
	text_far OPT_Topically
	text_end

.addictively
	; sure addictively
	text_far OPT_Addictively
	text_end

.looksinwater
	; looks in water is
	text_far OPT_LooksInWater
	text_end

.evolutionmustbe
	; evolution must be
	text_far OPT_EvolutionMustBe
	text_end

.provocatively
	; provocatively
	text_far OPT_Provocatively
	text_end

.flippedout
	; so flipped out and
	text_far OPT_FlippedOut
	text_end

.heartmeltingly
	; heart-meltingly
	text_far OPT_HeartMeltingly
	text_end

OaksPkmnTalk9:
	call Random
	and $f
	ld e, a
	ld d, 0
	ld hl, .Descriptors
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld hl, wOaksPkmnTalkSegmentCounter
	dec [hl]
	ld a, OAKS_POKEMON_TALK_4
	jr nz, .ok
	ld [hl], 5
	ld a, OAKS_POKEMON_TALK_10
.ok
	pop hl
	jmp NextRadioLine

.Descriptors:
	dw .cute
	dw .weird
	dw .pleasant
	dw .boldsortof
	dw .frightening
	dw .suavedebonair
	dw .powerful
	dw .exciting
	dw .groovy
	dw .inspiring
	dw .friendly
	dw .hothothot
	dw .stimulating
	dw .guarded
	dw .lovely
	dw .speedy

.cute
	; cute.
	text_far OPT_Cute
	text_end

.weird
	; weird.
	text_far OPT_Weird
	text_end

.pleasant
	; pleasant.
	text_far OPT_Pleasant
	text_end

.boldsortof
	; bold, sort of.
	text_far OPT_BoldSortOf
	text_end

.frightening
	; frightening.
	text_far OPT_Frightening
	text_end

.suavedebonair
	; suave & debonair!
	text_far OPT_SuaveDebonair
	text_end

.powerful
	; powerful.
	text_far OPT_Powerful
	text_end

.exciting
	; exciting.
	text_far OPT_Exciting
	text_end

.groovy
	; groovy!
	text_far OPT_Groovy
	text_end

.inspiring
	; inspiring.
	text_far OPT_Inspiring
	text_end

.friendly
	; friendly.
	text_far OPT_Friendly
	text_end

.hothothot
	; hot, hot, hot!
	text_far OPT_HotHotHot
	text_end

.stimulating
	; stimulating.
	text_far OPT_Stimulating
	text_end

.guarded
	; guarded.
	text_far OPT_Guarded
	text_end

.lovely
	; lovely.
	text_far OPT_Lovely
	text_end

.speedy
	; speedy.
	text_far OPT_Speedy
	text_end

OaksPkmnTalk10:
	farcall RadioMusicRestartPokemonChannel
	ld hl, EmptyString
	call PrintText
	call ApplyTilemapInVBlank
	ld hl, OPT_PokemonChannelText
	call PrintText
	ld a, OAKS_POKEMON_TALK_11
	ld [wCurRadioLine], a
	ld a, 100
	ld [wRadioTextDelay], a
	ret

OPT_PokemonChannelText:
	; #MON
	text_far _OPT_PokemonChannelText
	text_end

OaksPkmnTalk11:
	ld hl, wRadioTextDelay
	dec [hl]
	ret nz
	hlcoord 9, 14
	ld de, .pokemon_string
	ld a, OAKS_POKEMON_TALK_12
	jr PlaceRadioString

.pokemon_string
	db "#MON@"

OaksPkmnTalk12:
	ld hl, wRadioTextDelay
	dec [hl]
	ret nz
	hlcoord 1, 16
	ld de, .pokemon_channel_string
	ld a, OAKS_POKEMON_TALK_13
	jr PlaceRadioString

.pokemon_channel_string
	db "#MON Channel@"

OaksPkmnTalk13:
	ld hl, wRadioTextDelay
	dec [hl]
	ret nz
	hlcoord 12, 16
	ld de, EmptyString
	ld a, OAKS_POKEMON_TALK_14
	; fallthrough

PlaceRadioString:
	ld [wCurRadioLine], a
	ld a, 100
	ld [wRadioTextDelay], a
	rst PlaceString
	ret

OaksPkmnTalk14:
	ld hl, wRadioTextDelay
	dec [hl]
	ret nz
	ld e, MUSIC_POKEMON_TALK
	farcall RadioMusicRestart
	ld hl, EmptyString
	call PrintText
	ld a, OAKS_POKEMON_TALK_4
	ld [wNextRadioLine], a
	xor a
	ld [wNumRadioLinesPrinted], a
	ld a, RADIO_SCROLL
	ld [wCurRadioLine], a
	ld a, 10
	ld [wRadioTextDelay], a
	ret

CopyBottomLineToTopLine:
	hlcoord 0, 15
	decoord 0, 13
	ld bc, SCREEN_WIDTH * 2
	rst CopyBytes
	ret

ClearBottomLine:
	hlcoord 1, 15
	ld bc, SCREEN_WIDTH - 2
	ld a, " "
	rst ByteFill
	hlcoord 1, 16
	ld bc, SCREEN_WIDTH - 2
	ld a, " "
	rst ByteFill
	ret

PokedexShow1:
	call StartRadioStation
.loop
	ld bc, NUM_SPECIES
	call RandomRange16
	ld a, c
	and a
	jr z, .loop
	inc a
	jr z, .loop
	ld a, b
	assert (EXTSPECIES_MASK > %00011111) && (EXTSPECIES_MASK & %00100000)
	swap a
	rla
	ld b, a
	push bc
	call CheckCosmeticCaughtMon
	pop bc
	jr z, .loop
	ld hl, wNamedObjectIndex
	ld a, c
	ld [wCurPartySpecies], a
	ld [hli], a
	ld a, b
	ld [wCurForm], a
	ld [hl], a
	call GetPokemonName
	ld hl, PokedexShowText
	ld a, POKEDEX_SHOW_2
	jmp NextRadioLine

PokedexShow2:
	ld a, [wCurPartySpecies]
	ld c, a
	ld a, [wCurForm]
	ld b, a
	call GetSpeciesAndFormIndex
	call GetDexEntryPointer
	call CopyDexEntryParts
	ld a, POKEDEX_SHOW_3
	jmp PrintRadioLine

PokedexShow3:
	call CopyDexEntry
	ld a, POKEDEX_SHOW_4
	jmp PrintRadioLine

PokedexShow4:
	call CopyDexEntry
	ld a, POKEDEX_SHOW_5
	jmp PrintRadioLine

PokedexShow5:
	call CopyDexEntry
	ld a, POKEDEX_SHOW_6
	jmp PrintRadioLine

PokedexShow6:
	call CopyDexEntry
	ld a, POKEDEX_SHOW_7
	jmp PrintRadioLine

PokedexShow7:
	call CopyDexEntry
	ld a, POKEDEX_SHOW_8
	jmp PrintRadioLine

PokedexShow8:
	call CopyDexEntry
	ld a, POKEDEX_SHOW
	jmp PrintRadioLine

CopyDexEntry:
	ld hl, wPokedexShowPointerAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wPokedexShowPointerBank]
CopyDexEntryParts:
	push af
	push hl
	ld de, wPokedexShowPointerBank
	ld bc, SCREEN_WIDTH - 1
	call FarCopyBytes
	ld hl, wPokedexShowPointerAddr
	ld a, "<START>"
	ld [hli], a
	ld a, "<LINE>"
	ld [hli], a
	ld d, BANK(@)
	call .CopyLine
	dec hl
	ld [hl], "<DONE>"
	ld hl, wPokedexShowPointerAddr
	call CopyRadioTextToRAM
	pop hl
	pop af
	ld d, a
	call .CopyLine
	ld a, l
	ld [wPokedexShowPointerAddr], a
	ld a, h
	ld [wPokedexShowPointerAddr + 1], a
	ld a, d
	ld [wPokedexShowPointerBank], a
	ret

.CopyLine:
	ld a, d
	call GetFarByte
	inc hl
	cp "@"
	ret z
	cp "<NEXT>"
	ret z
	jr .CopyLine

PokedexShowText:
	; @ @
	text_far _PokedexShowText
	text_end

BenMonMusic1:
	call StartPokemonMusicChannel
	ld hl, BenIntroText1
	ld a, POKEMON_MUSIC_2
	jmp NextRadioLine

BenMonMusic2:
	ld hl, BenIntroText2
	ld a, POKEMON_MUSIC_3
	jmp NextRadioLine

BenMonMusic3:
	ld hl, BenIntroText3
	ld a, POKEMON_MUSIC_4
	jmp NextRadioLine

FernMonMusic1:
	call StartPokemonMusicChannel
	ld hl, FernIntroText1
	ld a, LETS_ALL_SING_2
	jmp NextRadioLine

FernMonMusic2:
	ld hl, FernIntroMusic2
	ld a, POKEMON_MUSIC_4
	jmp NextRadioLine

BenFernMusic4:
	ld hl, BenFernText1
	ld a, POKEMON_MUSIC_5
	jmp NextRadioLine

BenFernMusic5:
	call GetWeekday
	and 1
	ld hl, BenFernText2A
	jr z, .SunTueThurSun
	ld hl, BenFernText2B
.SunTueThurSun:
	ld a, POKEMON_MUSIC_6
	jmp NextRadioLine

BenFernMusic6:
	call GetWeekday
	and 1
	ld hl, BenFernText3A
	jr z, .SunTueThurSun
	ld hl, BenFernText3B
.SunTueThurSun:
	ld a, POKEMON_MUSIC_7
	jmp NextRadioLine

StartPokemonMusicChannel:
	ld hl, EmptyString
	call PrintText
	call GetWeekday
	and 1
	ld e, MUSIC_POKEMON_MARCH
	jr z, .SunTueThurSun
	ld e, MUSIC_POKEMON_LULLABY
.SunTueThurSun:
	farjp RadioMusicRestart

BenIntroText1:
	; BEN: #MON MUSIC
	text_far _BenIntroText1
	text_end

BenIntroText2:
	; CHANNEL!
	text_far _BenIntroText2
	text_end

BenIntroText3:
	; It's me, DJ BEN!
	text_far _BenIntroText3
	text_end

FernIntroText1:
	; FERN: #MUSIC!
	text_far _FernIntroText1
	text_end

FernIntroMusic2:
	; With DJ FERN!
	text_far _FernIntroText2
	text_end

BenFernText1:
	; Today's @ ,
	text_far _BenFernText1
	text_end

BenFernText2A:
	; so let us jam to
	text_far _BenFernText2A
	text_end

BenFernText2B:
	; so chill out to
	text_far _BenFernText2B
	text_end

BenFernText3A:
	; #MON March!
	text_far _BenFernText3A
	text_end

BenFernText3B:
	; #MON Lullaby!
	text_far _BenFernText3B
	text_end

LuckyNumberShow1:
	call StartRadioStation
	farcall Special_CheckLuckyNumberShowFlag
	jr nz, .dontreset
	farcall Special_ResetLuckyNumberShowFlag
.dontreset
	ld hl, LC_Text1
	ld a, LUCKY_NUMBER_SHOW_2
	jmp NextRadioLine

LuckyNumberShow2:
	ld hl, LC_Text2
	ld a, LUCKY_NUMBER_SHOW_3
	jmp NextRadioLine

LuckyNumberShow3:
	ld hl, LC_Text3
	ld a, LUCKY_NUMBER_SHOW_4
	jmp NextRadioLine

LuckyNumberShow4:
	ld hl, LC_Text4
	ld a, LUCKY_NUMBER_SHOW_5
	jmp NextRadioLine

LuckyNumberShow5:
	ld hl, LC_Text5
	ld a, LUCKY_NUMBER_SHOW_6
	jmp NextRadioLine

LuckyNumberShow6:
	ld hl, LC_Text6
	ld a, LUCKY_NUMBER_SHOW_7
	jmp NextRadioLine

LuckyNumberShow7:
	ld hl, LC_Text7
	ld a, LUCKY_NUMBER_SHOW_8
	jmp NextRadioLine

LuckyNumberShow8:
	ld hl, wStringBuffer1
	ld de, wLuckyIDNumber
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	ld a, "@"
	ld [wStringBuffer1 + 5], a
	ld hl, LC_Text8
	ld a, LUCKY_NUMBER_SHOW_9
	jmp NextRadioLine

LuckyNumberShow9:
	ld hl, LC_Text9
	ld a, LUCKY_NUMBER_SHOW_10
	jmp NextRadioLine

LuckyNumberShow10:
	ld hl, LC_Text7
	ld a, LUCKY_NUMBER_SHOW_11
	jmp NextRadioLine

LuckyNumberShow11:
	ld hl, LC_Text8
	ld a, LUCKY_NUMBER_SHOW_12
	jmp NextRadioLine

LuckyNumberShow12:
	ld hl, LC_Text10
	ld a, LUCKY_NUMBER_SHOW_13
	jmp NextRadioLine

LuckyNumberShow13:
	ld hl, LC_Text11
	call Random
	and a
	ld a, LUCKY_CHANNEL
	jr nz, .okay
	ld a, LUCKY_NUMBER_SHOW_14
.okay
	jmp NextRadioLine

LuckyNumberShow14:
	ld hl, LC_DragText1
	ld a, LUCKY_NUMBER_SHOW_15
	jmp NextRadioLine

LuckyNumberShow15:
	ld hl, LC_DragText2
	ld a, LUCKY_CHANNEL
	jmp NextRadioLine

LC_Text1:
	; REED: Yeehaw! How
	text_far _LC_Text1
	text_end

LC_Text2:
	; y'all doin' now?
	text_far _LC_Text2
	text_end

LC_Text3:
	; Whether you're up
	text_far _LC_Text3
	text_end

LC_Text4:
	; or way down low,
	text_far _LC_Text4
	text_end

LC_Text5:
	; don't you miss the
	text_far _LC_Text5
	text_end

LC_Text6:
	; LUCKY NUMBER SHOW!
	text_far _LC_Text6
	text_end

LC_Text7:
	; This week's Lucky
	text_far _LC_Text7
	text_end

LC_Text8:
	; Number is @ !
	text_far _LC_Text8
	text_end

LC_Text9:
	; I'll repeat that!
	text_far _LC_Text9
	text_end

LC_Text10:
	; Match it and go to
	text_far _LC_Text10
	text_end

LC_Text11:
	; the RADIO TOWER!
	text_far _LC_Text11
	text_end

LC_DragText1:
	; …Repeating myself
	text_far _LC_DragText1
	text_end

LC_DragText2:
	; gets to be a drag…
	text_far _LC_DragText2
	text_end

PeoplePlaces1:
	call StartRadioStation
	ld hl, PnP_Text1
	ld a, PLACES_AND_PEOPLE_2
	jmp NextRadioLine

PeoplePlaces2:
	ld hl, PnP_Text2
	ld a, PLACES_AND_PEOPLE_3
	jmp NextRadioLine

PeoplePlaces3:
	ld hl, PnP_Text3
	call PickPeopleOrPlaces
	jmp NextRadioLine

PnP_Text1:
	; PLACES AND PEOPLE!
	text_far _PnP_Text1
	text_end

PnP_Text2:
	; Brought to you by
	text_far _PnP_Text2
	text_end

PnP_Text3:
	; me, DJ LILY!
	text_far _PnP_Text3
	text_end

PeoplePlaces4: ; People
	call Random
	cp NUM_TRAINER_CLASSES
	jr nc, PeoplePlaces4
	inc a
	push af
	ld hl, PnP_HiddenPeople
	ld a, [wStatusFlags]
	bit STATUSFLAGS_HALL_OF_FAME_F, a
	jr z, .ok
	ld hl, PnP_HiddenPeople_BeatE4
	ld a, [wKantoBadges]
	cp %11111111
	jr nz, .ok
	ld hl, PnP_HiddenPeople_BeatKanto
.ok
	pop af
	ld c, a
	push bc
	call IsInByteArray
	pop bc
	jr c, PeoplePlaces4
	push bc
	farcall GetTrainerClassName
	ld de, wStringBuffer1
	call CopyName1
	pop bc
	ld b, 1
	farcall GetTrainerName
	ld hl, PnP_Text4
	ld a, PLACES_AND_PEOPLE_5
	jmp NextRadioLine

INCLUDE "data/radio/pnp_hidden_people.asm"

PnP_Text4:
	; @  @ @
	text_far _PnP_Text4
	text_end

PeoplePlaces5:
	call Random
	and $f
	ld e, a
	ld d, 0
	ld hl, .Descriptors
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PickPeopleOrPlacesBiased
	jmp NextRadioLine

.Descriptors:
	dw PnP_cute
	dw PnP_lazy
	dw PnP_happy
	dw PnP_noisy
	dw PnP_precocious
	dw PnP_bold
	dw PnP_picky
	dw PnP_sortofok
	dw PnP_soso
	dw PnP_great
	dw PnP_mytype
	dw PnP_cool
	dw PnP_inspiring
	dw PnP_weird
	dw PnP_rightforme
	dw PnP_odd

PnP_cute:
	; is cute.
	text_far _PnP_cute
	text_end

PnP_lazy:
	; is sort of lazy.
	text_far _PnP_lazy
	text_end

PnP_happy:
	; is always happy.
	text_far _PnP_happy
	text_end

PnP_noisy:
	; is quite noisy.
	text_far _PnP_noisy
	text_end

PnP_precocious:
	; is precocious.
	text_far _PnP_precocious
	text_end

PnP_bold:
	; is somewhat bold.
	text_far _PnP_bold
	text_end

PnP_picky:
	; is too picky!
	text_far _PnP_picky
	text_end

PnP_sortofok:
	; is sort of OK.
	text_far _PnP_sortofok
	text_end

PnP_soso:
	; is just so-so.
	text_far _PnP_soso
	text_end

PnP_great:
	; is actually great.
	text_far _PnP_great
	text_end

PnP_mytype:
	; is just my type.
	text_far _PnP_mytype
	text_end

PnP_cool:
	; is so cool, no?
	text_far _PnP_cool
	text_end

PnP_inspiring:
	; is inspiring!
	text_far _PnP_inspiring
	text_end

PnP_weird:
	; is kind of weird.
	text_far _PnP_weird
	text_end

PnP_rightforme:
	; is right for me?
	text_far _PnP_rightforme
	text_end

PnP_odd:
	; is definitely odd!
	text_far _PnP_odd
	text_end

PeoplePlaces6: ; Places
	call Random
	cp PnP_Places.End - PnP_Places
	jr nc, PeoplePlaces6
	ld hl, PnP_Places
	ld c, a
	ld b, 0
	add hl, bc
	ld e, [hl]
	farcall GetLandmarkName
	ld hl, PnP_Text5
	ld a, PLACES_AND_PEOPLE_7
	jmp NextRadioLine

INCLUDE "data/radio/pnp_places.asm"

PnP_Text5:
	; @ @
	text_far _PnP_Text5
	text_end

PeoplePlaces7:
	call Random
	and $f
	ld e, a
	ld d, 0
	ld hl, .Descriptors
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call CopyRadioTextToRAM
	call PickPeopleOrPlacesBiased
	jmp PrintRadioLine

.Descriptors:
	dw PnP_cute
	dw PnP_lazy
	dw PnP_happy
	dw PnP_noisy
	dw PnP_precocious
	dw PnP_bold
	dw PnP_picky
	dw PnP_sortofok
	dw PnP_soso
	dw PnP_great
	dw PnP_mytype
	dw PnP_cool
	dw PnP_inspiring
	dw PnP_weird
	dw PnP_rightforme
	dw PnP_odd

PickPeopleOrPlacesBiased:
	call Random
	cp 4 percent
	ld a, PLACES_AND_PEOPLE
	ret c
PickPeopleOrPlaces:
	call Random
	cp 1 + 48 percent
	; a = carry ? PLACES_AND_PEOPLE_4 (People) : PLACES_AND_PEOPLE_6 (Places)
	assert PLACES_AND_PEOPLE_4 + 2 == PLACES_AND_PEOPLE_6
	sbc a
	sbc -PLACES_AND_PEOPLE_6
	ret

RocketRadio1:
	call StartRadioStation
	ld hl, RocketRadioText1
	ld a, ROCKET_RADIO_2
	jmp NextRadioLine

RocketRadio2:
	ld hl, RocketRadioText2
	ld a, ROCKET_RADIO_3
	jmp NextRadioLine

RocketRadio3:
	ld hl, RocketRadioText3
	ld a, ROCKET_RADIO_4
	jmp NextRadioLine

RocketRadio4:
	ld hl, RocketRadioText4
	ld a, ROCKET_RADIO_5
	jmp NextRadioLine

RocketRadio5:
	ld hl, RocketRadioText5
	ld a, ROCKET_RADIO_6
	jmp NextRadioLine

RocketRadio6:
	ld hl, RocketRadioText6
	ld a, ROCKET_RADIO_7
	jmp NextRadioLine

RocketRadio7:
	ld hl, RocketRadioText7
	ld a, ROCKET_RADIO_8
	jmp NextRadioLine

RocketRadio8:
	ld hl, RocketRadioText8
	ld a, ROCKET_RADIO_9
	jmp NextRadioLine

RocketRadio9:
	ld hl, RocketRadioText9
	ld a, ROCKET_RADIO_10
	jmp NextRadioLine

RocketRadio10:
	ld hl, RocketRadioText10
	ld a, ROCKET_RADIO
	jmp NextRadioLine

RocketRadioText1:
	; … …Ahem, we are
	text_far _RocketRadioText1
	text_end

RocketRadioText2:
	; TEAM ROCKET!
	text_far _RocketRadioText2
	text_end

RocketRadioText3:
	; After three years
	text_far _RocketRadioText3
	text_end

RocketRadioText4:
	; of preparation, we
	text_far _RocketRadioText4
	text_end

RocketRadioText5:
	; have risen again
	text_far _RocketRadioText5
	text_end

RocketRadioText6:
	; from the ashes!
	text_far _RocketRadioText6
	text_end

RocketRadioText7:
	; GIOVANNI! @ Can you
	text_far _RocketRadioText7
	text_end

RocketRadioText8:
	; hear?@  We did it!
	text_far _RocketRadioText8
	text_end

RocketRadioText9:
	; @ Where is our boss?
	text_far _RocketRadioText9
	text_end

RocketRadioText10:
	; @ Is he listening?
	text_far _RocketRadioText10
	text_end

PokeFluteRadio:
	call StartRadioStation
	ld a, 1
	ld [wNumRadioLinesPrinted], a
	ret

UnownRadio:
	call StartRadioStation
	ld a, 1
	ld [wNumRadioLinesPrinted], a
	ret

EvolutionRadio:
	call StartRadioStation
	ld a, 1
	ld [wNumRadioLinesPrinted], a
	ret

BuenasPassword1:
; Determine if we need to be here
	call BuenasPasswordCheckTime
	jr nc, .PlayPassword
	ld a, [wNumRadioLinesPrinted]
	and a
	jmp z, BuenasPassword20
	jmp BuenasPassword8

.PlayPassword:
	call StartRadioStation
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a
	ld de, BuenasPasswordChannelName
	hlcoord 2, 9
	rst PlaceString
	pop af
	ldh [hBGMapMode], a
	ld hl, BuenaRadioText1
	ld a, BUENAS_PASSWORD_2
	jmp NextRadioLine

BuenasPassword2:
	ld hl, BuenaRadioText2
	ld a, BUENAS_PASSWORD_3
	jmp NextRadioLine

BuenasPassword3:
	call BuenasPasswordCheckTime
	ld hl, BuenaRadioText3
	jmp c, BuenasPasswordAfterMidnight
	ld a, BUENAS_PASSWORD_4
	jmp NextRadioLine

BuenasPassword4:
	call BuenasPasswordCheckTime
	jmp c, BuenasPassword8
	ld a, [wBuenasPassword]
; If we already generated the password today, we don't need to generate a new one.
	ld hl, wWeeklyFlags
	bit 7, [hl]
	jr nz, .AlreadyGotIt
; There are only 11 groups to choose from.
.greater_than_11
	call Random
	and $f
	cp NUM_PASSWORD_CATEGORIES
	jr nc, .greater_than_11
; Store it in the high nybble of e.
	swap a
	ld e, a
; For each group, choose one of the three passwords.
.greater_than_three
	ld a, NUM_PASSWORDS_PER_CATEGORY
	call RandomRange
	jr nc, .greater_than_three
; The high nybble of wBuenasPassword will now contain the password group index, and the low nybble contains the actual password.
	add e
	ld [wBuenasPassword], a
; Set the flag so that we don't generate a new password this week.
	ld hl, wWeeklyFlags
	set 7, [hl]
.AlreadyGotIt:
	ld c, a
	call GetBuenasPassword
	ld hl, BuenaRadioText4
	ld a, BUENAS_PASSWORD_5
	jmp NextRadioLine

GetBuenasPassword:
; The password indices are held in c.  High nybble contains the group index, low nybble contains the word index.
; Load the password group pointer in hl.
	ld a, c
	swap a
	and $f
	ld hl, BuenasPasswordTable
	ld d, 0
	ld e, a
	add hl, de
	ld e, [hl]
	add hl, de
; Get the password type and store it in b.
	ld a, [hli]
	ld b, a
	push hl
	inc hl
; Get the password index.
	ld a, c
	and $f
	ld c, a
	push hl
	ld hl, .StringFunctionJumpTable
	ld e, b
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de ; de now contains the pointer to the value of this week's password, in Blue Card Points.
	call _hl_
	pop hl
	ld c, [hl]
	ret

.StringFunctionJumpTable:
	dw .Mon
	dw .Item
	dw .Move
	dw .RawString

.Mon:
	sla c
	call .GetTheIndex
	jmp GetPokemonName

.Item:
	call .GetTheIndex
	jmp GetItemName

.Move:
	call .GetTheIndex
	jmp GetMoveName

.GetTheIndex:
	ld h, 0
	ld l, c
	add hl, de
	ld a, [hli]
	ld [wNamedObjectIndex], a
	ld a, [hl] ; items and moves just ignore this anyway
	ld [wNamedObjectIndex+1], a
	ret

.RawString:
; Get the string from the table...
	ld a, c
	and a
	jr z, .skip
.read_loop
	ld a, [de]
	inc de
	cp "@"
	jr nz, .read_loop
	dec c
	jr nz, .read_loop
; ... and copy it into wStringBuffer1.
.skip
	ld hl, wStringBuffer1
.copy_loop
	ld a, [de]
	inc de
	ld [hli], a
	cp "@"
	jr nz, .copy_loop
	ld de, wStringBuffer1
	ret

INCLUDE "data/radio/buenas_passwords.asm"

BuenasPassword5:
	ld hl, BuenaRadioText5
	ld a, BUENAS_PASSWORD_6
	jmp NextRadioLine

BuenasPassword6:
	ld hl, BuenaRadioText6
	ld a, BUENAS_PASSWORD_7
	jmp NextRadioLine

BuenasPassword7:
	call BuenasPasswordCheckTime
	ld hl, BuenaRadioText7
	jr c, BuenasPasswordAfterMidnight
	ld a, BUENAS_PASSWORD
	jmp NextRadioLine

BuenasPasswordAfterMidnight:
	push hl
	ld hl, wWeeklyFlags
	res 7, [hl]
	pop hl
	ld a, BUENAS_PASSWORD_8
	jmp NextRadioLine

BuenasPassword8:
	ld hl, wWeeklyFlags
	res 7, [hl]
	ld hl, BuenaRadioMidnightText10
	ld a, BUENAS_PASSWORD_9
	jmp NextRadioLine

BuenasPassword9:
	ld hl, BuenaRadioMidnightText1
	ld a, BUENAS_PASSWORD_10
	jmp NextRadioLine

BuenasPassword10:
	ld hl, BuenaRadioMidnightText2
	ld a, BUENAS_PASSWORD_11
	jmp NextRadioLine

BuenasPassword11:
	ld hl, BuenaRadioMidnightText3
	ld a, BUENAS_PASSWORD_12
	jmp NextRadioLine

BuenasPassword12:
	ld hl, BuenaRadioMidnightText4
	ld a, BUENAS_PASSWORD_13
	jmp NextRadioLine

BuenasPassword13:
	ld hl, BuenaRadioMidnightText5
	ld a, BUENAS_PASSWORD_14
	jmp NextRadioLine

BuenasPassword14:
	ld hl, BuenaRadioMidnightText6
	ld a, BUENAS_PASSWORD_15
	jmp NextRadioLine

BuenasPassword15:
	ld hl, BuenaRadioMidnightText7
	ld a, BUENAS_PASSWORD_16
	jmp NextRadioLine

BuenasPassword16:
	ld hl, BuenaRadioMidnightText8
	ld a, BUENAS_PASSWORD_17
	jmp NextRadioLine

BuenasPassword17:
	ld hl, BuenaRadioMidnightText9
	ld a, BUENAS_PASSWORD_18
	jmp NextRadioLine

BuenasPassword18:
	ld hl, BuenaRadioMidnightText10
	ld a, BUENAS_PASSWORD_19
	jmp NextRadioLine

BuenasPassword19:
	ld hl, BuenaRadioMidnightText10
	ld a, BUENAS_PASSWORD_20
	jmp NextRadioLine

BuenasPassword20:
	ldh a, [hBGMapMode]
	push af
	farcall NoRadioMusic
	farcall NoRadioName
	pop af
	ldh [hBGMapMode], a
	ld hl, wWeeklyFlags
	res 7, [hl]
	ld a, BUENAS_PASSWORD
	ld [wCurRadioLine], a
	xor a
	ld [wNumRadioLinesPrinted], a
	ld hl, BuenaOffTheAirText
	ld a, BUENAS_PASSWORD_21
	jmp NextRadioLine

BuenasPassword21:
	ld a, BUENAS_PASSWORD
	ld [wCurRadioLine], a
	xor a
	ld [wNumRadioLinesPrinted], a
	call BuenasPasswordCheckTime
	jmp nc, BuenasPassword1
	ld hl, BuenaOffTheAirText
	ld a, BUENAS_PASSWORD_21
	jmp NextRadioLine

BuenasPasswordCheckTime:
	call UpdateTime
	ldh a, [hHours]
	cp EVE_HOUR
	ret

BuenasPasswordChannelName:
	db "Buena's Password@"

BuenaRadioText1:
	; BUENA: BUENA here!
	text_far _BuenaRadioText1
	text_end

BuenaRadioText2:
	; Today's password!
	text_far _BuenaRadioText2
	text_end

BuenaRadioText3:
	; Let me think… It's
	text_far _BuenaRadioText3
	text_end

BuenaRadioText4:
	; @ !
	text_far _BuenaRadioText4
	text_end

BuenaRadioText5:
	; Don't forget it!
	text_far _BuenaRadioText5
	text_end

BuenaRadioText6:
	; I'm in GOLDENROD's
	text_far _BuenaRadioText6
	text_end

BuenaRadioText7:
	; RADIO TOWER!
	text_far _BuenaRadioText7
	text_end

BuenaRadioMidnightText1:
	; BUENA: Oh my…
	text_far _BuenaRadioMidnightText1
	text_end

BuenaRadioMidnightText2:
	; It's midnight! I
	text_far _BuenaRadioMidnightText2
	text_end

BuenaRadioMidnightText3:
	; have to shut down!
	text_far _BuenaRadioMidnightText3
	text_end

BuenaRadioMidnightText4:
	; Thanks for tuning
	text_far _BuenaRadioMidnightText4
	text_end

BuenaRadioMidnightText5:
	; in to the end! But
	text_far _BuenaRadioMidnightText5
	text_end

BuenaRadioMidnightText6:
	; don't stay up too
	text_far _BuenaRadioMidnightText6
	text_end

BuenaRadioMidnightText7:
	; late! Presented to
	text_far _BuenaRadioMidnightText7
	text_end

BuenaRadioMidnightText8:
	; you by DJ BUENA!
	text_far _BuenaRadioMidnightText8
	text_end

BuenaRadioMidnightText9:
	; I'm outta here!
	text_far _BuenaRadioMidnightText9
	text_end

BuenaRadioMidnightText10:
	; …
	text_far _BuenaRadioMidnightText10
	text_end

BuenaOffTheAirText:
	;
	text_far _BuenaOffTheAirText
	text_end

CopyRadioTextToRAM:
	ld a, [hl]
	cp "<FAR>"
	jmp z, FarCopyRadioText
	ld de, wRadioText
	ld bc, SCREEN_WIDTH * 2
	rst CopyBytes
	ret

StartRadioStation:
	ld a, [wNumRadioLinesPrinted]
	and a
	ret nz
	ld hl, EmptyString
	call PrintText
	ld a, [wCurRadioLine]
	add LOW(RadioChannelSongs)
	ld l, a
	adc HIGH(RadioChannelSongs)
	sub l
	ld h, a
	ld e, [hl]
	farjp RadioMusicRestart

INCLUDE "data/radio/channel_music.asm"
