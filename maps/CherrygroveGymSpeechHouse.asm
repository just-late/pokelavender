GlittervineGymSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GLITTERVINE_TOWN, 3
	warp_event  3,  7, GLITTERVINE_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineGymSpeechHousePokefanMText, -1
	object_event  5,  5, SPRITE_CHILD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineGymSpeechHouseBugCatcherText, -1

GlittervineGymSpeechHousePokefanMText:
	text "You're trying to"
	line "see how good you"

	para "are as a #MON"
	line "trainer?"

	para "You better visit"
	line "the #MON Gyms"

	para "all over Johto and"
	line "collect Badges."
	done

GlittervineGymSpeechHouseBugCatcherText:
	text "When I get older,"
	line "I'm going to be a"
	cont "Gym Leader!"

	para "I make my #MON"
	line "battle with my"

	para "friend's to make"
	line "them tougher!"
	done
