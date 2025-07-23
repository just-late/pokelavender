Route2MoonflowerGate_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  4,  0, ROUTE_2, 3
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, MOONFLOWER_CITY, 5
	warp_event  5,  7, MOONFLOWER_CITY, 5

    def_coord_events

    def_bg_events

    db 1 ; object events
    person_event SPRITE_OFFICER,  4,  0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, Route2MoonflowerGate_NPC1Text, -1

Route2MoonflowerGate_NPC1Text:
    text "Hello!"

    para "Don't forget to"
    line "stay safe."
    done
