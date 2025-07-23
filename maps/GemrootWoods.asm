GemrootWoods_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 4, 6, GEMROOT_TOWN, 3
    warp_event 5, 6, GEMROOT_TOWN, 4

    def_coord_events

    def_bg_events
    bg_event 12, 9, BGEVENT_JUMPTEXT, GemrootWoodsMossyRockText

    def_object_events

    object_const_def

GemrootWoodsMossyRockText:
    text "It's a mossy rock."
    line "It's pleasently"
    cont "cool."
    done
