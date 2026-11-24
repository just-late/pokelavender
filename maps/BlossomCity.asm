BlossomCity_MapScriptHeader:
    def_scene_scripts
    
    def_callbacks

    def_warp_events
	warp_event 24,  5, PLAYERS_HOUSE_2F, 1
	warp_event  6, 25, BLOSSOM_DEPT_STORE_ROOF, 1

    def_coord_events

    def_bg_events
	bg_event 20, 11, BGEVENT_JUMPTEXT, BlossomCitySignText
	bg_event  1, 15, BGEVENT_JUMPTEXT, BlossomCityLabSignText

    db 4 ; object events
	person_event SPRITE_BIRD_KEEPER,  4, 10, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC1Text, -1
	person_event SPRITE_YOUNGSTER,  6, 14, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC2Text, -1
	person_event SPRITE_POKEFAN_F, 11, 23, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityParkNPCText, -1
	person_event SPRITE_CHILD, 13, 25, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC3Text, -1

BlossomCitySouvenirReceptionistScript:
    pokemart MARTTYPE_BLOSSOM_SOUVENIR, MART_BLOSSOM_SOUVENIR

BlossomCitySignText:
    text "BLOSSOM CITY"

    para "A well-kept city"
    line "that goes into"
    cont "full bloom at"
    cont "night."
    done

BlossomCityLabSignText:
    text "#MON RESEARCH"
    line "LAB"
    done

BlossomCitySailboatText:
    text "The sailboat is"
    line "shiny and new!"
    done

BlossomCityParkNPCText:
    text "Can you believe"
    line "this is the"
    cont "only park in the"
    cont "city?"

    para "It drives me nuts!"

    para "In a city so big,"
    line "there really ought"
    cont "to be more green"
    cont "spaces."
    done

BlossomCityNPC1Text:
    text "PLACEHOLDER"
    done

BlossomCityNPC3Text:
BlossomCityNPC2Text:
    text "PLACEHOLDER"
    done
