GemrootCommunityCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  1,  8, GEMROOT_TOWN, 3  ; 1
	warp_event  2,  8, GEMROOT_TOWN, 3  ; 2

    def_coord_events
	coord_event  4,  4, 0, PlayerWalksToTaylor1
	coord_event  4,  5, 0, PlayerWalksToTaylor2
	coord_event  5,  4, 1, PickYourMonScript
	coord_event  5,  5, 1, PickYourMonScript

    def_bg_events
	bg_event 12,  1, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 13,  1, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 14,  1, BGEVENT_JUMPTEXT, GemrootHistoryBooksText

    db 5 ; object events
	person_event SPRITE_OAK,  4,  9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, GemrootElderScript, -1
	object_event  6,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_POKE_BALL, PERSONTYPE_SCRIPT, 0, FirePokeBallScript, EVENT_FIRE_POKEBALL_IN_COMMUNITYCENTER
	object_event  7,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_DECO_ITEM, PERSONTYPE_SCRIPT, 0, WaterPokeBallScript, EVENT_WATER_POKEBALL_IN_COMMUNITYCENTER
	object_event  8,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_KEY_ITEM, PERSONTYPE_SCRIPT, 0, GrassPokeBallScript, EVENT_GRASS_POKEBALL_IN_COMMUNITYCENTER
	person_event SPRITE_RIVAL,  3,  5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, GemrootTaylorScript, EVENT_TAYLOR_IN_COMMUNITYCENTER

    object_const_def
    const GEMROOT_LAB_BAOBAB
    const GEMROOT_LAB_FIRE_POKEBALL
    const GEMROOT_LAB_WATER_POKEBALL
    const GEMROOT_LAB_GRASS_POKEBALL
    const GEMROOT_LAB_TAYLOR

PlayerWalksToTaylor1:
;   checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;   iftruefwd .skip
;   turnobject GEMROOT_LAB_TAYLOR, RIGHT
    special Special_FadeOutMusic
    playmusic MUSIC_SHOW_ME_AROUND
    applyonemovement PLAYER, step_right
    turnobject GEMROOT_LAB_TAYLOR, RIGHT
    sjumpfwd GemrootElderGivesMonScript
.skip
    end

PlayerWalksToTaylor2:
;   checkevent EVENT_TAYLOR_IN_COMMUNITYCENTER
;   iftruefwd .skip
;   turnobject GEMROOT_LAB_TAYLOR, RIGHT
    special Special_FadeOutMusic
    playmusic MUSIC_SHOW_ME_AROUND
    applyonemovement PLAYER, step_right
    applyonemovement PLAYER, step_up
    turnobject PLAYER, RIGHT
    turnobject GEMROOT_LAB_TAYLOR, RIGHT
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
    turnobject GEMROOT_LAB_BAOBAB, LEFT
    opentext
    writetext ElderGemrootTraditionText
    waitbutton
    closetext
    showemote EMOTE_SHOCK, GEMROOT_LAB_TAYLOR, 15
    pause 5
    opentext
    writetext GemrootTaylorNoFairText
    waitbutton
    closetext
    pause 5
    opentext
    writetext GemrootBaobabBePatientText
    waitbutton
    closetext
    pause 5
    setscene $1
    jumptext GemrootTaylorSuperEffectiveText
    end

TaylorLeavesMovement:
    step_left
    step_left
    step_left
    step_left
    step_left
    step_left
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
    disappear GEMROOT_LAB_FIRE_POKEBALL
    setevent EVENT_GOT_CYNDAQUIL_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke CYNDAQUIL, PLAIN_FORM, 5, ORAN_BERRY
    setscene $2
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
    applyonemovement GEMROOT_LAB_TAYLOR, step_right
    applyonemovement GEMROOT_LAB_TAYLOR, step_right
    applyonemovement GEMROOT_LAB_TAYLOR, step_up
    opentext
    writetext TaylorTakesMudkipText
    waitbutton
    closetext
    disappear GEMROOT_LAB_WATER_POKEBALL
    pause 5
    follow PLAYER, GEMROOT_LAB_TAYLOR
    applyonemovement PLAYER, step_down
    applyonemovement PLAYER, step_down
    stopfollow
    turnobject PLAYER, RIGHT
    turnobject GEMROOT_LAB_TAYLOR, RIGHT
    sjumpfwd BaobabPokedexScript

.ItsAPokemonScript3
    jumptext ItsAPokemonText
    end

