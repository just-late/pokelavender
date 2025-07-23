AnabelsHouse1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks
    
    def_warp_events
	warp_event 2, 7, GEMROOT_TOWN, 2
	warp_event 3, 7, GEMROOT_TOWN, 2
	warp_event  0,  0, ANABELS_HOUSE_2F, 1

    def_coord_events ; there will probably be something here later

    def_bg_events
	bg_event  8,  1, BGEVENT_JUMPTEXT, AnabelsSinkText
	bg_event  9,  1, BGEVENT_JUMPTEXT, AnabelsStoveText
	bg_event 10,  1, BGEVENT_JUMPTEXT, AnabelsFridgeText

    db 2
	person_event SPRITE_ANABEL,  2,  0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, EVENT_ANABEL_HOUSE_SCENE
	person_event SPRITE_BREEDER,  3,  2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, AnabelsMomScript, -1

    object_const_def

AnabelsMomScript:
    faceplayer
    opentext
    writetext AnabelsMomText
    waitbutton
    closetext
    end

AnabelsMomText:
    text "ANABEL is so all"
    line "over the place."

    para "I hope being with"
    line "#MON will help"
    cont "her mature a bit."
    done

AnabelsSinkText:
    text "There are some"
    line "dirty dishes in"
    cont "the sink."

    para "… … … …"
    
    para "Someone had"
    line "better wash them!"
    done

AnabelsStoveText:
    text "The stove is nice"
    line "and shiny. It"
    
    para "looks like it was"
    line "cleaned recently."
    done

AnabelsFridgeText:
    text "What's in the"
    line "fridge?"

    para "… … …"

    para "All sorts of"
    line "POFFINS!"
    done
