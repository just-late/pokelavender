MoonflowerGangApartment2F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 3, 1, MOONFLOWER_GANG_APARTMENT_1F, 3

    def_coord_events

    def_bg_events

    db 4 ; object events
    person_event SPRITE_ARCHER,  3,  4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, GangApartment2FBossScript, BLAZE_IN_APARTMENT_2F
	person_event SPRITE_BIKER,  4,  7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GangApartment2FBikerText, -1
	pokemon_event  1,  4, QUILAVA, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_RED, GangApartment2FQuilavaText, -1
	pokemon_event  2,  5, CYNDAQUIL, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_RED, GangApartment2FCyndaquilText, -1

    const_def 1 ; object constants
    const TYPHLOSIONS_BOSS

GangApartment2FBossScript: ; add a side quest here later
    faceplayer
    opentext
    writetext GangApartment2FBossIntroText
    waitbutton
    showemote EMOTE_QUESTION, PLAYER, 30
    writetext GangApartment2FBossQuest1Text
    waitbutton
    closetext
    showemote EMOTE_SAD, TYPHLOSIONS_BOSS, 30
    opentext
    writetext GangApartment2FBossQuest2Text
    yesorno
    iftruefwd .GangApartment2FBossQuestScript
    writetext GangApartment2FBossShucksText
    waitbutton
    closetext
    end

.GangApartment2FBossQuestScript:
    writetext GangApartment2FBossGreatText
    waitbutton
    closetext
    special FadeOutPalettes
    wait 15
    playsound SFX_STRENGTH
    waitsfx
    special Special_ReloadSpritesNoPalettes
    disappear TYPHLOSIONS_BOSS
    special Special_FadeInQuickly
    setevent EVENT_BOULDER_IN_GANG_APARTMENT
    setevent BLAZE_IN_APARTMENT_2F
    clearevent BLAZE_IN_APARTMENT_1F
	end

GangApartment2FBikerText:
    text "ROOOOOOAR!"

    para "Go TYPHLOSIONS!"
    done

GangApartment2FBossText:
    text "I'm the boss of"
    line "this gang."

    para "We're the"
    line "TYPHLOSIONS!"

    para "ROOOOAR!"
    done

GangApartment2FQuilavaText:
    text "Snoorrrzzz…"

    para "It's fast asleep."
    done

GangApartment2FCyndaquilText:
    text "Grooargh!"
    line "Grooooargh!"

    para "CYNDAQUIL is full"
    line "of energy!"
    done

GangApartment2FBossIntroText:
    text "Hey, kid!"

    para "My name's BLAZE."

    para "I'm the boss of"
    line "the TYPHLOSIONS!"

    para "Wait… uhhhh…"

    para "Can you do some-"
    line "thing for me?"
    done

GangApartment2FBossQuest1Text:
    text "BLAZE: Well, it's"
    line "kind of"
    cont "embarrasing…"

    para "So, last week, I"
    line "accidentally"
    cont "flushed my"
    cont "TYPHLOSION in his"
    cont "# BALL down the"
    cont "toilet."

    para "The problem is,"
    line "the sewers belong"
    cont "to a different"
    cont "gang, the CROBATS."

    para "I just can't bear"
    line "the thought of"
    cont "poor TYPHLOSION"
    cont "down there with"
    cont "those rascals!"
    done

GangApartment2FBossQuest2Text:
    text "BLAZE: But if I go"
    line "down there, the"
    cont "CROBATS are gonna"
    cont "eat me alive!"

    para "Because the sewers"
    line "are their turf!"

    para "Chances are,"
    line "though, they won't"
    cont "bother you too"
    cont "much."

    para "Deep down, the"
    line "CROBATS are real"
    cont "softies."

    para "Can you rescue my"
    line "TYPHLOSION?"

    para "I'll make it worth"
    line "your while."
    done

GangApartment2FBossShucksText:
    text "Awww, man…"

    para "Shucks!"
    done

GangApartment2FBossGreatText:
    text "Great! I'll go"
    line "open the entrance."
    done

GangApartment2FBossEntranceText:
    text "I moved the"
    line "boulder downstairs."

    para "Good luck!"
    done
