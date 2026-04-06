MoonflowerNPCApartment32F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  5,  1, MOONFLOWER_NPC_APARTMENT_3_1F, 3

    def_coord_events

    def_bg_events

    db 2 ; object events
	person_event SPRITE_GENTLEMAN,  4,  2, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment2FGentlemanText, -1
    pokemon_event 3, 4, GROWLITHE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_RED, MoonflowerApartment2FGrowlitheText, -1

MoonflowerApartment2FGentlemanText:
    text "The downstairs"
    line "neighbors of mine"
    cont "are a rowdy bunch!"

    para "I wish I had more"
    line "peace and quiet."
    done

MoonflowerApartment2FGrowlitheText:
    text "Arf! Arf!"
    done
