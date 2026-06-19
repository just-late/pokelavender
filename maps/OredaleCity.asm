OredaleCity_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 13, 23, PLAYERS_HOUSE_2F, 8

    def_coord_events

    def_bg_events
	bg_event  9, 14, BGEVENT_JUMPTEXT, OredaleMuseumSignText
	bg_event 27, 16, BGEVENT_JUMPTEXT, CobbMainBuildingSignText
	bg_event 20, 35, BGEVENT_JUMPTEXT, OredaleSkiShopSignText
	bg_event 17, 48, BGEVENT_JUMPTEXT, OredaleGymSignText
	bg_event 35, 52, BGEVENT_JUMPTEXT, OredaleMineSignText
	bg_event 11, 38, BGEVENT_JUMPTEXT, OredaleCitySignText

    db 14 ; object events
	person_event SPRITE_SUPER_NERD, 15, 38, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC1Text, -1
	person_event SPRITE_ACE_TRAINER_F, 27, 28, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC2Text, -1
	person_event SPRITE_ENGINEER, 25, 17, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC3Text, -1
	person_event SPRITE_BOARDER, 37, 17, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC4Text, -1
	person_event SPRITE_OFFICER, 16, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCobbBuildingGuard1, -1
	person_event SPRITE_OFFICER, 16, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCobbBuildingGuard2, -1
	person_event SPRITE_BOARDER, 22, 10, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC5Text, -1
	person_event SPRITE_ENGINEER, 49, 29, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC6Text, -1
	person_event SPRITE_OFFICER, 52, 36, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleMineGuard, -1
	person_event SPRITE_ACE_TRAINER_F, 49, 21, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC7Text, -1
	person_event SPRITE_FAT_GUY, 17, 35, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC8Text, -1
	person_event SPRITE_SKIER, 35, 23, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC9Text, -1
	keyitemball_event 36, 11, CARD_KEY, EVENT_OREDALE_CITY_COBB_ID

OredaleCityNPC1Text:
    text "U<PAUSE>u<PAUSE>ugh!"

    para "I'll DIE if I"
    line "can't figure out"
    cont "what item is on"
    cont "the other side of"
    cont "that fence."
    done

OredaleCityNPC2Text:
    text "H-<PAUSE>Hey there!"

    para "H-<PAUSE>H-<PAUSE>Huh?"
    line "Why a-<PAUSE>am I out in"
    cont "the c-<PAUSE>c-<PAUSE>cold?" 

    para "I n-<PAUSE>n-<PAUSE>need fresh"
    line "a-<PAUSE>air!"
    done

OredaleCityNPC3Text:
    text "I'm on break from"
    line "working in the"
    cont "mine."

    para "Even with the new"
    line "machines we got,"
    cont "it's still hard"
    cont "work."
    done

OredaleCityNPC4Text:
    text "I got my snowboard"
    line "at the SKI SHOP."

    para "After I tried it,"
    line "I came back in to"
    cont "tell them…"

    para "They ought to"
    line "stick to skis!"
    done

OredaleCityNPC5Text:
    text "These days, both"
    line "the COBB BUILDING"
    cont "and the MINE are"
    cont "always closed."

    para "Just a few months"
    line "ago, they offered"
    cont "tours daily for"
    cont "visitors!"

    para "I wonder what's"
    line "changed…"
    done

OredaleCityNPC6Text:
    text "I work on the"
    line "power generators"
    cont "for the mine."

    para "We have a lot of"
    line "big machines,"

    para "so we have to have"
    line "a good source of"
    cont "energy for 'em."
    done

OredaleCobbBuildingGuard1:
    text "Sorry, kid."

    para "The COBB BUILDING's"
    line "not open to the"
    cont "public right now."

    para "I can only let"
    line "you in if you have"
    cont "a COBB ID."
    done

OredaleCobbBuildingGuard2:
    text "Please don't"
    line "loiter around."

    para "I can't let folks"
    line "who don't work at"
    cont "COBB CORP. in to"
    cont "the building."
    done

OredaleMineGuard:
    text "Sorry, kid."

    para "The OREDALE MINE"
    line "is closed to the"
    cont "public right now."

    para "It says it on the"
    line "sign! Buzz off!"
    done

OredaleCityNPC7Text:
    text "Believe it or"
    line "not, the OREDALE"
    cont "GYM specializes"
    cont "in BUG-TYPES!"

    para "It's not what"
    line "you'd expect for"
    cont "a gym way out in"
    cont "the cold."
    done

OredaleCityNPC8Text:
    text "I've lost my"
    line "COBB ID!"

    para "Now they won't"
    line "let me into"
    cont "the building!"
    
    para "How am I going"
    line "to get to work"
    cont "now?"
    done

OredaleCityNPC9Text:
    text "The SKI SHOP is"
    line "great!"

    para "It's so cozy"
    line "inside!"

    para "…<PAUSE>…<PAUSE>What?"

    para "Why am I outside?"
    line "Uhh…<PAUSE>…"

    para "Good question!"
    done

OredaleMuseumSignText:
    text "OREDALE MUSEUM"

    para "Learn about the"
    line "ancient past of"
    cont "the ATUVA REGION!"
    done

CobbMainBuildingSignText:
    text "COBB CORP."
    line "MAIN BUILDING"

    para "The heart of good"
    line "quality industry!"
    done

OredaleSkiShopSignText:
    text "OREDALE SKI SHOP"
    
    para "Get your quality"
    line "winter sports"
    cont "equipment here!"
    done

OredaleGymSignText:
    text "OREDALE GYM"

;   para "LEADER:"
;   line "BUG TRAINER"
    done

OredaleMineSignText:
    text "OREDALE MINE"

    para "NOT open to the"
    line "public!"
    done

OredaleCitySignText:
    text "OREDALE CITY"

    para "A home to industry"
    line "and prosperity."
    done
