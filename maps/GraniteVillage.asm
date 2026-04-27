GraniteVillage_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 21, 13, PLAYERS_HOUSE_2F, 1

    def_coord_events
	coord_event 10, 21, 0, GraniteVillageGreetingTrigger1
	coord_event 11, 21, 0, GraniteVillageGreetingTrigger2
	coord_event 19, 14, 1, GraniteVillageInnCutsceneTrigger1
	coord_event 19, 15, 1, GraniteVillageInnCutsceneTrigger2
	coord_event 19, 16, 1, GraniteVillageInnCutsceneTrigger3
	coord_event 19, 17, 1, GraniteVillageInnCutsceneTrigger4

    def_bg_events
	bg_event  9, 20, BGEVENT_READ, GraniteVillageStatueScript
	bg_event 12, 20, BGEVENT_READ, GraniteVillageStatueScript
	bg_event 10, 12, BGEVENT_JUMPTEXT, GraniteVillageSignText
	bg_event 22, 13, BGEVENT_JUMPTEXT, GraniteVillageInnSignText
	bg_event 23, 13, BGEVENT_JUMPTEXT, GraniteVillageInnSignText

    db 6 ; object_events
	person_event SPRITE_RIVAL, 16, 14, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, 0, EVENT_RIVAL_IN_GRANITE_VILLAGE
	person_event SPRITE_CUTE_GIRL, 15, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, EVENT_GRANITE_VILLAGE_GREET_SCENE
	person_event SPRITE_GRANNY,  8,  9, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, -1
	person_event SPRITE_GRAMPS, 15, 35, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, 0, -1
	person_event SPRITE_HIKER, 10, 25, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, -1
	person_event SPRITE_DRAGON_TAMER,  6, 12, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, 0, -1

    const_def 1 ; object constants
    const GRANITE_VILLAGE_RIVAL
    const GRANITE_VILLAGE_GREET_GIRL

GraniteVillageGreetingTrigger1:
    end

GraniteVillageGreetingTrigger2:
    end

GraniteVillageInnCutsceneTrigger1:
    end

GraniteVillageInnCutsceneTrigger2:
    end

GraniteVillageInnCutsceneTrigger3:
    end

GraniteVillageInnCutsceneTrigger4:
    end

GraniteVillageStatueScript:
    opentext
    writetext GraniteVillageStatueText1
    waitbutton
    yesorno
    iffalsefwd .End
    writetext GraniteVillageStatueText2
    waitbutton
.End:
    closetext
    end

GraniteVillageStatueText1:
    text "It's a statue of"
    line "a fierce #MON."

    para "There's a faded"
    line "plaque underneath."


    para "Read it?"
    done

GraniteVillageStatueText2:
    text "The plaque reads:"

    para "In ancient times…"
    line "…was constructed…"

    para "…in their slumber…"
    line "……sealed for…"

    para "…awoke……"
    line "……shaped the land…"

    para "Sought by………"
    line "……returned to"
    cont "slumber, only to…"

    para "…again…… time for…"
    line "……years…"

    para "The…… shaper of…"
    line "awaits a worthy………"

    para "There's some more,"
    line "but it's completely"
    cont "illegible."
    done

GraniteVillageSignText:
    text "GRANITE VILLAGE"

    para "A vilalge carved"
    line "out of the"
    cont "mountains by humans"
    cont "and #MON."
    done

GraniteVillageInnSignText:
    text "VILLAGE INN"
    
    para "Come rest your"
    line "weary head!"

    para "Hot beverages on"
    line "the house!"
    done
