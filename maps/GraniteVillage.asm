GraniteVillage_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 21, 13, PLAYERS_HOUSE_2F, 1

    def_coord_events
	coord_event 11, 21, 0, GraniteVillageIndigoBlockerTrigger
	coord_event 19, 14, 1, GraniteVillageInnCutsceneTrigger1
	coord_event 19, 15, 1, GraniteVillageInnCutsceneTrigger2
	coord_event 20, 16, 1, GraniteVillageInnCutsceneTrigger3
	coord_event 21, 16, 1, GraniteVillageInnCutsceneTrigger4

    def_bg_events
	bg_event  9, 20, BGEVENT_READ, GraniteVillageStatueScript
	bg_event 12, 20, BGEVENT_READ, GraniteVillageStatueScript
	bg_event  5, 14, BGEVENT_JUMPTEXT, GraniteVillageHanasHouseSignText
	bg_event 12, 16, BGEVENT_JUMPTEXT, GraniteVillagePinkStoneText
	bg_event 13, 16, BGEVENT_JUMPTEXT, GraniteVillagePinkStoneText
	bg_event 12, 17, BGEVENT_JUMPTEXT, GraniteVillagePinkStoneText
	bg_event 13, 17, BGEVENT_JUMPTEXT, GraniteVillagePinkStoneText
	bg_event 10, 12, BGEVENT_JUMPTEXT, GraniteVillageSignText
	bg_event 22, 13, BGEVENT_JUMPTEXT, GraniteVillageInnSignText
	bg_event 23, 13, BGEVENT_JUMPTEXT, GraniteVillageInnSignText

    db 8 ; object_events
	person_event SPRITE_RIVAL, 16, 14, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, 0, EVENT_RIVAL_IN_GRANITE_VILLAGE
	person_event SPRITE_CUTE_GIRL, 15, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, EVENT_GRANITE_VILLAGE_GREET_SCENE
	person_event SPRITE_ROCKET, 21, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, GraniteVillageIndigoGruntScript, EVENT_INDIGO_BLOCK_GRANITE_VILLAGE
	person_event SPRITE_ROCKET_GIRL, 13, 21, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, EVENT_ALWAYS_SET
	person_event SPRITE_GRANNY,  8,  9, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, -1
	person_event SPRITE_GRAMPS, 15, 35, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, 0, -1
	person_event SPRITE_HIKER, 10, 25, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, -1
	person_event SPRITE_DRAGON_TAMER,  6, 12, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, 0, -1

    const_def 1 ; object constants
    const GRANITE_VILLAGE_RIVAL
    const GRANITE_VILLAGE_GREET_GIRL
    const GRANITE_VILLAGE_GRUNT_1
    const GRANITE_VILLAGE_GRUNT_2

GraniteVillageIndigoBlockerTrigger:
    playmusic MUSIC_ROCKET_ENCOUNTER
    turnobject GRANITE_VILLAGE_GRUNT_1, RIGHT
    showemote EMOTE_SHOCK, GRANITE_VILLAGE_GRUNT_1, 30
    showtext IndigoGruntStopRightThereText
    turnobject PLAYER, LEFT
GraniteVillageIndigoGruntScript:
    opentext
    writetext IndigoGruntTextPreBattle
    waitbutton
    winlosstext GraniteGruntWinLossText, 0
    loadtrainer GRUNTM, 2
    startbattle
    reloadmapafterbattle
    sjumpfwd .AfterGruntBattle

.AfterGruntBattle:
    showtext IndigoGruntTextAfterLoss
    applymovement GRANITE_VILLAGE_GRUNT_2, GraniteVillageGruntLeaves_Movement
    setevent EVENT_INDIGO_BLOCK_GRANITE_VILLAGE
    disappear GRANITE_VILLAGE_GRUNT_1
    end

