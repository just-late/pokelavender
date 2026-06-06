Route1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 13,  4, BGEVENT_JUMPTEXT, Route1SignText
;	soil_event 12, 3
;	soil_event 13, 3

	db 3 ; object events
	person_event SPRITE_LASS, 19, 11, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, Route1NPC1Text, -1
	person_event SPRITE_SCHOOLBOY,  6, 13, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, Route1NPC2Text, -1
	cuttree_event  9,  9, EVENT_ROUTE_1_CUT_TREE 

Route1NPC1Text:
	text "I shouldn't have"
	line "worn a skirt out"
	cont "in the grass."
	
	para "Now my legs are"
	line "covered in"
	cont "CATERPIE bites!"
	done

Route1NPC2Text:
	text "If you go in the"
	line "tall grass, wild"

	para "#MON may jump"
	line "out at you."

	para "I bet you already"
	line "knew that, though."
	done

Route1SignText:
	text "ROUTE 1"

	para "GEMROOT TOWN - "
	line "MOSSHILL TOWN"
	done
