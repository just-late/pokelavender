MarigoldGym_MapScriptHeader:
    def_scene_scripts
    scene_script MarigoldGymNoop
    
    def_callbacks

    def_warp_events
	warp_event 12, 19, MARIGOLD_PORT, 6
	warp_event 13, 19, MARIGOLD_PORT, 6
	warp_event  3,  3, MARIGOLD_GYM_VENT, 1
	warp_event 13,  5, MARIGOLD_PORT, 1 ; falling from vent
	warp_event  7, 11, MARIGOLD_PORT, 1 ; falling from vent
	warp_event 12, 15, MARIGOLD_PORT, 1 ; falling from vent
	warp_event 23, 16, MARIGOLD_PORT, 1 ; falling from vent


    def_coord_events
	
    def_bg_events

    db 4 ; object events
	person_event SPRITE_WALKER,  2, 13, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MarigoldGymWalkerScript, EVENT_BEAT_WALKER
	person_event SPRITE_BLACK_BELT, 16,  2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBlackbeltLao, -1
	person_event SPRITE_BLACK_BELT, 16, 27, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBlackbeltAnder, -1
	person_event SPRITE_GYM_GUY, 16, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MarigoldGymGuyScript, -1

    object_const_def
    const MARIGOLD_GYM_WALKER

MarigoldGymNoop:
    end

MarigoldGymUnlockStairsScript:
    changeblock 4, 4, $1
    playsound SFX_STRENGTH
    waitsfx
    wait 10
    end

MarigoldGymWalkerScript:
    faceplayer
    opentext
    checkflag ENGINE_MACHINEBADGE
    iftruefwd .FightDone
    writetext WalkerIntro
    waitbutton
    closetext
    winlosstext WalkerWinLossText, 0
    loadtrainer WALKER, 1
    startbattle
    reloadmapafterbattle
    setevent EVENT_BEAT_WALKER
    opentext
    writetext ReceivedMachineBadgeText
    playsound SFX_GET_BADGE
    waitsfx
    setflag ENGINE_MACHINEBADGE
.FightDone:
    checkevent EVENT_GOT_TM01_DYNAMICPUNCH
    iftrue_jumpopenedtext WalkerFightDoneText
    setevent EVENT_BEAT_BLACKBELT_LAO
    setevent EVENT_BEAT_BLACKBELT_ANDER
    writetext WalkerMachineBadgeText
    promptbutton
    verbosegivetmhm TM_DYNAMICPUNCH
    setevent EVENT_GOT_TM01_DYNAMICPUNCH
    writetext WalkerTMDynamicPunchText
    waitbutton
    writetext WalkerFightDoneText
    waitbutton
    closetext
    applyonemovement MARIGOLD_GYM_WALKER, step_dig
    disappear MARIGOLD_GYM_WALKER
    end

MarigoldGymGuyScript:
    faceplayer
    opentext
    checkflag ENGINE_MACHINEBADGE
    iftrue_jumpopenedtext MarigoldGymGuyWowText
    writetext MarigoldGymGuyMainText
    waitbutton
    closetext
    end

GenericTrainerBlackbeltLao:
    generictrainer BLACKBELT_T, LAO, EVENT_BEAT_BLACKBELT_LAO, BlackbeltLaoSeenText, BlackbeltLaoBeatenText

    text "Woah!"
    done

GenericTrainerBlackbeltAnder:
    generictrainer BLACKBELT_T, ANDER, EVENT_BEAT_BLACKBELT_ANDER, BlackbeltAnderSeenText, BlackbeltAnderBeatenText

    text "A fair fight!"
    done

BlackbeltLaoSeenText:
    text "I will teach you"
    line "what I've learned!"
    done

BlackbeltLaoBeatenText:
    text "You fought me,"
    line "and I lost."

    para "I still have much"
    line "to learn."
    done

BlackbeltAnderSeenText:
    text "We shall fight"
    line "each other with"
    cont "virtue!"
    done

BlackbeltAnderBeatenText:
    text "Your virtue is"
    line "stronger than mine,"
    cont "and thus your"
    cont "#MON are more"
    cont "powerful."
    done

WalkerIntro:
    text "So… you made it!"

    para "My name's WALKER."
    line "I learned the way"
    cont "of the fist when I"
    cont "was very young."

    para "After years, I"
    line "learned a new way"
    cont "of life as a"
    cont "sailor."

    para "But, in my old"
    line "age, my eyesight"
    cont "is no longer sharp"
    cont "enough to navigate"
    cont "the oceans."

    para "However, my 70-"
    line "years' worth of"
    cont "strength remains"
    cont "with me."

    para "……Well?"

    para "Are you ready to"
    line "learn the way of"
    cont "the fist?!"
    done

WalkerWinLossText:
    text "WHAT?!"

    para "How…"

    para "My strength is"
    line "leaving me after"
    cont "all!"
    done

ReceivedMachineBadgeText:
    text "<PLAYER> received"
    line "the FIST BADGE."
    done

WalkerMachineBadgeText:
    text "………"

    para "With that badge,"
    line "you'll be able"
    cont "to command"
    cont "#MON, even traded"
    cont "ones, up to <LV>30."
    
    para "#MON that know"
    line "CUT will be able to"
    cont "use it outside of"
    cont "battle."

    para "………"

    para "I won't be needing"
    line "this anymore, so"
    cont "you can have it."
    done

WalkerTMDynamicPunchText:
    text "TM01 contains"
    line "DYNAMIC PUNCH."

    para "It's a powerful"
    line "move, but it doesn't"
    cont "always hit."

    para "When it does hit,"
    line "it is sure to"
    cont "cause confusion!"
    done

WalkerFightDoneText:
    text "I am going to"
    line "leave this GYM!"

    para "I will find a"
    line "secret place to"
    cont "train and regain"
    cont "my old strength!"

    para "If you ever find"
    line "me, we can have"
    cont "a rematch!"
    done

MarigoldGymGuyMainText:
    text "WALKER uses"
    line "FIGHTING-TYPE"
    cont "#MON with"
    cont "powerful physical"
    cont "strength."

    para "But if you hit"
    line "them with a"
    cont "PSYCHIC #MON,"
    cont "It'll knock 'em"
    cont "out good."

    para "Just remember:"
    line "those tiles on"
    cont "the floor make"
    cont "you can't leave"
    cont "once you go in!"

    para "The stairs up to"
    line "WALKER's platform"
    cont "won't open until"
    cont "you beat all the"
    cont "trainers."
    done

MarigoldGymGuyWowText:
    text "Wow! You beat him!"

    para "If you can keep"
    line "it up, you'll be"
    cont "the champ in no"
    cont "time at all!"
    done
