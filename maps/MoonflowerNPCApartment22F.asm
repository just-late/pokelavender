MoonflowerNPCApartment22F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  5,  1, MOONFLOWER_NPC_APARTMENT_1_1F, 3

    def_coord_events

    def_bg_events

    db 1 ; object events
    person_event SPRITE_POKEFAN_M, 4, 3, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerApartment2FPokeFanMText, -1
    
MoonflowerApartment2FPokeFanMText:
    text "That girl who"
    line "lives downstairs…"

    para "I can't stand her!"

    para "She and her"
    line "TAUROS put the MOO"
    cont "into MOONFLOWER!"
    done
