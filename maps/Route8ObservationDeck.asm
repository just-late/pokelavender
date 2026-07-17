Route8ObservationDeck_MapScriptHeader:
    def_scene_scripts
    
    def_callbacks

    def_warp_events
	warp_event  8,  5, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event  4,  1, BGEVENT_JUMPTEXT, Route8BinocularsText

    db 3 ; object events
	person_event SPRITE_OFFICER,  6,  0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_BUG_CATCHER,  2,  6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_LASS,  5,  4, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1

Route8BinocularsText:
    text "Looked out the"
    line "big window."

    para "I can see MT."
    line "LAVENDER from here!"
    done
