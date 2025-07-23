ArisHouse2F_MapScriptHeader:
    def_scene_scripts ; there will probably need to be scene scripts eventually

    def_callbacks

    def_warp_events
    warp_event 1, 0, ARIS_HOUSE_1F, 3

    def_coord_events ; there WILL be some of these later

    def_bg_events
    bg_event 0, 0, BGEVENT_JUMPTEXT, ArisBedroomPosterText

    def_object_events
    object_event 2, 3, SPRITE_ARI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, AriScript, -1

    object_const_def

AriScript:
    faceplayer
    jumptext AriText

AriText:
    text "PLACEHOLDER"
    done

ArisBedroomPosterText:
    text "It's a poster of"
    line "a Clefairy."
    done
