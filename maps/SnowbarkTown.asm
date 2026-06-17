SnowbarkTown_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 13, 15, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events

    db 2 ; object events
	person_event SPRITE_SKIER, 11, 20, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_GRANNY, 17,  8, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 6, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
