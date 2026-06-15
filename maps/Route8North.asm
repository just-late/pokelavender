Route8North_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
;	warp_event 11, 25, PLAYERS_HOUSE_2F, 1
    def_coord_events
    
    def_bg_events

    db 2 ; object events
	person_event SPRITE_YOUNGSTER, 29, 18, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_HIKER, 14, 12, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
