WarehouseTown_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 27,  6, ROUTE_6, 1
	warp_event 27,  7, ROUTE_6, 2
	warp_event 11,  7, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event 14,  7, BGEVENT_JUMPTEXT, WarehouseTownBikeShopSignText
	bg_event 18, 11, BGEVENT_JUMPTEXT, WarehouseTownSignText
	bg_event  6, 15, BGEVENT_ITEM + ULTRA_BALL, EVENT_WAREHOUSE_TOWN_HIDDEN_ULTRA_BALL

    db 11 ; object events
	person_event SPRITE_FISHER, 19, 16, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_CHILD, 11, 21, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_POKEFAN_F,  9, 15, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	tmhmball_event  4, 24, HM_STRENGTH, EVENT_GOT_HM04_STRENGTH

WarehouseTownBikeShopSignText:
	text "MIRACLE CYCLES"

	para "Making travelling"
	line "easier across the"
	cont "world!"
	done

WarehouseTownSignText:
	text "WAREHOUSE TOWN"

	para "A town bustling"
	line "with hard workers."
	done
