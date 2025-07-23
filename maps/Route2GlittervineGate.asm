Route2GlittervineGate_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event  0,  4, GLITTERVINE_TOWN, 4
    warp_event  0,  5, GLITTERVINE_TOWN, 5
    warp_event  9,  4, ROUTE_2, 1
    warp_event  9,  5, ROUTE_2, 2

    def_coord_events

    def_bg_events

    db 1 ; object_events
    person_event SPRITE_OFFICER,  2,  5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, Route2GlittervineGateNPC1Text, -1 

Route2GlittervineGateNPC1Text:
    text "Hey, kid."

    para "Out there's ROUTE"
    line "2."

    para "There's lots of"
    line "trainers looking"
    cont "for a fight."
    done
