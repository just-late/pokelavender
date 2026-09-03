WarehouseTown_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 27,  6, PLAYERS_HOUSE_2F, 1
	warp_event 27,  7, PLAYERS_HOUSE_2F, 1

    def_coord_events
	coord_event 10, 17, 0, WarehouseTownUnderpassSouth
	coord_event 11, 17, 0, WarehouseTownUnderpassSouth
	coord_event 12, 17, 0, WarehouseTownUnderpassSouth
	coord_event 13, 17, 0, WarehouseTownUnderpassSouth
	coord_event 10, 23, 0, WarehouseTownUnderpassNorth
	coord_event 11, 23, 0, WarehouseTownUnderpassNorth
	coord_event 12, 23, 0, WarehouseTownUnderpassNorth
	coord_event 13, 23, 0, WarehouseTownUnderpassNorth

    def_bg_events
;	bg_event 25, 24
;	bg_event 21,  9
;	bg_event  6, 14

    db 6 ; object events
	person_event SPRITE_FISHER, 15, 16, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_CHILD,  7, 22, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_POKEFAN_F,  9, 13, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_SAILOR, 30, 22, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_SAILOR, 29, 24, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_MACHAMP_SLUMBER, 26, 24, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GRAY, PERSONTYPE_SCRIPT, 0, WarehosueTownMachampScript, -1
	person_event SPRITE_BALL_CUT_FRUIT,  3, 13, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	tmhmball_event 22, 33, HM_STRENGTH, EVENT_GOT_HM04_STRENGTH

WarehosueTownMachampScript:
	cry MACHAMP
	jumptext WarehouseTownMachampText

WarehouseTownMachampText:
	text "…<PAUSE>…<PAUSE>…<PAUSE>…<PAUSE>…"

	para "It snores heavily."
	done

WarehouseTownUnderpassSouth:
	applyonemovement PLAYER, hide_object
	applyonemovement PLAYER, slow_step_down
	applymovement PLAYER, WarehouseTownUnderpassSouth_Movement
	applyonemovement PLAYER, show_object
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, slow_step_down
	end

WarehouseTownUnderpassSouth_Movement:
	step_down
	fast_step_down
	fast_step_down
	fast_step_down
	fast_step_down
	step_end

WarehouseTownUnderpassNorth:
	applyonemovement PLAYER, slow_step_up
	applyonemovement PLAYER, hide_object
	applymovement PLAYER, WarehouseTownUnderpassNorth_Movement
	end

WarehouseTownUnderpassNorth_Movement:
	step_up
	fast_step_up
	fast_step_up
	fast_step_up
	fast_step_up
	step_up
	show_object
	slow_step_up
	step_end
