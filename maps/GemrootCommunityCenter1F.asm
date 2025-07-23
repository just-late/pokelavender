GemrootCommunityCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 5, 11, GEMROOT_TOWN, 5  ; 1
	warp_event 6, 11, GEMROOT_TOWN, 5  ; 2

    def_coord_events
 ;	coord_event 5, 4, 0, PlayerWalksToElder1
 ;	coord_event 6, 4, 0, PlayerWalksToElder2

    def_bg_events
	bg_event  0, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  1, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  2, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  3, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  9, 8, BGEVENT_JUMPTEXT, GemrootAncientMuralText
	bg_event 10, 8, BGEVENT_JUMPTEXT, GemrootAncientMuralText
	bg_event  8, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event  9, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 10, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 11, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText

    def_object_events
 ;  object_event 7, 1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, GemrootElderScript, -1

    object_const_def

GemrootCommunityFoodText:
    text "It's food available"
    line "for the community."
    done

GemrootAncientMuralText:
    text "It's a mural"
    line "depicting two"

    para "ancient dragon"
    line "#mon."
    done

GemrootHistoryBooksText:
    text "It's full of"
    line "history books."
    done
