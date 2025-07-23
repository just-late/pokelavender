AnabelsHouse2F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 1, 0, ANABELS_HOUSE_1F, 3

    def_coord_events

    def_bg_events
	bg_event 0, 0, BGEVENT_JUMPTEXT, AnabelBedroomPosterText

    db 2 ; object_events
	person_event SPRITE_ANABEL,  2,  6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, EVENT_ANABEL_BEDROOM_SCENE
	person_event SPRITE_ANABEL,  3,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, AnabelScript, EVENT_ANABEL_AT_HOME

    object_const_def
    const BEDROOM_SCENE_ANABEL

AnabelScript:
    faceplayer
    jumptext AnabelText

AnabelText:
    text "PLACEHOLDER"
    done

AnabelBedroomPosterText:
    text "It's a poster of"
    line "a CLEFAIRY."
    done

AnabelBigLaprasDollText:
    text "It's a big LAPRAS"
    line "DOLL."
    
    para "It looks well"
    line "loved."
    done
