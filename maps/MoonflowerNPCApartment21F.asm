MoonflowerNPCApartment21F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 2, 7, MOONFLOWER_CITY, 9
	warp_event 3, 7, MOONFLOWER_CITY, 9
	warp_event 6, 1, MOONFLOWER_NPC_APARTMENT_2_2F, 1

    def_coord_events

    def_bg_events

    db 2 ; object events
	person_event SPRITE_COWGIRL, 4, 3, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment1FCowgirlText, -1
	pokemon_event  5,  5, TAUROS, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MoonflowerApartment1FTaurosText, -1

MoonflowerApartment1FCowgirlText:
    text "Howdy!"

    para "What's that?"

    para "You don't think a"
    line "rancher like me"
    cont "belongs in the city?"

    para "Well, I'll have"
    line "you know:"

    para "I'm thrivin'!"
    done

MoonflowerApartment1FTaurosText:
    text "Groooorargh!"
    done
