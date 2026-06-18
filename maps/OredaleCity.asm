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
	bg_event 17, 48, BGEVENT_JUMPTEXT, OredaleOfficesSignText
	bg_event 35, 52, BGEVENT_JUMPTEXT, OredaleMineSignText

    db 4 ; object events
	person_event SPRITE_SUPER_NERD, 15, 38, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC1Text, -1
	person_event SPRITE_ACE_TRAINER_F, 27, 28, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC2Text, -1
	person_event SPRITE_ENGINEER, 25, 16, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC3Text, -1
	person_event SPRITE_BOARDER, 37, 17, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC4Text, -1 
;	person_event , 16, 31
;	person_event , 16, 30

OredaleCityNPC1Text:
    text "Those guards are"
    line "blocking the main"
    cont "door to the COBB"
    cont "BUILDING,"

    para "but anyone who"
    line "wanted could just"
    cont "sneak through the"
    cont "hole in that"
    cont "fence."
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

OredaleOfficesSignText:
    text "OREDALE OFFICES"

    para "NOW HIRING!"
    done

OredaleMineSignText:
    text "OREDALE MINE"

    para "NOT open to the"
    line "public!"
    done
