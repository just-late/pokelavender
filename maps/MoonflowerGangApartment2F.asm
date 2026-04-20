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

GangApartment2FBossScript:
    faceplayer
    opentext
    checkevent EVENT_GOT_BOAT_PASS_FROM_BLAZE
    iftruefwd .FinishedQuest
    checkevent EVENT_DID_BLAZE_QUEST
    iftruefwd .GotVegetables
    checkevent EVENT_DOING_BLAZE_QUEST
    iftruefwd .Directions
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
    sjumpfwd .Directions
	end

.GotVegetables:
    writetext GanagApartment2FBossDoneText
    checkitem VEGETABLES
    takekeyitem VEGETABLES
    waitbutton
    writetext .Text
    playsound SFX_ITEM
    waitsfx
    writetext GangApartment2FBossRockSmashText
    waitbutton
    verbosegivekeyitem BOAT_PASS
    setevent EVENT_GOT_BOAT_PASS_FROM_BLAZE
    sjumpfwd .FinishedQuest

.Text:
    text "<PLAYER> handed"
    line "over VEGETABLES."
    done

.FinishedQuest:
    writetext GangApartment2FVegetablesText
    waitbutton
    closetext
    end

.Directions:
    writetext GangApartment2FBossEntranceText
    waitbutton
    closetext
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
    text "I have something…"
    line "…uh, important"
    cont "being delivered to"
    cont "me in MARIGOLD"
    cont "PORT."

    para "It's called uh…"
    line "well… it's…"
    cont "a special kind of"
    cont "vegetables."

    para "My buddy brings it"
    line "by for me once a"
    cont "month, but last"
    cont "time, the cops found"
    cont "me and busted me."
    done

GangApartment2FBossQuest2Text:
    text "If I go there"
    line "again, they'll"
    cont "probably lock me"
    cont "up."

    para "That's why I need"
    line "you to go for me!"

    para "Can you?"
    done

GangApartment2FBossShucksText:
    text "Awww, man…"

    para "Shucks!"
    done

GangApartment2FBossGreatText:
    text "Great! You can"
    line "be on your way,"
    cont "then."
    done

GangApartment2FBossEntranceText:
    text "He'll be at the"
    line "dock at the far"
    cont "west end of town."

    para "He only comes by"
    line "in the night, so"
    cont "make sure you"
    cont "come after dark."
    done

GanagApartment2FBossDoneText:
    text "Nice!"
    line "You got 'em?"
    done

GangApartment2FVegetablesText:
    text "Man! Those… uh…"
    line "VEGETABLES are"
    cont "the good stuff!"
    done

GangApartment2FBossRockSmashText:
    text "I promised I'd"
    line "make it worth it"
    cont "for you."

    para "This PASS will"
    line "let you ride for"
    cont "free on any boat"
    cont "you like."

    para "It'll be useful"
    line "if you're going"
    cont "on an adventure!"
    done
