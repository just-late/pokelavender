GlittervineTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GlittervineTownFlyPoint

	def_warp_events
	warp_event 25,  5, GLITTERVINE_MART, 2
	warp_event 25, 13, GLITTERVINE_POKECENTER_1F, 1
	warp_event 11,  5, GLITTERVINE_EVOLUTION_SPEECH_HOUSE, 1
	warp_event 31,  8, ROUTE_2_GLITTERVINE_GATE, 1
	warp_event 31,  9, ROUTE_2_GLITTERVINE_GATE, 2
	warp_event 14, 13, GLITTERVINE_TRAINERS_SCHOOL, 1

	def_coord_events

	def_bg_events
	bg_event 21, 13, BGEVENT_JUMPTEXT, GlittervineTownSignText
	bg_event 15, 14, BGEVENT_JUMPTEXT, GlittervineTrainersSchoolSignText
	bg_event 20,  5, BGEVENT_JUMPTEXT, GlittervineBennysHouseSignText
	bg_event 31,  6, BGEVENT_ITEM + NUGGET, EVENT_GLITTERVINE_TOWN_HIDDEN_NUGGET

	db 3 ; object_events
	person_event SPRITE_POKEFAN_F,  7, 21, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineNPC1Text, -1
	person_event SPRITE_GRAMPS, 16, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineNPC2Text, -1
	person_event SPRITE_TWIN, 11, 29, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_PINK, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineNPC3Text, -1

	object_const_def

GlittervineTownFlyPoint:
	setflag ENGINE_FLYPOINT_GLITTERVINE
	endcallback

GlittervineNPC1Text:
	text "Hello!"
	
	para "Are you new here?"

	para "We try to keep it"
	line "clean and quiet"
	cont "here in"
	cont "GLITTERVINE TOWN."
	done

GlittervineNPC2Text:
	text "I moved here when"
	line "I was 17 years"
	cont "old."

	para "It seemed like a"
	line "dream back then."

	para "In fact, the"
	line "school wasn't even"
	cont "built yet!"
	done

GlittervineNPC3Text:
	text "I go to the"
	line "#MON TRAINER's"
	cont "school everyday."

	para "I love to study"
	line "with my partner"
	cont "MAREEP!"
	done

GlittervineBennysHouseSignText:
	text "BENNY's HOUSE"
	done

GlittervineTrainersSchoolSignText:
	text "GLITTERVINE"
	line "TRAINER's SCHOOL"
	done

GlittervineTownSignText:
	text "GLITTERVINE TOWN"

	para "A quiet, humble"
	line "place of peace."
	done
