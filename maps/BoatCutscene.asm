BoatCutscene_MapScriptHeader:
    def_scene_scripts
    scene_script RegularBoatRide_Scene

    def_callbacks

    def_warp_events

    def_coord_events

    def_bg_events

    db 2 ; object events
	object_event  8,  5, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, -1
	object_event  8,  5, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, -1

RegularBoatRide_Scene:
    disappear PLAYER
    sdefer ToBlossomBoatRide_Script
    end

ToBlossomBoatRide_Script:
    pause 10
    applymovement PLAYER, BoatMovesToCenter_Movement
    pause 15
    applymovement PLAYER, BoatMovesToRight_Movement
    pause 10
    special Special_FadeBlackQuickly
    appear PLAYER
    warpfacing DOWN, BLOSSOM_CITY, 34, 41
    end

BoatMovesToCenter_Movement:
    step_left
    step_left
    step_left
    step_left
    step_end

BoatMovesToRight_Movement:
    step_left
    step_left
    step_left
    step_left
    step_end