GraniteVillageInnCutsceneTrigger1:
    playmusic MUSIC_ROCKET_ENCOUNTER
    playsound SFX_ENTER_DOOR
    appear GRANITE_VILLAGE_GRUNT_2
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_down
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_left
    turnobject GRANITE_VILLAGE_GRUNT_2, LEFT
    turnobject PLAYER, RIGHT
    pause 5
    showemote EMOTE_SHOCK, GRANITE_VILLAGE_GRUNT_2, 30
    opentext
    writetext GraniteVillageInnGruntText1
    waitbutton
    winlosstext GraniteVillageInnGruntWinLossText, 0
    loadtrainer GRUNTF, 2
    startbattle
    reloadmapafterbattle
    opentext
    writetext GraniteVillageInnGruntTextPostBattle
    waitbutton
    closetext
    turnobject PLAYER, UP
    applyonemovement PLAYER, fix_facing
    applyonemovement PLAYER, step_down
    applyonemovement PLAYER, remove_fixed_facing
    applymovement GRANITE_VILLAGE_GRUNT_2, InnGruntLeaves1_Movement
    disappear GRANITE_VILLAGE_GRUNT_2
    end

GraniteVillageInnCutsceneTrigger2:
    playmusic MUSIC_ROCKET_ENCOUNTER
    playsound SFX_ENTER_DOOR
    appear GRANITE_VILLAGE_GRUNT_2
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_down
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_down
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_left
    turnobject GRANITE_VILLAGE_GRUNT_2, LEFT
    turnobject PLAYER, RIGHT
    pause 5
    showemote EMOTE_SHOCK, GRANITE_VILLAGE_GRUNT_2, 30
    opentext
    writetext GraniteVillageInnGruntText1
    waitbutton
    winlosstext GraniteVillageInnGruntWinLossText, 0
    loadtrainer GRUNTF, 2
    startbattle
    reloadmapafterbattle
    opentext
    writetext GraniteVillageInnGruntTextPostBattle
    waitbutton
    closetext
    turnobject PLAYER, UP
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_up
    applymovement GRANITE_VILLAGE_GRUNT_2, InnGruntLeaves1_Movement
    disappear GRANITE_VILLAGE_GRUNT_2
    end

GraniteVillageInnCutsceneTrigger3:
    playmusic MUSIC_ROCKET_ENCOUNTER
    playsound SFX_ENTER_DOOR
    appear GRANITE_VILLAGE_GRUNT_2
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_down
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_down
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_left
    turnobject GRANITE_VILLAGE_GRUNT_2, DOWN
    turnobject PLAYER, UP
    pause 5
    showemote EMOTE_SHOCK, GRANITE_VILLAGE_GRUNT_2, 30
    opentext
    writetext GraniteVillageInnGruntText1
    waitbutton
    winlosstext GraniteVillageInnGruntWinLossText, 0
    loadtrainer GRUNTF, 2
    startbattle
    reloadmapafterbattle
    opentext
    writetext GraniteVillageInnGruntTextPostBattle
    waitbutton
    closetext
    turnobject PLAYER, RIGHT
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_left
    applymovement GRANITE_VILLAGE_GRUNT_2, InnGruntLeaves2_Movement
    disappear GRANITE_VILLAGE_GRUNT_2
    end

GraniteVillageInnCutsceneTrigger4:
    playmusic MUSIC_ROCKET_ENCOUNTER
    playsound SFX_ENTER_DOOR
    appear GRANITE_VILLAGE_GRUNT_2
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_down
    applyonemovement GRANITE_VILLAGE_GRUNT_2, step_down
    turnobject PLAYER, UP
    pause 5
    showemote EMOTE_SHOCK, GRANITE_VILLAGE_GRUNT_2, 30
    opentext
    writetext GraniteVillageInnGruntText1
    waitbutton
    winlosstext GraniteVillageInnGruntWinLossText, 0
    loadtrainer GRUNTF, 2
    startbattle
    reloadmapafterbattle
    opentext
    writetext GraniteVillageInnGruntTextPostBattle
    waitbutton
    closetext
    turnobject PLAYER, RIGHT
    applyonemovement PLAYER, fix_facing
    applyonemovement PLAYER, step_left
    applyonemovement PLAYER, remove_fixed_facing
    applymovement GRANITE_VILLAGE_GRUNT_2, InnGruntLeaves2_Movement
    disappear GRANITE_VILLAGE_GRUNT_2
    end

