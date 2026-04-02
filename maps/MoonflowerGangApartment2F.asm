MoonflowerGangApartment2F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 3, 1, MOONFLOWER_GANG_APARTMENT_1F, 3

    def_coord_events

    def_bg_events

    db 4 ; object events
	person_event SPRITE_BIKER,  4,  7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GangApartment2FBikerText, -1
	person_event SPRITE_ARCHER,  5,  4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GangApartment2FBossText, -1
	pokemon_event  1,  4, QUILAVA, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_RED, GangApartment2FQuilavaText, -1
	pokemon_event  2,  5, CYNDAQUIL, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_RED, GangApartment2FCyndaquilText, -1

GangApartment2FBikerText:
    text "ROOOOOOAR!"

    para "Go TYPHLOSIONS!"
    done

GangApartment2FBossText:
    text "I'm the boss of"
    line "this gang."

    para "We're the"
    line "TYPHLOSIONS!"

    para "ROOOOAR!"
    done

GangApartment2FQuilavaText:
    text "Snoorrrzzz…"

    para "It's fast asleep."
    done

GangApartment2FCyndaquilText:
    text "Grooargh!"
    line "Grooooargh!"

    para "CYNDAQUIL is full"
    line "of energy!"
    done
