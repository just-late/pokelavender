ArisHouse2F_MapScriptHeader:
    def_scene_scripts ; there will probably need to be scene scripts eventually

    def_callbacks

    def_warp_events
    warp_event 1, 0, ARIS_HOUSE_1F, 3

    def_coord_events ; there WILL be some of these later

    def_bg_events
    bg_event 0, 0, BGEVENT_JUMPTEXT, ArisBedroomPosterText

    def_object_events

    object_const_def

ArisBedroomPosterText:
    text "It's a poster of"
    line "a Clefairy."
    done
