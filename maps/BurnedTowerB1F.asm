BurnedTowerB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BurnedTowerB1FLadderCallback

	def_warp_events
	warp_event 10,  9, BURNED_TOWER_1F, 3 ; hole
	warp_event  7, 15, BURNED_TOWER_1F, 4

	def_coord_events
	coord_event 10,  6, 0, ReleaseTheBeasts

	def_bg_events

	def_object_events
	pokemon_event  7,  3, RAIKOU, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, ClearText, EVENT_BURNED_TOWER_B1F_BEASTS_1
	pokemon_event 12,  3, ENTEI, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_RED, ClearText, EVENT_BURNED_TOWER_B1F_BEASTS_1
	pokemon_event 10,  4, SUICUNE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BLUE, ClearText, EVENT_BURNED_TOWER_B1F_BEASTS_1
	pokemon_event  7,  3, RAIKOU, SPRITEMOVEDATA_STILL, -1, -1, PAL_NPC_WHITE, ClearText, EVENT_BURNED_TOWER_B1F_BEASTS_2
	pokemon_event 12,  3, ENTEI, SPRITEMOVEDATA_STILL, -1, -1, PAL_NPC_WHITE, ClearText, EVENT_BURNED_TOWER_B1F_BEASTS_2
	pokemon_event 10,  4, SUICUNE, SPRITEMOVEDATA_STILL, -1, -1, PAL_NPC_WHITE, ClearText, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 10, 12, SPRITE_EUSINE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BurnedTowerB1FEusine, EVENT_EUSINE_IN_BURNED_TOWER
	strengthboulder_event 17, 8
	tmhmball_event 16,  4, TM_FLAME_CHARGE, EVENT_BURNED_TOWER_B1F_TM_FLAME_CHARGE

	object_const_def
	const BURNEDTOWERB1F_RAIKOU1
	const BURNEDTOWERB1F_ENTEI1
	const BURNEDTOWERB1F_SUICUNE1
	const BURNEDTOWERB1F_RAIKOU2
	const BURNEDTOWERB1F_ENTEI2
	const BURNEDTOWERB1F_SUICUNE2
	const BURNEDTOWERB1F_EUSINE

BurnedTowerB1FLadderCallback:
	checkevent EVENT_RELEASED_THE_BEASTS
	iftruefwd .NoChange
	changeblock 6, 14, $2
.NoChange:
	endcallback

ReleaseTheBeasts:
	playmusic MUSIC_NONE
	pause 30
	appear BURNEDTOWERB1F_RAIKOU1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_RAIKOU2
	pause 15
	cry RAIKOU
	appear BURNEDTOWERB1F_ENTEI1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_ENTEI2
	pause 15
	cry ENTEI
	appear BURNEDTOWERB1F_SUICUNE1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_SUICUNE2
	pause 15
	cry SUICUNE
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, LEFT
	applymovement BURNEDTOWERB1F_RAIKOU1, BurnedTowerRaikouMovement
	disappear BURNEDTOWERB1F_RAIKOU1
	waitsfx
	playsound SFX_WARP_FROM
	turnobject PLAYER, RIGHT
	applymovement BURNEDTOWERB1F_ENTEI1, BurnedTowerEnteiMovement
	disappear BURNEDTOWERB1F_ENTEI1
	waitsfx
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, UP
	applymovement BURNEDTOWERB1F_SUICUNE1, BurnedTowerSuicuneMovement1
	playsound SFX_WARP_FROM
	turnobject PLAYER, DOWN
	applymovement BURNEDTOWERB1F_SUICUNE1, BurnedTowerSuicuneMovement2
	turnobject PLAYER, UP
	pause 20
	cry SUICUNE
	pause 30
	playsound SFX_WARP_FROM
	applymovement BURNEDTOWERB1F_SUICUNE1, BurnedTowerSuicuneMovement3
	turnobject PLAYER, DOWN
	disappear BURNEDTOWERB1F_SUICUNE1
	waitsfx
	special RestartMapMusic
	setscene $1
	setevent EVENT_RELEASED_THE_BEASTS
	special InitRoamMons
	setmapscene ECRUTEAK_GYM, $1
	setmapscene CIANWOOD_CITY, $1
	clearevent EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
	setevent EVENT_ECRUTEAK_GYM_GRAMPS
	clearevent EVENT_ECRUTEAK_CITY_GRAMPS
	setevent EVENT_BURNED_TOWER_MORTY
	setevent EVENT_BURNED_TOWER_1F_EUSINE
	appear BURNEDTOWERB1F_EUSINE
	refreshscreen
	changeblock 6, 14, $1b
	reloadmappart
	closetext
	setscene $1
	end

BurnedTowerB1FEusine:
	showtextfaceplayer BurnedTowerB1FEusineText
	readvar VAR_FACING
	ifequalfwd $1, .Movement
	applymovement BURNEDTOWERB1F_EUSINE, BurnedTowerB1FEusineMovement1
	sjumpfwd .Finish

.Movement:
	applymovement BURNEDTOWERB1F_EUSINE, BurnedTowerB1FEusineMovement2
.Finish:
	disappear BURNEDTOWERB1F_EUSINE
	playsound SFX_EXIT_BUILDING
	waitsfx
	end

BurnedTowerRaikouMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_left
	step_end

BurnedTowerEnteiMovement:
	fix_facing
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_right
	step_end

BurnedTowerSuicuneMovement1:
	fix_facing
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_left
	step_end

BurnedTowerSuicuneMovement2:
	fix_facing
	fast_jump_step_left
	fast_jump_step_up
	run_step_up
	fast_jump_step_right
	step_end

BurnedTowerSuicuneMovement3:
	fix_facing
	run_step_up
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	step_end

BurnedTowerB1FEusineMovement2:
	step_left
	step_left
	step_down
	step_down
	step_left
	step_down
	step_end

BurnedTowerB1FEusineMovement1:
	step_down
	step_left
	step_left
	step_left
	step_down
	step_down
	step_end

BurnedTowerB1FEusineText:
	text "Eusine: I dug a"
	line "hole here, too…"

	para "I was shocked!"

	para "Suicune raced by"
	line "like a blur, right"

	para "in front of my"
	line "eyes!"

	para "For ten years I"
	line "chased Suicune,"

	para "and I finally got"
	line "to see it."

	para "I'm all choked up!"

	para "<PLAYER>, I owe"
	line "this all to you!"

	para "Thank you!"

	para "I heard that the"
	line "legendary #MON"

	para "of Ecruteak test"
	line "chosen humans by"

	para "allowing them to"
	line "get close."

	para "I'm going to track"
	line "Suicune."

	para "<PLAYER>, let's"
	line "meet again!"

	para "Farewell!"
	done
