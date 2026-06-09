MarigoldGymVent_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  1,  3, MARIGOLD_GYM, 3
	warp_event 15,  3, MARIGOLD_GYM, 4
	warp_event 11,  9, MARIGOLD_GYM, 5
	warp_event 13, 15, MARIGOLD_GYM, 6
	warp_event 25, 15, MARIGOLD_GYM, 7

    def_coord_events

    def_bg_events
	bg_event  6, 15, BGEVENT_JUMPTEXT, MarigoldGymVentHoleText
	bg_event  7, 15, BGEVENT_JUMPTEXT, MarigoldGymVentHoleText
	bg_event 15,  3, BGEVENT_READ, MarigoldGymVentGrate1
	bg_event 11,  9, BGEVENT_READ, MarigoldGymVentGrate2
	bg_event 13, 15, BGEVENT_READ, MarigoldGymVentGrate3
	bg_event 25, 15, BGEVENT_READ, MarigoldGymVentGrate4

    db 1 ; object events
	itemball_event 10, 15, METAL_COAT, 1, EVENT_MARIGOLD_GYM_VENT_METAL_COAT

MarigoldGymVentGrate1:
    changeblock 14, 2, $61
    reloadmappart
    opentext
    writetext JumpInTheVentText
    yesorno
    iftruefwd VentJumpingScript
    closetext
    end

MarigoldGymVentGrate2:
    changeblock 10, 8, $61
    reloadmappart
    opentext
    writetext JumpInTheVentText
    yesorno
    iftruefwd VentJumpingScript
    closetext
    end

MarigoldGymVentGrate3:
    changeblock 12, 14, $61
    reloadmappart
    opentext
    writetext JumpInTheVentText
    yesorno
    iftruefwd VentJumpingScript
    closetext
    end

MarigoldGymVentGrate4:
    changeblock 24, 14, $61
    reloadmappart
    opentext
    writetext JumpInTheVentText
    yesorno
    iftruefwd VentJumpingScript
    closetext
    end

VentJumpingScript:
    closetext
    readvar VAR_FACING
    ifnotequal RIGHT, .JumpingOtherSide
    applyonemovement PLAYER, step_right
    playsound SFX_KINESIS
    applyonemovement PLAYER, skyfall_top
    waitsfx
    pause 5
    warpcheck
    end

.JumpingOtherSide:
    applyonemovement PLAYER, step_left
    playsound SFX_KINESIS
    applyonemovement PLAYER, skyfall_top
    waitsfx
    pause 5
    warpcheck
    end

JumpInTheVentText:
    text "Climb down to the"
    line "first floor?"
    done

MarigoldGymVentHoleText:
    text "It's a big hole!"
    line "Better be careful!"
    done
