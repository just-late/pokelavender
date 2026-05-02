CobbBuilding1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  8, 11, MOONFLOWER_CITY, 6
	warp_event  9, 11, MOONFLOWER_CITY, 6

    def_coord_events

    def_bg_events
	bg_event 15,  2, BGEVENT_JUMPTEXT, CobbBuilding1FStairwellText
	bg_event  7,  2, BGEVENT_JUMPTEXT, CobbBuilding1FFounderText
	bg_event 14,  9, BGEVENT_JUMPTEXT, CobbBuilding1FMachineExampleText

    db 5  ; object events
	person_event SPRITE_RECEPTIONIST,  3,  3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1,  PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, CobbBuilding1FReceptionistText, -1
	person_event SPRITE_GENTLEMAN,  8,  6, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, CobbBuilding1FNPC1Text, -1
	person_event SPRITE_SCIENTIST,  5, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, CobbBuilding1FNPC2Text, -1
	person_event SPRITE_SCIENTIST_F,  5,  9, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, CobbBuilding1FNPC3Text, -1
	person_event SPRITE_OFFICER,  3, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, CobbBuilding1FGuardText, -1

CobbBuilding1FNPC1Text:
    text "I'm waiting for"
    line "an appointment."
    done

CobbBuilding1FNPC2Text:
    text "I just don't know…"
    line "It feels to good"
    cont "to be true…"

    para "… …"

    para "I'll have to think"
    line "this over……"
    done

CobbBuilding1FNPC3Text:
    text "Do you think we"
    line "should sign it?"

    para "… …"

    para "It could make"
    line "our careers!"
    done

CobbBuilding1FReceptionistText:
    text "Welcome to COBB"
    line "CORPORATION."

    para "This is our"
    line "MOONFLOWER CITY"
    cont "BRANCH."
    done

CobbBuilding1FGuardText:
    text "Sorry, but the"
    line "stairwell is"
    cont "off limits to"
    cont "anybody except"
    cont "the employees."

    para "I can't let you"
    line "in without an"
    cont "ID CARD."
    done

CobbBuilding1FFounderText:
    text "Under the picture,"
    line "there's an"
    cont "inscription that"
    cont "reads:"

    para "OUR FOUNDER,"
    line "DR. CLYDE."
    done

CobbBuilding1FStairwellText:
    text "STAIRWELL"
    line "1F - 9F"
    done

CobbBuilding1FMachineExampleText:
    text "There's a"
    line "description of"
    cont "the machine:"

    para "This is an in-"
    line "development model"
    cont "of our latest"
    cont "patent, the WONDER"
    cont "TRADE SYSTEM."

    para "The goal is for"
    line "trainers around the"
    cont "world to be able"
    cont "to trade #MON!"
    done
