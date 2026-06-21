OredaleMuseum2F_MapScriptHeader:
    def_scene_scripts
    
    def_callbacks

    def_warp_events
	warp_event  2,  6, OREDALE_MUSEUM_1F, 3

    def_coord_events

    def_bg_events

    db 4 ; object events
	person_event SPRITE_INDIGO_M,  2, 12, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_INDIGO_F,  2, 13, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_INDIGO_M,  2, 14, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
;	person_event SPRITE_INDIGO_F,  6,  8, SPRITEMOVEDATA_STANDING_UP
;	person_event SPRITE_GENTLEMAN,  6, 13
