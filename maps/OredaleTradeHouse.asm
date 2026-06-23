OredaleTradeHouse_MapScriptHeader:
    def_scene_scripts
    
    def_callbacks

    def_warp_events
	warp_event  3,  7, OREDALE_CITY, 2
	warp_event  4,  7, OREDALE_CITY, 2

    def_coord_events

    def_bg_events

    db 1 ; object events
	person_event SPRITE_HIKER,  3,  2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, trade, NPC_TRADE_LEO, -1
