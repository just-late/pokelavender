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
    bg_event 8, 1, BGEVENT_READ, ArisFridgeScript

    def_object_events
    object_event 4, 3, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ArisMomScript, -1 

    object_const_def

ArisMomScript:
    faceplayer
    opentext
    writetext ArisMomText
    addcellnum PHONE_ARI
    writetext GotArisNumberText
    playsound SFX_REGISTER_PHONE_NUMBER
    waitsfx
    waitbutton
    closetext
    end

ArisFridgeScript:
    checkevent EVENT_LOOKED_IN_ARIS_FRIDGE
    iftruefwd .FridgeText
    setevent EVENT_LOOKED_IN_ARIS_FRIDGE
.FridgeText
    jumptext ArisFridgeText
    end

ArisMomText:
    text "Ari? I think they"
    line "went upstairs."

    para "Here's their"
    line "number."
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

GotArisNumberText:
    text "<PLAYER> got Ari's"
    line "phone number."
    done
