GemrootCommunityCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  1,  8, GEMROOT_TOWN, 3  ; 1
	warp_event  2,  8, GEMROOT_TOWN, 3  ; 2

    def_coord_events
	coord_event  4,  3, 0, PlayerWalksToTaylor1
	coord_event  4,  4, 0, PlayerWalksToTaylor2
    coord_event  4,  5, 0, PlayerWalksToTaylor3
	coord_event  3,  3, 1, PickYourMonScript
	coord_event  3,  2, 1, PickYourMonScript
    coord_event  3,  4, 1, PickYourMonScript
    coord_event  3,  5, 1, PickYourMonScript
	coord_event  3,  2, 2, TaylorChallengeTrigger1
	coord_event  3,  3, 2, TaylorChallengeTrigger2
  ;  coord_event  3,  4, 1, TaylorChallengeTrigger3
   ; coord_event  3,  5, 1, TaylorChallengeTrigger4

    def_bg_events
	bg_event 12,  1, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 13,  1, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 14,  1, BGEVENT_JUMPTEXT, GemrootHistoryBooksText

    db 5 ; object events
	person_event SPRITE_OAK,  2,  7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, GemrootElderScript, -1
	object_event  6,  4, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_POKE_BALL, PERSONTYPE_SCRIPT, 0, FirePokeBallScript, EVENT_FIRE_POKEBALL_IN_COMMUNITYCENTER
	object_event  7,  4, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_DECO_ITEM, PERSONTYPE_SCRIPT, 0, WaterPokeBallScript, EVENT_WATER_POKEBALL_IN_COMMUNITYCENTER
	object_event  8,  4, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_KEY_ITEM, PERSONTYPE_SCRIPT, 0, GrassPokeBallScript, EVENT_GRASS_POKEBALL_IN_COMMUNITYCENTER
	person_event SPRITE_RIVAL,  2,  5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, GemrootTaylorScript, EVENT_TAYLOR_IN_COMMUNITYCENTER

    object_const_def
    const GEMROOT_COMMUNITYCENTER_ELDER
    const GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
    const GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
    const GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
    const GEMROOT_COMMUNITYCENTER_TAYLOR

PlayerWalksToTaylor1:
;   checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;   iftruefwd .skip
;   turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    applyonemovement PLAYER, step_right
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    sjumpfwd GemrootElderGivesMonScript
.skip
    end

PlayerWalksToTaylor2:
;   checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;   iftruefwd .skip
;   turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    applyonemovement PLAYER, step_right
    applyonemovement PLAYER, step_up
    turnobject PLAYER, RIGHT
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    sjumpfwd GemrootElderGivesMonScript
.skip
    end

PlayerWalksToTaylor3:
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_right
    applyonemovement PLAYER, step_up
    turnobject PLAYER, RIGHT
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    sjumpfwd GemrootElderGivesMonScript
.skip
    end

PickYourMonScript:
;   checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;   iftruefwd .skip
    showtext ElderWaitPickMonText
    applyonemovement PLAYER, step_right
.skip
    end

GemrootElderGivesMonScript:
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, DOWN
    opentext
    writetext ElderGemrootTraditionText
    waitbutton
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, DOWN
    end

TaylorChallengeTrigger1:
    playmusic MUSIC_RIVAL_ENCOUNTER
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    applyonemovement PLAYER, run_step_right
    turnobject PLAYER, LEFT
    showtext TaylorChallengeText
    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_down
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    sjumpfwd TaylorChallengeScript

TaylorChallengeTrigger2:
    playmusic MUSIC_LYRA_ENCOUNTER_HGSS
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    turnobject PLAYER, LEFT
    showtext TaylorChallengeText
    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_down
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
TaylorChallengeScript:
    winlosstext CommunityCenterTaylorWinText, CommunityCenterTaylorLossText
    checkevent EVENT_GOT_MUDKIP_FROM_ELDER
    iftruefwd .Mudkip
    checkevent EVENT_GOT_TURTWIG_FROM_ELDER
    iftruefwd .Turtwig
    loadtrainer RIVAL1, RIVAL1_3
    loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
    startbattle
    dontrestartmapmusic
    reloadmap
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
    iftruefwd .AfterYourDefeat
    sjumpfwd .AfterVictorious

.Mudkip
    loadtrainer RIVAL1, RIVAL1_1
    loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
    startbattle
    dontrestartmapmusic
    reloadmap
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
    iftruefwd .AfterYourDefeat
    sjumpfwd .AfterVictorious

.Turtwig
    loadtrainer RIVAL1, RIVAL1_2
    loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
    startbattle
    dontrestartmapmusic
    reloadmap
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
    iftruefwd .AfterYourDefeat
    sjumpfwd .AfterVictorious

