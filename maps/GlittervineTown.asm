GlittervineTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GlittervineTownFlyPoint

	def_warp_events
	warp_event 25,  5, GLITTERVINE_MART, 2
	warp_event 25, 13, GLITTERVINE_POKECENTER_1F, 1
	warp_event 11,  5, GLITTERVINE_EVOLUTION_SPEECH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 13, BGEVENT_JUMPTEXT, GlittervineTownSignText
	bg_event 15, 14, BGEVENT_JUMPTEXT, GlittervineTrainersSchoolSignText
	bg_event 20,  5, BGEVENT_JUMPTEXT, GlittervineBennysHouseSignText
	bg_event 31,  6, BGEVENT_ITEM + NUGGET, EVENT_GLITTERVINE_TOWN_HIDDEN_NUGGET

	db 3 ; object_events


	object_const_def

GlittervineTownFlyPoint:
	setflag ENGINE_FLYPOINT_GLITTERVINE
	endcallback

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
