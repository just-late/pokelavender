MarigoldCave2F_MapScriptHeader:
    def_callbacks

    def_scene_scripts

    def_warp_events
	warp_event  6, 28, MARIGOLD_CAVE_1F, 2
	warp_event 25,  5, MARIGOLD_CAVE_1F, 3
	warp_event  8, 25, MARIGOLD_CAVE_1F, 7
	warp_event  7, 18, MARIGOLD_CAVE_1F, 8
	warp_event  9,  4, MARIGOLD_CAVE_1F, 9
	warp_event 27,  2, MARIGOLD_CAVE_1F, 10

    def_coord_events

    def_bg_events

    db 7 ; object events
	person_event SPRITE_ROCKET,  5,  8, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerGruntM3, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	person_event SPRITE_ROCKET,  3, 19, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2,  GenericTrainerGruntM4, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	person_event SPRITE_ROCKET_GIRL,  2, 12, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerGruntF3, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
;   person_event SPRITE_HIKER, 22,  8,
;	person_event SPRITE_PICNICKER, 12, 25
;	person_event SPRITE_CAMPER,  6,  4
;	person_event SPRITE_SUPER_NERD, 26, 17

GenericTrainerGruntM3:
	generictrainer GRUNTM, 3, EVENT_BEAT_GRUNTM_3, GruntM3SeenText, GruntM3BeatenText

	text "You're too strong."

	para "Our plan could be"
	line "ruined. I must"
	cont "warn the others…"
	done

GenericTrainerGruntM4:
	generictrainer GRUNTM, 4, EVENT_BEAT_GRUNTM_4, GruntM4SeenText, GruntM4BeatenText

	text "We won't let you"
	line "ruin our plans!"
	done

GenericTrainerGruntF3:
	generictrainer GRUNTF, 3, EVENT_BEAT_GRUNTF_3, GruntF3SeenText, GruntF3BeatenText

	text "Go wherever you'd"
	line "like! Get lost!"
	cont "See if I care!"
	done

GruntM3SeenText:
    text "Most GRUNTS are"
    line "given SENTRETS to"
    cont "make transportation"
    cont "easier."

    para "But I use mine"
    line "for battle, too!"
    done

GruntM3BeatenText:
    text "You're a strong"
    line "trainer!"

    para "We must keep an"
    line "eye on you…"
    done

GruntM4SeenText:
    text "I'm the fourth"
    line "highest ranked"
    cont "grunt here!"

    para "I won't let you"
    line "get any further!"
	done

GruntM4BeatenText:
    text "Augh! I'll never"
    line "be promoted!"
	done

GruntF3SeenText:
	text "Are you lost? No,"
	line "you can't be."

	para "You don't have"
	line "that scared look."

	para "I'll give you"
	line "something to be"
	cont "scared about!"
	done

GruntF3BeatenText:
	text "How could you?"
	done
