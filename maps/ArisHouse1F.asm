ArisHouse1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks
    
    def_warp_events
    warp_event 2, 7, GEMROOT_TOWN, 2
    warp_event 3, 7, GEMROOT_TOWN, 2
    warp_event 1, 0, ARIS_HOUSE_2F, 1

    def_coord_events ; there will probably be something here later

    def_bg_events
    bg_event 6, 1, BGEVENT_JUMPTEXT, ArisSinkText
    bg_event 7, 1, BGEVENT_JUMPTEXT, ArisStoveText
    bg_event 8, 1, BGEVENT_JUMPTEXT, ArisFridgeText

    def_object_events
    object_event 4, 3, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ArisMomScript, -1 

    object_const_def

ArisMomScript:
    faceplayer
    jumptext ArisMomText
    end

ArisMomText:
    text "Ari? I think they"
    line "went upstairs."
    done

ArisSinkText:
    text "There are some"
    line "dirty dishes in"
    cont "the sink."

    para "… … … …"
    
    para "Someone had"
    line "better wash them!"
    done

ArisStoveText:
    text "The stove is nice"
    line "and shiny. It"
    
    para "looks like it was"
    line "cleaned recently."
    done

ArisFridgeText:
    text "What's in the"
    line "fridge?"

    para "… … …"

    para "There's a note."
    
    para "Stop snooping in"
    line "my fridge!  -Ari"
    done