GraniteVillageStatueScript:
    opentext
    writetext GraniteVillageStatueText1
    waitbutton
    yesorno
    iffalsefwd .End
    writetext GraniteVillageStatueText2
    waitbutton
.End:
    closetext
    end

IndigoGruntStopRightThereText:
    text "Hey, you!"

    para "Stop right there!"
    done

IndigoGruntTextPreBattle:
    text "I'm sorry, but"
    line "there is NO WAY"
    cont "I could let you"
    cont "through, punk!"

    para "TEAM INDIGO is"
    line "currently doing"
    cont "important oper-"
    cont "ations in the--"

    para "Oh, no, no, no!"

    para "Look at me!"
    line "I almost said too"
    cont "much!"

    para "Alright, now I"
    line "have to make sure"
    cont "you don't get in!"
    done

IndigoGruntTextAfterLoss:
    text "Oh, goodness…"

    para "BOSS won't be"
    line "happy to hear"
    cont "about this one…"
    done

    para "I can't even beat"
    line "some dumb kid!"
    done

GraniteGruntWinLossText:
    text "There goes my"
    line "chance for a"
    cont "raise!"
    done

GraniteVillageInnGruntText1:
    text "Uh oh!"

    para "You must be the"
    line "kid I heard"
    cont "about."

    para "Well, I gotta"
    line "stop you in your"
    cont "tracks!"

    para "It's BOSS's"
    line "orders!"
    done

GraniteVillageInnGruntWinLossText:
    text "Well, shucks!"
    done

GraniteVillageInnGruntTextPostBattle:
    text "We've got trouble!"
    done

GraniteVillageStatueText1:
    text "It's a statue of"
    line "a fierce #MON."

    para "There's a faded"
    line "plaque underneath."


    para "Read it?"
    done

GraniteVillageStatueText2:
    text "The plaque reads:"

    para "In ancient times…"
    line "…was constructed…"

    para "…in their slumber…"
    line "……sealed for…"

    para "…awoke……"
    line "……shaped the land…"

    para "Sought by………"
    line "……returned to"
    cont "slumber, only to…"

    para "…again…… time for…"
    line "……years…"

    para "The…… shaper of…"
    line "awaits a worthy………"

    para "There's some more,"
    line "but it's completely"
    cont "illegible."
    done

GraniteVillageSignText:
    text "GRANITE VILLAGE"

    para "A village carved"
    line "out of the"
    cont "mountains by humans"
    cont "and #MON."
    done

GraniteVillageInnSignText:
    text "VILLAGE INN"
    
    para "Come rest your"
    line "weary head!"

    para "Hot beverages on"
    line "the house!"
    done

GraniteVillageHanasHouseSignText:
    text "HANA's HOUSE"
    done

GraniteVillagePinkStoneText:
    text "Wow! It's a huge"
    line "pink boulder!"

    para "…Must be made"
    line "of granite!"
    done

GraniteVillageGruntLeaves_Movement:
    slow_step_up
    step_up
    fast_step_up
    fast_step_up
    fast_step_up
    step_end

InnGruntLeaves1_Movement:
    fast_step_left
    fast_step_left
    fast_step_up
    fast_step_up
    fast_step_up
    fast_step_right
    fast_step_up
    step_end

InnGruntLeaves2_Movement:
    fast_step_down
    fast_step_left
    fast_step_left
    fast_step_left
    fast_step_left
    fast_step_left
    fast_step_left
    step_end
