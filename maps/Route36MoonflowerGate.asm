Route36MoonflowerGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_36, 5
	warp_event  0,  5, ROUTE_36, 6
	warp_event  9,  4, MOONFLOWER_CITY, 10
	warp_event  9,  5, MOONFLOWER_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, Route36MoonflowerGateOfficerScript, -1
	object_event  5,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Route36MoonflowerGateYoungsterText, -1

Route36MoonflowerGateOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftruefwd .ClearedSudowoodo
	jumpopenedtext Route36MoonflowerGateOfficerText1

.ClearedSudowoodo
	jumpopenedtext Route36MoonflowerGateOfficerText2

Route36MoonflowerGateOfficerText1:
	text "Lately, I don't"
	line "see people coming"

	para "from Goldenrod"
	line "City."
	done

Route36MoonflowerGateOfficerText2:
	text "Things are busy"
	line "lately, because"

	para "many people are"
	line "coming from"

	para "Goldenrod and"
	line "Ecruteak!"
	done

Route36MoonflowerGateYoungsterText:
	text "Plants are living"
	line "things too!"

	para "They would want to"
	line "move around from"
	cont "time to time!"
	done
