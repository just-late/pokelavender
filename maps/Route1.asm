Route1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 15, 21, BGEVENT_JUMPTEXT, Route1SignText

	db 4 ; object events
	person_event SPRITE_LASS, 24, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, Route1NPC1Text, -1
	person_event SPRITE_SCHOOLBOY, 32, 12, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, Route1NPC2Text, -1
	cuttree_event 13, 26, EVENT_ROUTE_1_CUT_TREE
	fruittree_event 13,  7, FRUITTREE_ROUTE_1, PECHA_BERRY, PAL_NPC_PINK

Route1NPC1Text:
	text "See those ledges?"
	line "It's a bit scary,"

	para "but you can jump"
	line "from them."

	para "You can get to"
	line "GEMROOT TOWN"
	cont "quicker that way."
	done

Route1NPC2Text:
	text "If you go in the"
	line "tall grass, wild"

	para "#MON may jump out"
	line "at you."

	para "Be prepared!"
	done

Route1SignText:
	text "ROUTE 1"

	para "GEMROOT TOWN - "
	line "GLITTERVINE TOWN"
	done
