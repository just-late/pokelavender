FrozenWasteland_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  4, 17, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event  6, 16, BGEVENT_JUMPTEXT, FrozenWastelandsSignText

    db 0 ; object events

FrozenWastelandsSignText:
    text "WARNING!!"

    para "Beyond this point,"
    line "there is nothing"
    cont "but frozen wastes"

    para "as far as the eye"
    line "can see."

    para "Proceed at your"
    line "own risk."
    done
