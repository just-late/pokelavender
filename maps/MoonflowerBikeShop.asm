MoonflowerBikeShop_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 4, 7, MOONFLOWER_CITY, 4
    warp_event 5, 7, MOONFLOWER_CITY, 4

    def_coord_events
	coord_event  3,  1, 0, MoonflowerBikeTest_Script

    def_bg_events

    db 2 ; object_events
	person_event SPRITE_BIRD_KEEPER,  2,  7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MoonflowerBikeShopNPC1Script, -1
	person_event SPRITE_BIKER,  6,  3, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerBikeShopNPC2Text, -1

    object_const_def
    const MOONFLOWER_BIKE_SHOP_CLERK

MoonflowerBikeTest_Script:
    turnobject MOONFLOWER_BIKE_SHOP_CLERK, UP
    showemote EMOTE_SHOCK, MOONFLOWER_BIKE_SHOP_CLERK, 30
    showtext MoonflowerBikeShopNPC1Text5
    applyonemovement PLAYER, step_down
    turnobject MOONFLOWER_BIKE_SHOP_CLERK, LEFT
    end

MoonflowerBikeShopNPC1Script:
    checkevent EVENT_GOT_BIKE
    iftruefwd .AlreadyGotBike
    checkflag ENGINE_PUNKBADGE
    iftruefwd .GiveBikeScript
    showtext MoonflowerBikeShopNPC1Text1
    end

.GiveBikeScript
    showtext MoonflowerBikeShopNPC1Text1
    showemote EMOTE_SHOCK, MOONFLOWER_BIKE_SHOP_CLERK, 30
    showtext MoonflowerBikeShopNPC1Text2
    verbosegivekeyitem BICYCLE
    showtext MoonflowerBikeShopNPC1Text3
    end

.AlreadyGotBike
    showtext MoonflowerBikeShopNPC1Text4
    end

MoonflowerBikeShopNPC1Text1:
    text "Sorry, kid."

    para "You need to be"
    line "part of a gang if"
    cont "you want a free"
    cont "bike."

    para "Well, I guess you"
    line "could also beat"
    cont "the GYM LEADER"
    cont "here, but…"

    para "Pffft. A squirt"
    line "like you can't beat"
    cont "a GYM LEADER."
    done

MoonflowerBikeShopNPC1Text2:
    text "WHAT?!"

    para "You have a PUNK"
    line "BADGE?"

    para "Well, guess I've"
    line "got no choice."

    para "Here ya go, kid."
    done

MoonflowerBikeShopNPC1Text3:
    text "That ol' thing can"
    line "take ya anywhere."

    para "She's been used,"
    line "though."

    para "I can upgrade her"
    line "when you've got"
    cont "three BADGES."
    done

MoonflowerBikeShopNPC1Text4:
    text "Kid, there's not"
    line "nothin' I can do"
    cont "for you until ya"
    cont "get more BADGES."

    para "You can do it,"
    line "kid!"
    done

MoonflowerBikeShopNPC1Text5:
    text "Sorry, kid!"

    para "Can't let you go"
    line "there by yourself!"

    para "I might lose my"
    line "job!"
    done

MoonflowerBikeShopNPC2Text:
    text "Bwahaha!"
    
    para "What's a kid like"
    line "you doin' here?"

    para "This shop's for"
    line "us gangsta!"
    done
