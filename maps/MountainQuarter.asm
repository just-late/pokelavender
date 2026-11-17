MountainQuarter_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 15, 39, ACADEMY_POKECENTER, 4
	warp_event 16, 39, ACADEMY_POKECENTER, 4

    def_coord_events

    def_bg_events

    def_object_events
	object_event 20,  5, SPRITE_CAMPFIRE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, FireCracklingText, -1 

FireCracklingText:
    text "The campfire is"
    line "crackling merrily."
    done
