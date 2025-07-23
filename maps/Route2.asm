Route2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  8, ROUTE_2_GLITTERVINE_GATE, 3
	warp_event  2,  9, ROUTE_2_GLITTERVINE_GATE, 4

	def_coord_events

	def_bg_events

	db 8 ; object_events
	itemball_event 30, 43, POKE_BALL, 1, EVENT_ROUTE_2_POKE_BALL
	itemball_event 29, 17, ANTIDOTE, 1, EVENT_ROUTE_2_ANTIDOTE
	fruittree_event 16,  4, FRUITTREE_ROUTE_2_1, ORAN_BERRY, PAL_NPC_BLUE
	fruittree_event 17,  4, FRUITTREE_ROUTE_2_2, CHERI_BERRY, PAL_NPC_RED
	fruittree_event 38, 35, FRUITTREE_ROUTE_2_3, CHESTO_BERRY, PAL_NPC_BLUE
	person_event SPRITE_YOUNGSTER,  5, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerYoungsterMikey, -1
	person_event SPRITE_YOUNGSTER, 13, 19, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterAlbert, -1
	person_event SPRITE_BUG_CATCHER, 43, 29, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherDon, -1

GenericTrainerYoungsterMikey:
	generictrainer YOUNGSTER, MIKEY, EVENT_BEAT_YOUNGSTER_MIKEY, .SeenText, .BeatenText

	text "I've gotta catch"
	line "more #MON now…"
	done

.SeenText
	text "I just caught new"
	line "#MON! Time to"
	cont "try 'em out!"
	done

.BeatenText
	text "The #MON"
	line "weren't as cool as"
	cont "they looked…"
	done

GenericTrainerYoungsterAlbert:
	generictrainer YOUNGSTER, ALBERT, EVENT_BEAT_YOUNGSTER_ALBERT, .SeenText, .BeatenText

	text "Looks like more"
	line "training for me!"
	done

.SeenText
	text "Time for some"
	line "special training!"
	done

.BeatenText
	text "A loss is a win"
	line "in its own way,"
	cont "right?"
	done

GenericTrainerBugCatcherDon:
	generictrainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, .SeenText, .BeatenText

	text "These bugs are"
	line "bugging me so"
	cont "much!"

	para "I've never won"
	line "a single battle…"
	done

.SeenText
	text "This battle will"
	line "Win-Lose, and"
	cont "you'll lose!"
	done

.BeatenText
	text "I lost…?"
	done