TakeFireMonText:
    text "Take CYNDAQUIL?"
    done

TaylorTakesMudkipText:
    ntag " TAYLOR "
    text "Then I'll take"
    line "MUDKIP!"

    para "It looks much"
    line "stronger."
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
    disappear GEMROOT_LAB_WATER_POKEBALL
    setevent EVENT_GOT_MUDKIP_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke MUDKIP, PLAIN_FORM, 5, ORAN_BERRY
    setscene $2
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
    applyonemovement GEMROOT_LAB_TAYLOR, step_right
    applyonemovement GEMROOT_LAB_TAYLOR, step_right
    applyonemovement GEMROOT_LAB_TAYLOR, step_right
    applyonemovement GEMROOT_LAB_TAYLOR, step_up
    opentext
    writetext TaylorTakesTurtwigText
    waitbutton
    closetext
    disappear GEMROOT_LAB_GRASS_POKEBALL
    pause 5
    follow PLAYER, GEMROOT_LAB_TAYLOR
    applyonemovement PLAYER, step_left
    applyonemovement PLAYER, step_down
    applyonemovement PLAYER, step_down
    stopfollow
    turnobject PLAYER, RIGHT
    turnobject GEMROOT_LAB_TAYLOR, RIGHT
BaobabPokedexScript:
    pause 5
    showtext GemrootLabBaobabOneMoreThingText
    pause 5
    applymovement GEMROOT_LAB_BAOBAB, ProfBaobabGoesOffScreen_Movement
    pause 5
    showtext GemrootLabBaobabLetsSeeText
    pause 10
    showtext GemrootLabBaobabHereItIsText
    pause 5
    applymovement GEMROOT_LAB_BAOBAB, ProfBaobabComesBack_Movement
    pause 5
    showtext GemrootLabBaobabPokedexText
    pause 2
    applyonemovement GEMROOT_LAB_BAOBAB, step_left
    pause 10
    applyonemovement GEMROOT_LAB_BAOBAB, step_down
    turnobject GEMROOT_LAB_BAOBAB, LEFT
    pause 2
    playsound SFX_ITEM
    opentext
    writetext PlayerReceivedDexText
    waitsfx
    waitbutton
    closetext
    setflag ENGINE_POKEDEX
    pause 2
    applyonemovement GEMROOT_LAB_BAOBAB, step_right
    applyonemovement GEMROOT_LAB_BAOBAB, step_up
    turnobject GEMROOT_LAB_BAOBAB, LEFT
    showtext GemrootLabBaobabDoneText
    playmusic MUSIC_RIVAL_ENCOUNTER
    pause 5
    turnobject PLAYER, UP
    turnobject GEMROOT_LAB_TAYLOR, DOWN
    showtext GemrootLabTaylorChallengeText
    sjumpfwd TaylorChallengeScript

.ItsAPokemonScript2
    jumptext ItsAPokemonText
    end


TakeWaterMonText:
    text "Take MUDKIP?"
    done

TaylorTakesTurtwigText:
    ntag " TAYLOR "
    text "Then I'll take"
    line "TURTWIG!"

    para "It looks much"
    line "stronger."
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
    disappear GEMROOT_LAB_GRASS_POKEBALL
    setevent EVENT_GOT_TURTWIG_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke TURTWIG, PLAIN_FORM, 5, ORAN_BERRY
    setscene $2
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
    applyonemovement GEMROOT_LAB_TAYLOR, step_right
    applyonemovement GEMROOT_LAB_TAYLOR, step_up
    opentext
    writetext TaylorTakesCyndaquilText
    waitbutton
    closetext
    disappear GEMROOT_LAB_FIRE_POKEBALL
    pause 5
    applyonemovement GEMROOT_LAB_TAYLOR, step_down
    turnobject GEMROOT_LAB_TAYLOR, RIGHT
    applymovement PLAYER, PlayerWalksToTaylor_PostStarterMovement
    sjump BaobabPokedexScript

TaylorChallengeScript:
    winlosstext GemrootLabTaylorWinText, GemrootLabTaylorLossText
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
    showtext GemrootLabTaylorLeaveWinText
    turnobject GEMROOT_LAB_TAYLOR, RIGHT
    showtext GemrootLabTaylorFinalText
    applymovement GEMROOT_LAB_TAYLOR, TaylorLeavesMovement
    disappear GEMROOT_LAB_TAYLOR
    setscene $2
    setevent EVENT_TAYLOR_IN_COMMUNITYCENTER
    setevent EVENT_TAYLOR_MOSSHILL_TOWN
    special HealPartyEvenForNuzlocke
    setmapscene GEMROOT_TOWN, $1
    special Special_FadeOutMusic
    playmusic MUSIC_SHOW_ME_AROUND
    sjumpfwd BaobabPackageRequest
    end

