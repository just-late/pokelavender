Route31MoonflowerGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, MOONFLOWER_CITY, 8
	warp_event  0,  5, MOONFLOWER_CITY, 9
	warp_event  9,  4, ROUTE_31, 1
	warp_event  9,  5, ROUTE_31, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, Route31MoonflowerGateOfficerText, -1
	object_event  1,  2, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, Route31MoonflowerGateCooltrainerFText, -1

Route31MoonflowerGateOfficerText:
	text "Hi there!"
	line "Did you visit"
	cont "Sprout Tower?"
	done

Route31MoonflowerGateCooltrainerFText:
	text "I came too far"
	line "out. I'd better"
	cont "phone home!"
	done
