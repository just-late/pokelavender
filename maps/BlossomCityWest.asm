BlossomCityWest_MapScriptHeader:
    def_scene_scripts
    
    def_callbacks

    def_warp_events

    def_coord_events

    def_bg_events
	bg_event 15, 25, BGEVENT_JUMPTEXT, BlossomGymSignText

    db 9 ; object events
	person_event SPRITE_BIRD_KEEPER,  6, 20, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_YOUNGSTER,  6, 21, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_CUTE_GIRL, 26, 10, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_POKEFAN_M, 22, 21, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_BURGLAR, 16, 13, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_GENTLEMAN, 19, 21, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_LASS, 12, 18, SPRITEMOVEDATA_WANDER, 3, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_POKEFAN_F, 16, 23, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_CHILD, 16, 22, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1

BlossomGymSignText:
    text "BLOSSOM CITY"
    line "#MON GYM"

    para "LEADER: ROGER"
    line "The stern sea"
    cont "captain!"
    done
