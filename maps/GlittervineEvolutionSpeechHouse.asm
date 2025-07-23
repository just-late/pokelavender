GlittervineEvolutionSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GLITTERVINE_TOWN, 3
	warp_event  3,  7, GLITTERVINE_TOWN, 3

	def_coord_events

	def_bg_events

	db 1 ; object_events
	person_event SPRITE_CUTE_GIRL,  3,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, PERSONTYPE_COMMAND, jumptext, GlittervineEvolutionSpeechHouseNPC1Text, -1

GlittervineEvolutionSpeechHouseNPC1Text:
	text "Did you know that"
	line "when #MON gain"
	
	para "enough experience"
	line "in battle, they"
	cont "change form?"

	para "It's amazing what"
	line "#MON PROFESSORS"
	cont "have found out!"
	done