.AfterYourDefeat
    showtext TaylorIKnewItText
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, UP
    showtext TaylorThanksForTheMonText
    applymovement GEMROOT_COMMUNITYCENTER_TAYLOR, TaylorLeavesMovement
    disappear GEMROOT_COMMUNITYCENTER_TAYLOR
    setscene $2
    setevent EVENT_TAYLOR_IN_COMMUNITYCENTER
    setevent EVENT_TAYLOR_MOSSHILL_TOWN
    special HealPartyEvenForNuzlocke
    setmapscene GEMROOT_TOWN, $1
    special RestartMapMusic
    end

.AfterVictorious
    showtext TaylorGoodJobText
    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, UP
    showtext TaylorThanksForTheMonText
    applymovement GEMROOT_COMMUNITYCENTER_TAYLOR, TaylorLeavesMovement
    disappear GEMROOT_COMMUNITYCENTER_TAYLOR
    setscene $2
    setevent EVENT_TAYLOR_IN_COMMUNITYCENTER
    setevent EVENT_TAYLOR_MOSSHILL_TOWN
    special HealPartyEvenForNuzlocke
    setmapscene GEMROOT_TOWN, $1
    special RestartMapMusic
    end

TaylorChallengeText:
    text "TAYLOR: <PLAYER>!"
    line "Let's have a battle"

    para "with our #MON!"
    done

CommunityCenterTaylorWinText:
    text "Wow, <PLAYER>! I'll"
    line "keep training my"

    para "#MON and get"
    line "stronger!"
    done

CommunityCenterTaylorLossText:
    text "I'll training my"
    line "#MON and get"
    cont "even stronger!"
    done

TaylorIKnewItText:
    text "<PLAYER>! I knew"
    line "I could beat you!"
    done

TaylorGoodJobText:
    text "Good job,"
    line "<PLAYER>! For your"
    cont "first battle, that"

    para "was intense!"
    done

TaylorThanksForTheMonText:
    text "And MR.ELDER?"
    line "Thanks so much for"

    para "the #MON! I'm"
    line "sure it'll be"
    cont "great!"
    done

TaylorLeavesMovement:
    step_down
    step_down
    step_down
    step_down
    step_down
    step_down
    step_end

GemrootElderScript:
    faceplayer
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iffalsefwd .FindTaylor
    iftruefwd .GotMon
    opentext
    writetext ElderPickAMonText
    waitbutton
    closetext
    end

.GotMon
    opentext
    writetext ElderMagicalWorldText
    waitbutton
    closetext
    end

.FindTaylor
    opentext
    writetext ElderFindTaylorText
    waitbutton
    closetext
    end

ElderFindTaylorText:
    text "Hi, <PLAYER>."
    line "Can you find"
    cont "TAYLOR for me?"

    para "I want to get"
    line "started on giving"
    cont "you your #MON,"
    
    para "but I can't"
    line "without her."
    done

GemrootTaylorScript:
    faceplayer
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext TaylorCutePokemonText
    jumptext ElderPickAMonText
    end

FirePokeBallScript:
;   checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;   iftruefwd .ItsAPokemonScript3
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext BelongsToElderText
    refreshscreen
    pokepic CYNDAQUIL
    cry CYNDAQUIL
    waitbutton
    closepokepic
    opentext
    writetext TakeFireMonText
    yesorno
    iffalse_jumpopenedtext DidntChooseMonText
    disappear GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
    setevent EVENT_GOT_CYNDAQUIL_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke CYNDAQUIL, PLAIN_FORM, 5, ORAN_BERRY
    setscene $1
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
;   applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_right
;   applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_up
;   opentext
;   writetext TaylorTakesMudkipText
;   waitbutton
;   closetext
;   disappear GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
;   applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_down
;   applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_left
;   turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, UP
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, UP
    opentext
    writetext ElderAdventureText
    waitbutton
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    setmapscene GEMROOT_TOWN, $1
    end

.ItsAPokemonScript3
    jumptext ItsAPokemonText
    end

TakeFireMonText:
    text "Take CYNDAQUIL?"
    done

TaylorTakesMudkipText:
    text "TAYLOR: Then I'll"
    line "take MUDKIP!"
    done

WaterPokeBallScript:
;    checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;   iftruefwd .ItsAPokemonScript2
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext BelongsToElderText
    refreshscreen
    pokepic MUDKIP
    cry MUDKIP
    waitbutton
    closepokepic
    opentext
    writetext TakeWaterMonText
    yesorno
    iffalse_jumpopenedtext DidntChooseMonText
    disappear GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
    setevent EVENT_GOT_MUDKIP_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke MUDKIP, PLAIN_FORM, 5, ORAN_BERRY
    setscene $1
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
;    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_right
;   applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_right
;  applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_up
;    opentext
;    writetext TaylorTakesTurtwigText
;    waitbutton
;    closetext
;    disappear GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
;    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_down
;    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_left
;    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_left
;    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, UP
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, UP
    opentext
    writetext ElderAdventureText
    waitbutton
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    setmapscene GEMROOT_TOWN, $1
    end

