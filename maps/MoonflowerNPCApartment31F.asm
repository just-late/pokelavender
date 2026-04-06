MoonflowerNPCApartment31F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 2, 7, MOONFLOWER_CITY, 10
	warp_event 3, 7, MOONFLOWER_CITY, 10
	warp_event 6, 1, MOONFLOWER_NPC_APARTMENT_3_2F, 1

    def_coord_events

    def_bg_events

    db 3 ; object events
	person_event SPRITE_SAILOR,  5,  6, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment1FSailor1Text, -1
	person_event SPRITE_SAILOR,  4,  3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment1FSailor2Text, -1
    pokemon_event 4, 4, MACHAMP, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_GRAY, MoonflowerApartment1FMachampText, -1

MoonflowerApartment1FSailor1Text:
    text "Ahoy, mate!"

    para "Have you been to"
    line "the port south of"
    cont "here?"

    para "A blistering wind"
    line "blows there!"
    done

MoonflowerApartment1FSailor2Text:
    text "I've sailed the"
    line "seas with my"
    cont "precious #MON!"

    para "We make a wild"
    line "team."
    done

MoonflowerApartment1FMachampText:
    text "Graaagh! Graargh!"
    done
