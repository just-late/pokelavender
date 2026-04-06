MarigoldNPCHouse1_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 3, 7, MARIGOLD_PORT, 3
    warp_event 4, 7, MARIGOLD_PORT, 3

    def_coord_events

    def_bg_events

    db 1 ; object events
    person_event SPRITE_HIKER, 3, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldNPCHouse1HikerText, -1

MarigoldNPCHouse1HikerText:
    text "I like to hike"
    line "in MARIGOLD CAVE."

    para "There's nothing"
    line "quite like rocks"
    cont "in your socks!"
    done
