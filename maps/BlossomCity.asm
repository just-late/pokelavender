BlossomCity_MapScriptHeader:
    def_scene_scripts
    
    def_callbacks

    def_warp_events
	warp_event  9, 27, PLAYERS_HOUSE_2F, 1
	warp_event 12, 15, BLOSSOM_GAME_CORNER, 1

    def_coord_events
;	coord_event 33, 33, 0, BlossomCityAnabelBattleTrigger1
;	coord_event 34, 33, 0, BlossomCityAnabelBattleTrigger2

    def_bg_events
	bg_event 31, 30, BGEVENT_JUMPTEXT, BlossomCitySignText
	bg_event 24, 29, BGEVENT_JUMPTEXT, BlossomCityParkSignText
	bg_event 22, 32, BGEVENT_JUMPTEXT, BlossomCityPressSignText
	bg_event 22, 15, BGEVENT_JUMPTEXT, BlossomCitySouvenirShopSignText
	bg_event 11, 16, BGEVENT_JUMPTEXT, BlossomCityGameCornerSignText
	bg_event  7,  8, BGEVENT_JUMPTEXT, BlossomCityLabSignText
	bg_event 24, 11, BGEVENT_JUMPTEXT, BlossomCityDecorSignText
	bg_event 27, 14, BGEVENT_JUMPTEXT, BlossomCityAcademyMainSignText
	bg_event 32, 12, BGEVENT_JUMPTEXT, BlossomCityAcademyDormsSignText

    db 24 ; object events
	object_event 12, 14, SPRITE_DITTO_TILES, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_DITTO, PERSONTYPE_SCRIPT, 0, 0, -1
	object_event 13, 13, SPRITE_DITTO_TILES, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_DITTO, PERSONTYPE_SCRIPT, 0, 0, -1
	object_event 14, 13, SPRITE_DITTO_TILES, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_DITTO, PERSONTYPE_SCRIPT, 0, 0, -1
	object_event 12, 13, SPRITE_DITTO_TILES_2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_DITTO, PERSONTYPE_SCRIPT, 0, 0, -1
	object_event 37, 41, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
	object_event 37, 41, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
	object_event 19, 42, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
	object_event 19, 42, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, BlossomCitySailboatText, -1
	person_event SPRITE_BIRD_KEEPER, 12,  6, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC1Text, -1
	person_event SPRITE_BURGLAR, 31, 29, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC2Text, -1
	person_event SPRITE_BLACK_BELT, 22, 34, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC3Text, -1
	person_event SPRITE_BEAUTY, 33, 18, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC4Text, -1
	person_event SPRITE_BEACH_GUY, 19,  4, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityNPC5Text, -1
	person_event SPRITE_CUTE_GIRL, 15, 23, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << MORN) | (1 << DAY), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityWaitingGirlText, -1,
	person_event SPRITE_YOUNGSTER, 14, 23, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << MORN) | (1 << DAY), 0, PERSONTYPE_COMMAND, jumptext, BlossomCityOrderingGuyText, -1,
	person_event SPRITE_RECEPTIONIST, 14, 21, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, BlossomCitySouvenirReceptionistScript, -1
	person_event SPRITE_BUG_CATCHER, 15, 25, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << MORN) | (1 << DAY), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityLineNPC1Text, -1
	person_event SPRITE_COWGIRL, 15, 24, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << MORN) | (1 << DAY), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityLineNPC2Text, -1,
	person_event SPRITE_CLERK, 13, 21, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityClerkSoldOutText, -1
	person_event SPRITE_POKEFAN_M, 17, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityCoinCaseGuyText, -1
	person_event SPRITE_MATRON, 28, 27, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityParkNPCText, -1,
	pokemon_event 22, 12, WOBBUFFET, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BLUE, BlossomCityWobbuffetText, -1
	person_event SPRITE_CLERK,  9, 24, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomCityDollSellerText, -1
	object_event 24, 10, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, MAGNEMITE, -1, -1, PAL_NPC_GRAY, PERSONTYPE_COMMAND, jumptext, BlossomCityMagnemiteDollText, -1

BlossomCitySouvenirReceptionistScript:
    pokemart MARTTYPE_BLOSSOM_SOUVENIR, MART_BLOSSOM_SOUVENIR

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

BlossomCityPressSignText:
    text "BLOSSOM PRESS"
    line "H.Q."
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
    cont "sold out of"
    cont "WOBBUFFET CONES."
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

BlossomCityDecorSignText:
    text "NOVELTY"
    line "# DOLLS"

    para "Find our DECOR"
    line "STORE inside"
    cont "the DEPARTMENT"
    cont "STORE!"
    done

BlossomCityDollSellerText:
    text "Do you want"
    line "your own # DOLL"
    cont "like this?"

    para "Check out our"
    line "store inside!"
    done

BlossomCityMagnemiteDollText:
    text "It's a MAGNEMITE"
    line "DOLL!"

    para "Cute!"
    done

BlossomCityNPC1Text:
    text "For a bustling"
    line "city like this is"
    cont "supposed to be,"

    para "not much happens"
    line "around here."

    para "I wish it was"
    line "more lively!"
    done

BlossomCityNPC2Text:
    text "Hi, kid."

    para "I work for the"
    line "BLOSSOM PRESS."

    para "But we aren't"
    line "interested in"
    cont "kids like you."
    done

BlossomCityNPC3Text:
    text "It's hard not to"
    line "waste time at"
    cont "the GAME CORNER,"

    para "but someone like"
    line "me must stay"
    cont "disciplined."
    done

BlossomCityNPC4Text:
    text "…Uughh…"

    para "I came here on a"
    line "a boat, but now"
    cont "I'm all seasick…"
    done

BlossomCityNPC5Text:
    text "I'm supposed to"
    line "be waiting for a"
    cont "date, but it's"
    cont "been forever."

    para "I might give up…"
    done

BlossomCityWaitingGirlText:
    text "…I'm so bored…"

    para "I wish this guy"
    line "would hurry up."

    para "He's such a"
    line "dumpy dude…"
    done

BlossomCityAcademyMainSignText:
    text "BLOSSOM ACADEMY"
    line "MAIN BUILDING"
    done

BlossomCityAcademyDormsSignText:
    text "BLOSSOM ACADEMY"
    line "DORMS"
    done