.AfterVictorious
    showtext GemrootLabTaylorLeaveLossText
    turnobject GEMROOT_LAB_TAYLOR, RIGHT
    showtext GemrootLabTaylorFinalText
    applymovement GEMROOT_LAB_TAYLOR, TaylorLeavesMovement
    disappear GEMROOT_LAB_TAYLOR
    setscene $2
    setevent EVENT_TAYLOR_IN_COMMUNITYCENTER
    setevent EVENT_TAYLOR_MOSSHILL_TOWN
    special HealPartyEvenForNuzlocke
    setmapscene GEMROOT_TOWN, $1
    special Special_FadeOutMusic
    playmusic MUSIC_SHOW_ME_AROUND
    sjumpfwd BaobabPackageRequest
    end

.ItsAPokemonScript1
    jumptext ItsAPokemonText
    end

BaobabPackageRequest:
    pause 5
    showtext BaobabNeverChangesText
    pause 2
    showemote EMOTE_SHOCK, GEMROOT_LAB_BAOBAB, 15
    showtext BaobabForgotPackageText
    yesorno
    iffalsefwd PackageYesNoLoop
LabCheckStarterPackage:
    checkevent EVENT_GOT_TURTWIG_FROM_ELDER
    iftruefwd RemainingMudkip
    checkevent EVENT_GOT_CYNDAQUIL_FROM_ELDER
    iftruefwd RemainingTurtwig
    applymovement GEMROOT_LAB_BAOBAB, BaobabGetsFireStarterMovement
    pause 5
    disappear GEMROOT_LAB_FIRE_POKEBALL
    applyonemovement GEMROOT_LAB_BAOBAB, step_right
    applyonemovement GEMROOT_LAB_BAOBAB, step_down
    applyonemovement GEMROOT_LAB_BAOBAB, step_down
LabPackageFinalScript:
    turnobject GEMROOT_LAB_BAOBAB, LEFT
    verbosegivekeyitem GS_BALL
;    opentext
 ;   writetext BaobabMarigoldPortInstructionsText
    end

PackageYesNoLoop:
    showtext BaobabCouldntQuiteHearText
    yesorno
    iffalse PackageYesNoLoop
    sjump LabCheckStarterPackage

RemainingMudkip:
    applymovement GEMROOT_LAB_BAOBAB, BaobabGetsWaterStarterMovement
    applyonemovement GEMROOT_LAB_BAOBAB, step_down
    applyonemovement GEMROOT_LAB_BAOBAB, step_down
    sjump LabPackageFinalScript

RemainingTurtwig:
    applymovement GEMROOT_LAB_BAOBAB, BaobabGetsGrassStarterMovement
    applyonemovement GEMROOT_LAB_BAOBAB, step_down
    applyonemovement GEMROOT_LAB_BAOBAB, step_down
    applyonemovement GEMROOT_LAB_BAOBAB, step_left
    sjump LabPackageFinalScript

BaobabNeverChangesText:
    ntag " BAOBAB "
    text "…<PAUSE>That boy never"
    line "changes, does he?"
    
    para "Don't let it worry"
    line "you, <PLAYER>."

    para "He's just<PAUSE>…"
    line "very energetic."
    done

BaobabForgotPackageText:
    text "Oh my!"
    line "I almost forgot."
    
    para "There's another"
    line "new trainer who"
    cont "lives in MARIGOLD"
    cont "PORT,"

    para "a little ways from"
    line "here."

    para "She wasn't able"
    line "to be with us"
    cont "today,"

    para "so could you"
    line "deliver the last"
    cont "#MON to her for"
    cont "me?"
    done

BaobabGetsFireStarterMovement:
    step_left
BaobabGetsWaterStarterMovement:
    step_left
BaobabGetsGrassStarterMovement:
    step_up
    step_end

BaobabCouldntQuiteHearText:
    text "What was that?"

    para "I couldn't quite"
    line "hear you."
    done

PlayerWalksToTaylor_PostStarterMovement:
    step_left
    step_down
    step_down
    step_left
    turn_head_right
    step_end

ProfBaobabGoesOffScreen_Movement:
    step_right
    step_right
    step_right
    step_end

