MoonflowerNPCApartment12F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 5, 1, MOONFLOWER_NPC_APARTMENT_1_1F, 3

    def_coord_events

    def_bg_events
    bg_event 7, 3, BGEVENT_JUMPTEXT, MoonflowerApartment2FRadioMusicText

    db 2 ; object_events
	person_event SPRITE_BATTLE_GIRL,  4,  6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, MoonflowerApartment2FLassText, -1
	person_event SPRITE_ROCKER,  4,  9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment2FRockerText, -1

MoonflowerApartment2FLassText:
    text "Do you mind?"

    para "I'm trying to"
    line "watch TV."
    done

MoonflowerApartment2FRockerText:
    text "My band's song"
    line "is gonna play on"
    cont "the radio!"

    para "I'm so nervous!"
    done

MoonflowerApartment2FRadioMusicText:
    text "It's playing hard"
    line "rock music."
    done
