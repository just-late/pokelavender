GraniteInn1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  7, 11, PLAYERS_HOUSE_2F, 1
	warp_event  8, 11, PLAYERS_HOUSE_2F, 1

    def_coord_events
;	coord_event  7,  6
;	coord_event  8,  6

    def_bg_events
;	bg_event  3,  1
;	bg_event  9,  1
;	bg_event 11,  1
;	bg_event 12,  7
;	bg_event 13,  7
;	bg_event 16,  7
;	bg_event 17,  7

    db 4 ; object events
	person_event SPRITE_AGATHA,  8,  4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, GraniteInnkeeperScript, -1
	person_event SPRITE_RICH_BOY,  8,  6, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, EVENT_INDIGO_IN_GRANITE_INN
	person_event SPRITE_GENTLEMAN,  8, 12, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GraniteInn1FGentlemanText, -1 
	person_event SPRITE_CLERK, 3, 13, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GraniteInn1FJanitorText, -1

GraniteInnkeeperScript:
    end

GraniteInn1FGentlemanText:
    text "The breakfast here"
    line "is nice, but I"
    cont "would rather have"
    cont "something home-"
    cont "cooked."
    done

GraniteInn1FJanitorText:
    text "Oh, man…"

    para "I just got a"
    line "call that there's"
    cont "another BERRY"
    cont "JUICE stain in"
    cont "ROOM 3!"

    para "This job is…"
    line "Whatever."
    done
