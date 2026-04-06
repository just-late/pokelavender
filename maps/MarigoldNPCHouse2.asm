MarigoldNPCHouse2_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 3, 7, MARIGOLD_PORT, 4
	warp_event 4, 7, MARIGOLD_PORT, 4

    def_coord_events

    def_bg_events

    db 1 ; object events
	person_event SPRITE_GENTLEMAN,  3,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MarigoldNameRaterScript, -1

MarigoldNameRaterScript:
    faceplayer
    opentext
    special SpecialNameRater
    waitendtext
