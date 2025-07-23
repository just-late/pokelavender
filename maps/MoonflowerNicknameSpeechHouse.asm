MoonflowerNicknameSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, MOONFLOWER_CITY, 4
	warp_event  4,  7, MOONFLOWER_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNicknameSpeechHouseTeacherText, -1
	object_event  6,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNicknameSpeechHouseLassText, -1
	object_event  5,  2, SPRITE_EEVEE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MoonflowerNicknameSpeechHouseBirdScript, -1
	object_event  0,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNicknameSpeechHouseGrampsText, -1

MoonflowerNicknameSpeechHouseBirdScript:
	faceplayer
	showcrytext MoonflowerNicknameSpeechHouseBirdText, EEVEE
	end

MoonflowerNicknameSpeechHouseTeacherText:
	text "She uses the names"
	line "of her favorite"
	cont "things to eat."

	para "For the nicknames"
	line "she gives to her"
	cont "#MON, I mean."
	done

MoonflowerNicknameSpeechHouseLassText:
	text "I call my Eevee"
	line "Strawberry!"
	done

MoonflowerNicknameSpeechHouseGrampsText:
	text "The Zephyr Badge"
	line "is named after an"

	para "ancient god of the"
	line "west wind."

	para "Very fitting for a"
	line "Flying-type Gym."
	done

MoonflowerNicknameSpeechHouseBirdText:
	text "Strawberry: Vui!"
	done
