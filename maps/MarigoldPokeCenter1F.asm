MarigoldPokeCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 5, 7, MARIGOLD_PORT, 2
    warp_event 6, 7, MARIGOLD_PORT, 2
    warp_event 0, 7, POKECENTER_2F, 1

    def_coord_events

    def_bg_events

    db 3 ; object events
    pc_nurse_event 5, 1
    person_event SPRITE_SAILOR, 4, 9, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPokeCenter1FSailorText, -1
    pokemon_event 8, 4, MEOWTH, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MarigoldPokeCenter1FMeowthText, -1

MarigoldPokeCenter1FSailorText:
    text "Some folks came"
    line "through here who"
    cont "called themselves"
    cont "TEAM INDIGO."

    para "I didn't like the"
    line "cut of their jib!"
    done

MarigoldPokeCenter1FMeowthText:
    text "Mrrrow!"
    done
