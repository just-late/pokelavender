LocovineTown_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 27,  6, ROUTE_6, 1
	warp_event 27,  7, ROUTE_6, 2
	warp_event 19,  7, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event 12,  8, BGEVENT_JUMPTEXT, LocovineTownBikeShopSignText
	bg_event 18, 11, BGEVENT_JUMPTEXT, LocovineTownSignText
	bg_event  6, 15, BGEVENT_ITEM + ULTRA_BALL, EVENT_LOCOVINE_TOWN_HIDDEN_ULTRA_BALL

    db 4 ; object events
	person_event SPRITE_CLERK, 6, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, LocovineTownMartClerk, -1
	person_event SPRITE_FISHER, 19, 16, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_CHILD, 11, 21, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_COWGIRL,  9, 15, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, LocovineTownNPC3Text, -1
	tmhmball_event  4, 21, HM_STRENGTH, EVENT_GOT_HM04_STRENGTH

LocovineTownMartClerk:
	pokemart MARTTYPE_INFORMAL, MART_LOCOVINE

LocovineTownNPC3Text:
	text "Look, look!"

	para "Since there's no"
	line "MART in town,"

	para "we went ahead"
	line "and opened a town"
	cont "market!"

	para "That friendly man"
	line "sells things made"
	cont "by the people of"
	cont "LOCOVINE TOWN."
	done

LocovineTownBikeShopSignText:
	text "MIRACLE CYCLES"

	para "Making travelling"
	line "easier across the"
	cont "world!"
	done

LocovineTownSignText:
	text "LOCOVINE TOWN"

	para "A town bustling"
	line "with hard workers."
	done
