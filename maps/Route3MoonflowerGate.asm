Route3MoonflowerGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, MOONFLOWER_CITY, 11
	warp_event  5,  0, MOONFLOWER_CITY, 12
	warp_event  4,  7, ROUTE_3, 1
	warp_event  5,  7, ROUTE_3, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, Route3MoonflowerGateOfficerText, -1
	object_event  4,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, Route3MoonflowerGateCooltrainerFText, -1

Route3MoonflowerGateOfficerText:
	text "Hi there!"
	line "Did you visit"
	cont "# INDUSTRIES?"
	done

Route3MoonflowerGateCooltrainerFText:
	text "I came too far"
	line "out. I'd better"
	cont "phone home!"
	done
