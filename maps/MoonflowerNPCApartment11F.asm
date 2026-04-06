MoonflowerNPCApartment11F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 2, 7, MOONFLOWER_CITY, 8
    warp_event 3, 7, MOONFLOWER_CITY, 8
    warp_event 6, 1, MOONFLOWER_NPC_APARTMENT_1_2F, 1

    def_coord_events

    def_bg_events

    db 3 ; object events
    person_event SPRITE_HIKER, 4, 3, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment1FHikerText, -1
    person_event SPRITE_BREEDER, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment1FWomanText, -1
    person_event SPRITE_CHILD, 5, 7, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment1FChildText, -1

MoonflowerApartment1FHikerText:
    text "Do you know what"
    line "an HM is?"

    para "An HM teaches a"
    line "#MON a move"
    cont "that it can use"
    cont "outside of"
    cont "battle."

    para "Usually the moves"
    line "do things like"
    cont "smash rocks."
    done

MoonflowerApartment1FWomanText:
    text "Hello!"

    para "Do you train"
    line "#MON?"

    para "…………"

    para "I thought so!"

    para "Are you doing the"
    line "GYM CHALLENGE?"

    para "…………"

    para "I thought so!"
    done

MoonflowerApartment1FChildText:
    text "Hi!"

    para "What's your"
    line "favorite #MON?"

    para "…………"

    para "Oh cool!"
    
    para "Mine's MAREEEP!"
    done
