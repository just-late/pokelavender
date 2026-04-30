GraniteVillageTrainTrack_MapScriptHeader:
    def_callbacks

    def_scene_scripts

    def_warp_events
	warp_event 22, 11, PLAYERS_HOUSE_2F, 1
	warp_event 25,  5, PLAYERS_HOUSE_2F, 1

    def_coord_events
	coord_event 36,  6, 0, GraniteVillageTrainTracksDontKeepWalkingScript
	coord_event 36,  7, 0, GraniteVillageTrainTracksDontKeepWalkingScript
	coord_event 36,  8, 0, GraniteVillageTrainTracksDontKeepWalkingScript
	coord_event 36,  9, 0, GraniteVillageTrainTracksDontKeepWalkingScript

    def_bg_events

    db 0 ; object events

GraniteVillageTrainTracksDontKeepWalkingScript:
    showtext TrainTracksDontKeepWalkingText
    applyonemovement PLAYER, fix_facing
    applyonemovement PLAYER, step_left
    applyonemovement PLAYER, remove_fixed_facing   
    end

TrainTracksDontKeepWalkingText:
    text "It's probably"
    line "best not to keep"
    cont "walking."
    done
