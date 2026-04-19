MoonflowerIndigoBase1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  2,  9, MOONFLOWER_CITY, 6
	warp_event  3,  9, MOONFLOWER_CITY, 6

    def_coord_events

    def_bg_events
	bg_event 23,  8, BGEVENT_JUMPTEXT, IndigoBase1FComputerText
	bg_event 19,  8, BGEVENT_JUMPTEXT, IndigoBase1FComputerText
	bg_event 15,  8, BGEVENT_JUMPTEXT, IndigoBase1FComputerText
	bg_event 23,  6, BGEVENT_JUMPTEXT, IndigoBase1FComputerText
	bg_event 19,  6, BGEVENT_JUMPTEXT, IndigoBase1FComputerText
	bg_event 15,  6, BGEVENT_JUMPTEXT, IndigoBase1FComputerText
	bg_event 22,  3, BGEVENT_JUMPTEXT, IndigoBase1FMachinePowerSupplyText
	bg_event 17,  3, BGEVENT_JUMPTEXT, IndigoBase1FMachinePowerSupplyText
	bg_event 16,  3, BGEVENT_JUMPTEXT, IndigoBase1FMachinePowerSupplyText
	bg_event  2,  2, BGEVENT_JUMPTEXT, IndigoBase1FReceptionistText
	bg_event 19,  4, BGEVENT_JUMPTEXT, IndigoBase1FMachineText
	bg_event 13,  4, BGEVENT_JUMPTEXT, IndigoBase1FMachineText
	bg_event  5,  0, BGEVENT_JUMPTEXT, IndigoBaseFounderText

    db 9  ; object events
	person_event SPRITE_RECEPTIONIST, 1, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1,  PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, IndigoBase1FReceptionistText, -1
	person_event SPRITE_GENTLEMAN, 4, 7, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, IndigoBase1FGentlemanText, -1
	person_event SPRITE_SCIENTIST,  9, 22, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, IndigoBase1FScientistIgnoresYouText, -1
	person_event SPRITE_SCIENTIST,  4, 15, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, IndigoBase1FMachineBuilder1Text, -1
	person_event SPRITE_SCIENTIST_F,  3, 11, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, IndigoBase1FMachineBuilder2Text, -1
	person_event SPRITE_SCIENTIST_F,  7, 18, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, IndigoBase1FScientistFIgnoresYouText,-1
	person_event SPRITE_OFFICER,  5, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, IndigoBase1FGuardText, -1
	person_event SPRITE_SCIENTIST,  7, 14, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, IndigoBase1FScientistIgnoresYouText, -1
	person_event SPRITE_ROCKET_GIRL, 1, 17, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer,  IndigoBase1FGruntText, -1

IndigoBase1FScientistIgnoresYouText:
    text "…………"
    line "…………"

    para "He's ignoring"
    line "you."
    done

IndigoBase1FScientistFIgnoresYouText:
    text "…………"
    line "…………"

    para "She's ignoring"
    line "you."
    done

IndigoBase1FComputerText:
    text "It's covered in"
    line "letters and"
    cont "numbers."
    done

IndigoBase1FMachinePowerSupplyText:
    text "Wow!"

    para "It's a huge"
    line "power supply!"
    done

IndigoBase1FMachineText:
    text "It's a huge"
    line "machine."

    para "…………"

    para "I wonder what"
    line "it does?"
    done

IndigoBase1FReceptionistText:
    text "Welcome to #"
    line "INDUSTRIES."

    para "This is our"
    line "MOONFLOWER CITY"
    cont "BRANCH."
    done

IndigoBase1FGentlemanText:
    text "I'm waiting for"
    line "an appointment."
    done

IndigoBase1FGuardText:
    text "I'm here to make"
    line "sure there's no"
    cont "disorderly"
    cont "conduct!"

    para "Be good!"
    done

IndigoBase1FMachineBuilder2Text:
    text "I'm helping"
    line "build this machine!"

    para "Isn't it great?"
    done

IndigoBase1FMachineBuilder1Text:
    text "There's a problem"
    line "with this"
    cont "machine."

    para "It's hard to fix!"
    done

IndigoBase1FGruntText:
    text "What are you"
    line "doing here?!"
    
    para "Scram!"
    done

IndigoBaseFounderText:
    text "Under the picture,"
    line "there's an"
    cont "inscription that"
    cont "reads:"

    para "OUR FOUNDER,"
    line "DR. LAVENTON SR."
    done