.ItsAPokemonScript2
    jumptext ItsAPokemonText
    end


TakeWaterMonText:
    text "Take MUDKIP?"
    done

TaylorTakesTurtwigText:
    text "TAYLOR: Then I'll"
    line "take TURTWIG!"
    done

GrassPokeBallScript:
;    checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;    iftruefwd .ItsAPokemonScript1
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext BelongsToElderText
    refreshscreen
    pokepic TURTWIG
    cry TURTWIG
    waitbutton
    closepokepic
    opentext
    writetext TakeGrassMonText
    yesorno
    iffalse_jumpopenedtext DidntChooseMonText
    disappear GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
    setevent EVENT_GOT_TURTWIG_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke TURTWIG, PLAIN_FORM, 5, ORAN_BERRY
    setscene $1
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
;    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_up
;    opentext
;    writetext TaylorTakesCyndaquilText
;    waitbutton
;    waitbutton
;    closetext
;    disappear GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
;    applyonemovement GEMROOT_COMMUNITYCENTER_TAYLOR, step_down
;    turnobject GEMROOT_COMMUNITYCENTER_TAYLOR, RIGHT
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, UP
    opentext
    writetext ElderAdventureText
    waitbutton
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    setmapscene GEMROOT_TOWN, $1
    end

.ItsAPokemonScript1
    jumptext ItsAPokemonText
    end


ItsAPokemonText:
    text "It's a #MON"
    line "that belongs to"
    cont "the ELDER." 
    done   

TaylorTakesCyndaquilText:
    text "TAYLOR: Then I'll"
    line "take CYNDAQUIL!"
    done

TaylorCutePokemonText:
    text "I think your"
    line "#MON is cute,"
    cont "too!"
    done

BelongsToElderText:
    text "It's a #MON"
    line "that belongs to"
    cont "the ELDER."
    done

DidntChooseMonText:
    nametag
    text " ELDER "
    next
    text_start
    text "Think it over"
    line "carefully."

    para "Your partner is"
    line "important."
    done

TakeGrassMonText:
    text "Take TURTWIG?"
    done

ChoseMonText:
    nametag
    text " ELDER "
    next
    text_start
    text "I think that's a"
    line "great #MON too!"
    done

ElderAdventureText:
    nametag
    text " ELDER "
    next
    text_start
    text "Remember, to"
    line "get to BLOSSOM"
    cont "ACADEMY, you'll"

    para "need to travel"
    line "to MARIGOLD PORT."

    para "Once you're there,"
    line "DR. LAVENTON told"
    cont "me he'd be"
    cont "waiting for you."

    para "While you're on"
    line "your way, you may"
    cont "as well challenge"
    cont "the #MON GYMS in"
    
    para "MOONFLOWER CITY"
    line "and MARIGOLD PORT."

    para "Good luck,"
    line "<PLAYER>!"

    para "…Oh, and don't"
    line "forget to talk to"
    cont "your MOM before"
    cont "you leave."
    done

ElderGemrootTraditionText:
    nametag
    text " ELDER "
    next
    text_start
    text "Good to see you,"
    line "<PLAYER>!"

    para "You're probably"
    line "wondering why I"
    cont "called you."

    para "Well, since you"
    line "were accepted to"
    cont "BLOSSOM ACADEMY,"

    para "I've decided to"
    line "give you a #MON"
    cont "to keep you"
    cont "company on your"
    cont "way."

    para "After all, it's"
    line "a long journey"
    cont "from here to the"
    cont "ACADEMY."

    para "It would be no"
    line "good for you to"
    cont "go by yourself."

    para "That's why I"
    line "want you to pick"
    cont "from one of the"

    para "#MON on this"
    line "table."
    done

ElderWaitPickMonText:
    nametag
    text " ELDER "
    next
    text_start
    text "Wait, <PLAYER>!"
    line "Pick a #MON."
    done

ElderPickAMonText:
    nametag
    text " ELDER "
    next
    text_start
    text "Go on! Pick a"
    line "#MON."
    done

ElderMagicalWorldText:
    nametag
    text " ELDER "
    next
    text_start
    text "Well <PLAYER>, the"
    line "world is a magical"
    cont "place…"

    para "I wish you luck on"
    line "your adventures!"
    done

GemrootCommunityFoodText:
    text "It's food available"
    line "for the community."
    done

GemrootAncientMuralText:
    text "It's a mural"
    line "depicting two"

    para "ancient #MON."
    done

GemrootHistoryBooksText:
    text "It's full of"
    line "history books."
    done

CommunityCenterSageText:
    text "I'm organizing"
    line "the bookshelf."
    done

CommunityCenterLadyText:
    text "This food is"
    line "available for"
    cont "the community."

    para "Take what you"
    line "need, give what"
    cont "you don't."
    done
