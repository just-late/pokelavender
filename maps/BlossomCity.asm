BlossomCity_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  9, 27, PLAYERS_HOUSE_2F, 1

    def_coord_events
;	coord_event 33, 33, 0, BlossomCityAnabelBattleTrigger1
;	coord_event 34, 33, 0, BlossomCityAnabelBattleTrigger2

    def_bg_events
	bg_event 31, 30, BGEVENT_JUMPTEXT, BlossomCitySignText
	bg_event 24, 29, BGEVENT_JUMPTEXT, BlossomCityParkSignText
	bg_event 22, 32, BGEVENT_JUMPTEXT, BlossomCityApartmentSignText
	bg_event 22, 15, BGEVENT_JUMPTEXT, BlossomCitySouvenirShopSignText
	bg_event 11, 16, BGEVENT_JUMPTEXT, BlossomCityGameCornerSignText
	bg_event  7,  8, BGEVENT_JUMPTEXT, BlossomCityLabSignText

    db 20 ; object events
	object_event 37, 41, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
	object_event 37, 41, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
	object_event 19, 42, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
	object_event 19, 42, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
;	person_event SPRITE_SAILOR, 41, 33,
;	person_event SPRITE_SAILOR, 43, 34,
;	person_event SPRITE_SAILOR, 40, 23,
;	person_event SPRITE_SAILOR, 38, 24,
;	person_event SPRITE_SAILOR, 37, 13,
;	person_event SPRITE_SAILOR, 35, 14,
;	person_event SPRITE_SAILOR, 40, 12,
;	person_event SPRITE_SAILOR, 39, 14,
	person_event SPRITE_CUTE_GIRL, 15, 23, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_SCRIPT, 0, 0, -1,
	person_event SPRITE_YOUNGSTER, 14, 23, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptext, BlossomCityOrderingGuyText, -1,
	person_event SPRITE_RECEPTIONIST, 14, 21, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, -1
	person_event SPRITE_BUG_CATCHER, 15, 25, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityLineNPC1Text, -1
	person_event SPRITE_COWGIRL, 15, 24, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityLineNPC2Text, -1,
	person_event SPRITE_CLERK, 13, 21, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityClerkSoldOutText, -1
	person_event SPRITE_POKEFAN_M, 17, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityCoinCaseGuyText, -1
	person_event SPRITE_MATRON, 28, 27, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityParkNPCText, -1,
	pokemon_event 22, 12, WOBBUFFET, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BLUE, BlossomCityWobbuffetText, -1

BlossomCitySignText:
    text "BLOSSOM CITY"

    para "A well-kept city"
    line "that goes into"
    cont "full bloom at"
    cont "night."
    done

BlossomCityParkSignText:
    text "BLOSSOM CITY"
    line "PARK"
    done

BlossomCityApartmentSignText:
    text "BLOSSOM APARTMENTS"
    done

BlossomCitySouvenirShopSignText:
    text "SOUVENIR SHOP"

    para "Get the famous"
    line "WOBBUFFET CONE"
    cont "right here!"
    done

BlossomCityGameCornerSignText:
    text "BLUE DITTO"
    line "GAME CORNER"

    para "Play games to"
    line "win EPIC prizes!"

    para "OPEN 24/7"
    done

BlossomCityLabSignText:
    text "#MON RESEARCH"
    line "LAB"
    done

BlossomCitySailboatText:
    text "The sailboat is"
    line "shiny and new!"
    done

BlossomCityOrderingGuyText:
    text "……"

    para "You got that?"

    para "Great. Then I"
    line "want a DELUXE size"
    cont "with SITRUS BERRY"
    cont "juice drizzled"
    cont "on top,"

    para "and a WOBBUFFET"
    line "SPECIAL with…"

    para "It seems like"
    line "he'll never be"
    cont "done ordering!"
    done

BlossomCityLineNPC1Text:
    text "UGH!"

    para "I wish that guy"
    line "up front would"
    cont "hurry up!"

    para "He's been going"
    line "for the past"
    cont "HOUR!"
    done

BlossomCityLineNPC2Text:
    text "Howdy!"

    para "Any idea when"
    line "these folks are"
    cont "gonna be done?"
    done

BlossomCityClerkSoldOutText:
    text "Sorry, we're"
    line "completely"
    cont "sold out."
    done

BlossomCityCoinCaseGuyText:
    text "MAN! That BLUE"
    line "DITTO place is"
    cont "totally rigged!"

    para "I got so mad,"
    line "I threw my"
    cont "COIN CASE down"
    cont "by the docks!"
    done

BlossomCityParkNPCText:
    text "Can you believe"
    line "this is the"
    cont "only park in the"
    cont "city?"

    para "It drives me"
    line "nuts!"
    done

BlossomCityWobbuffetText:
    text "Wobbu! Wobbu!"
    done
