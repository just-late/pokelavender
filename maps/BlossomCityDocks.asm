BlossomCityDocks_MapScriptHeader:
    def_scene_scripts
    
    def_callbacks

    def_warp_events

    def_coord_events

    def_bg_events

    db 12 ; object events
	person_event SPRITE_YOUNGSTER,  0, 13, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDocksNPC1Text, -1
	person_event SPRITE_POKEFAN_F,  3, 10, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDocksNPC2Text, -1
	person_event SPRITE_BIKER,  2, 12, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDocksNPC3Text, -1
	person_event SPRITE_CUTE_GIRL,  4, 21, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, 1, 0, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDocksNPC4Text, -1
	person_event SPRITE_SAILOR, 12, 16, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, (1 << NITE), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDocksSailor1Text, -1
	person_event SPRITE_SAILOR, 14, 14, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << NITE), PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDocksSailor2Text, -1
	person_event SPRITE_BLACK_BELT, 12,  8, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDocksNPC5Text, -1
	person_event SPRITE_FISHER, 10, 23, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, (1 << MORN) | (1 << DAY), 0, PERSONTYPE_COMMAND, jumptext, BlossomCityDocksNPC6Text, -1
	pokemon_event 10,  6, MACHOKE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_GRAY, BlossomCityDocksMachokeText, -1
	pokemon_event 15, 11, MACHOP, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_GRAY, BlossomCityDocksMachopText, -1
	object_event 10, 13, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCityDocksSailboatText, -1
	object_event 10, 13, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCityDocksSailboatText, -1

BlossomCityDocksNPC1Text:
BlossomCityDocksNPC2Text:
BlossomCityDocksNPC3Text:
BlossomCityDocksNPC4Text:
BlossomCityDocksNPC5Text:
    text "PLACEHOLDER"
    done

BlossomCityDocksNPC6Text:
    text "Can't you see"
    line "I'm busy here?"
    done

BlossomCityDocksSailor1Text:
    text "Two major shipping"
    line "companies of ATUVA"
    cont "use this port."

    para "And of course, the"
    line "army's boats come"
    cont "in and out here."
    done

BlossomCityDocksSailor2Text:
    text "The boss works us"
    line "down to the bone."

    para "I'm just trying"
    line "to feed my family!"
    done

BlossomCityDocksMachokeText:
    text "Graogh…"

    para "It sounds tired."
    done

BlossomCityDocksMachopText:
    text "Groagh! Groagh!"

    para "It's raring to go!"
    done

BlossomCityDocksSailboatText:
    text "It's a weathered"
    line "sailboat."
    done