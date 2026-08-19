BlossomDeptStoreRoof_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 11,  5, BLOSSOM_CITY, 3

    def_coord_events

    def_bg_events

    db 3 ; object events
	person_event SPRITE_HIKER,  8, 16, SPRITEMOVEDATA_WANDER, 2, 3, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_CAMPER,  7, 20, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_BUG_CATCHER,  4, 18, SPRITEMOVEDATA_STANDING_UP,  0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
