JungleQuarter_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  6, 29, PLAYERS_HOUSE_2F, 1
	warp_event  7, 29, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event 22,  9, BGEVENT_JUMPTEXT, JungleQuarterHugeWaterfallText
	bg_event 23,  9, BGEVENT_JUMPTEXT, JungleQuarterHugeWaterfallText
	bg_event 24,  9, BGEVENT_JUMPTEXT, JungleQuarterHugeWaterfallText
	bg_event 25,  9, BGEVENT_JUMPTEXT, JungleQuarterHugeWaterfallText

    db 1 ; object events

JungleQuarterHugeWaterfallText:
    text "Wow! It's a huge"
    line "waterfall!"
    done
