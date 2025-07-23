GemrootNicknameSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GEMROOT_TOWN, 5
	warp_event  3,  7, GEMROOT_TOWN, 5

	def_coord_events

	def_bg_events

	db 4 ; object_events
	person_event SPRITE_POKEFAN_F, 4,  2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GemrootNicknameSpeechHousePokefanFText, -1
	person_event SPRITE_TWIN, 4,  5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, GemrootNicknameSpeechHouseTwinText, -1
	pokemon_event  5,  2, MUNCHLAX, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BLUE, MuncheeText, -1
	pokemon_event  6,  3, EEVEE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, VeeveeText, -1

GemrootNicknameSpeechHousePokefanFText:
	text "Do you ever think"
	line "about naming your"
	cont "#MON?"

	para "Giving them good"
	line "nicknames adds to"

	para "the fun of trading"
	line "with others."
	done

GemrootNicknameSpeechHouseTwinText:
	text "They're MUNCHEE--"
	line "a MUNCHLAX--and"
	cont "VEEVEE--an EEVEE."
	done

MuncheeText:
	text "MUNCHEE: Lax!"
	done

VeeveeText:
	text "VEEVEE: Evvee!"
	done
