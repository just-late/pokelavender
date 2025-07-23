AnabelsHouse2F_MapScriptHeader:
    def_scene_scripts
    scene_script AnabelsHouseBedroomScene0

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

AnabelsHouseBedroomScene0:
    sdefer AnabelBedroomSceneScript
    end

AnabelBedroomSceneScript:
    applyonemovement PLAYER, step_down
    showtext AnabelBedroomSceneText1
    pause 15
    showemote EMOTE_SHOCK, BEDROOM_SCENE_ANABEL, 30
    showtext AnabelBedroomSceneText2
    applyonemovement BEDROOM_SCENE_ANABEL, step_left
    turnobject BEDROOM_SCENE_ANABEL, UP
    playsound SFX_SWITCH_POCKETS
    waitsfx
    showtext AnabelBedroomSceneText3
    pause 15
    turnobject BEDROOM_SCENE_ANABEL, LEFT
    showemote EMOTE_SHOCK, BEDROOM_SCENE_ANABEL, 30
    turnobject PLAYER, RIGHT
    showtext AnabelBedroomSceneText4
    applymovement BEDROOM_SCENE_ANABEL, AnabelWalksToPlayerMovement
    showtext AnabelBedroomSceneText5
    applyonemovement PLAYER, step_down
    turnobject PLAYER, UP
    applymovement BEDROOM_SCENE_ANABEL, AnabelExitsMovement
    disappear BEDROOM_SCENE_ANABEL
    playsound SFX_ENTER_DOOR
    waitsfx
    setscene $1
    end

AnabelBedroomSceneText1:
    text "Let's see here…"

    para "I have my"
    line "#GEAR, # BALLS,"
    cont "and…"

    para "…"
    done

AnabelBedroomSceneText2:
    text "Right!"
    line "My journal!"
    done

AnabelBedroomSceneText3:
    text "Ah, here it is!"
    done

AnabelBedroomSceneText4:
    text "Oh!"
    line "Hi, <PLAYER>!"
    done

AnabelBedroomSceneText5:
    text "I got all my"
    line "things."

    para "Anyway, I want"
    line "you to meet me at"
    cont "ROUTE 1."

    para "See you there!"
    done

AnabelWalksToPlayerMovement:
    step_left
    step_left
    step_up
    step_left
    step_end

AnabelExitsMovement:
    step_left
    step_up
    step_end

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