ProfBaobabComesBack_Movement:
    step_up
    step_left
    step_left
    step_left
    step_left
    step_end

GemrootLabBaobabOneMoreThingText:
    ntag " BAOBAB "
    text "Oh, and there's"
    line "more thing I"
    cont "have for you."
    done

GemrootLabBaobabLetsSeeText:
    ntag " BAOBAB "
    text "Let's see<PAUSE>…<PAUSE>…<PAUSE>…"

    para "It was around here"
    line "somewhere<PAUSE>…"
    done

GemrootLabBaobabHereItIsText:
    ntag " BAOBAB "
    text "Ah, here it is!"
    done

GemrootLabBaobabPokedexText:
    ntag " BAOBAB "
    text "I have right here"
    line "a very important"
    cont "device."

    para "This is called"
    line "the #DEX."

    para "It's a high-tech"
    line "encyclopedia that"
    cont "records data on"

    para "#MON you've seen"
    line "and caught."

    para "I want each of"
    line "you to have one"
    cont "to aid you on"
    cont "your journey."
    done

PlayerReceivedDexText:
    text "<PLAYER> received"
    line "the #DEX!"
    done

GemrootLabBaobabDoneText:
    ntag " BAOBAB "
    text "Alright, that"
    line "should be all."

    para "………"

    para "Oh, I just had"
    line "an idea!"

    para "Why don't you"
    line "two try out your"
    cont "#MON in battle?"
    done

GemrootLabTaylorChallengeText:
    ntag " TAYLOR "
    text "Let's do this,"
    line "<PLAYER>!"

    para "Get ready to lose!"
    done

GemrootLabTaylorLossText:
    text "Yep, I knew it!"

    para "I'm a natural!"
    done

GemrootLabTaylorWinText:
    text "What?!"

    para "I even had the"
    line "stronger #MON!"
    done

GemrootLabTaylorLeaveLossText:
    ntag " TAYLOR "
    text "<PLAYER>! I'm"
    line "warning you now,"

    para "that was just a"
    line "fluke."

    para "Next time I'll be"
    line "much stronger!"
    done

GemrootLabTaylorLeaveWinText:
    ntag " TAYLOR "
    text "Haha! I knew I"
    line "could beat you."

    para "I don't think"
    line "you have what it"
    cont "takes, <PLAYER>."

    para "Good luck! You'll"
    line "need it!"
    done

GemrootLabTaylorFinalText:
    ntag " TAYLOR "
    text "Thanks for the"
    line "#MON, old man."

    para "I'm heading out"
    line "now."
    done

ItsAPokemonText:
    text "It's a #MON"
    line "that belongs to"
    cont "the ELDER." 
    done   

TaylorTakesCyndaquilText:
    ntag " TAYLOR "
    text "Then I'll take"
    line "CYNDAQUIL!"

    para "It looks much"
    line "stronger."
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

ElderGemrootTraditionText:
    ntag " BAOBAB "
    text "Ah,<PAUSE> <PLAYER>!"
    line "Now that you're"
    cont "here,<PAUSE> we can"
    cont "get started."

    para "As I am sure"
    line "you and TAYLOR"
    cont "here are aware,"

    para "many hundreds"
    line "of #MON make a"
    cont "great migration"

    para "across the ATUVA"
    line "REGION annually."

    para "I would like to"
    line "research this"
    cont "phenomenon more,"

    para "so I've decided"
    line "to ask you two"
    cont "to help me out"
    cont "with it."

    para "Also, since the"
    line "ATUVA #MON"
    cont "LEAGUE is opening"

    para "again for the"
    line "first time in"
    cont "years,"

    para "there's no better"
    line "time for you to"
    cont "go on a journey"
    cont "with #MON."

    para "So, <PLAYER>,"
    line "pick one of these"
    cont "three #MON."
    done

GemrootTaylorNoFairText:
    ntag " TAYLOR "
    text "What?<PAUSE> I was here"
    line "first!"

    para "Why does <PLAYER>"
    line "get to pick first?"
    done

GemrootBaobabBePatientText:
    ntag " BAOBAB "
    text "Be patient, TAYLOR."
    done

GemrootTaylorSuperEffectiveText:
    ntag " TAYLOR "
    text "Oh, well.<PAUSE>"
    line "I can just take"
    cont "the one that's good"
    cont "against <PLAYER>'s."
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

GemrootHistoryBooksText:
    text "It's full of"
    line "history books."
    done
