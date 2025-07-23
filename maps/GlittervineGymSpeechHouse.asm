GlittervineGymSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GLITTERVINE_TOWN, 7
	warp_event  3,  7, GLITTERVINE_TOWN, 7

	def_coord_events

	def_bg_events

	db 2 ; object_events
	person_event SPRITE_GRAMPS,  3,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineGymSpeechHouseNPC1Text, -1
	person_event SPRITE_GRANNY,  5,  5, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineGymSpeechHouseNPC2Text, -1

GlittervineGymSpeechHouseNPC1Text:
	text "The best of"
	line "trainers test"
	
	para "themselves by"
	line "challenging GYMS."
	
	para "It's a long"
	line "journey, but I"
	
	para "managed to collect"
	line "every ATTUVA"
	cont "LEAGUE BADGE back"
	cont "in my day."
	done

GlittervineGymSpeechHouseNPC2Text:
	text "Of course, the"
	line "time came when he"
	cont "had to battle me."

	para "After all, I was"
	line "a GYM LEADER back"
	cont "my day!"
	done
