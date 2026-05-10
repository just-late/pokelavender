GemrootCommunityCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 17, 11, GEMROOT_TOWN, 3  ; 1
	warp_event 18, 11, GEMROOT_TOWN, 3  ; 2

    def_coord_events
	coord_event 17,  5, 0, PlayerWalksToAnabel1
	coord_event 18,  5, 0, PlayerWalksToAnabel2
	coord_event 17,  4, 0, PickYourMonScript
	coord_event 18,  4, 0, PickYourMonScript
;	coord_event 17,  4, 1, AnabelChallengeTrigger1
;	coord_event 18,  4, 1, AnabelChallengeTrigger2

    def_bg_events
	bg_event 12,  5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event 13,  5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event 14,  5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event 15,  5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event 21,  8, BGEVENT_JUMPTEXT, GemrootAncientMuralText
	bg_event 22,  8, BGEVENT_JUMPTEXT, GemrootAncientMuralText
	bg_event 20,  5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 21,  5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 22,  5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 23,  5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText

    db 7 ; object events
	person_event SPRITE_ELDER,  1, 19, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, GemrootElderScript, -1
	object_event 16,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_POKE_BALL, PERSONTYPE_SCRIPT, 0, FirePokeBallScript, EVENT_FIRE_POKEBALL_IN_COMMUNITYCENTER
	object_event 17,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_DECO_ITEM, PERSONTYPE_SCRIPT, 0, WaterPokeBallScript, EVENT_WATER_POKEBALL_IN_COMMUNITYCENTER
	object_event 18,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_KEY_ITEM, PERSONTYPE_SCRIPT, 0, GrassPokeBallScript, EVENT_GRASS_POKEBALL_IN_COMMUNITYCENTER
	person_event SPRITE_ANABEL,  3, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, GemrootAnabelScript, EVENT_ANABEL_IN_COMMUNITYCENTER
	person_event SPRITE_SAGE,  6, 21, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, CommunityCenterSageText, -1
	person_event SPRITE_POKEFAN_F,  6, 13, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, CommunityCenterLadyText, -1

    object_const_def
    const GEMROOT_COMMUNITYCENTER_ELDER
    const GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
    const GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
    const GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
    const GEMROOT_COMMUNITYCENTER_ANABEL

PlayerWalksToAnabel1:
;   checkevent EVENT_ANABEL_IN_COMMUNITYCENTER
;   iftruefwd .skip
;   turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_up
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
    sjumpfwd GemrootElderGivesMonScript
.skip
    end

PlayerWalksToAnabel2:
;   checkevent EVENT_ANABEL_IN_COMMUNITYCENTER
;   iftruefwd .skip
;   turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_left
    turnobject PLAYER, UP
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
    sjumpfwd GemrootElderGivesMonScript
.skip
    end

PickYourMonScript:
;   checkevent EVENT_ANABEL_IN_COMMUNITYCENTER
;   iftruefwd .skip
    showtext ElderWaitPickMonText
    applyonemovement PLAYER, step_up
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

AnabelChallengeTrigger1:
    playmusic MUSIC_RIVAL_ENCOUNTER
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
    applyonemovement PLAYER, run_step_right
    turnobject PLAYER, LEFT
    showtext AnabelChallengeText
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_down
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
    sjumpfwd AnabelChallengeScript

AnabelChallengeTrigger2:
    playmusic MUSIC_LYRA_ENCOUNTER_HGSS
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
    turnobject PLAYER, LEFT
    showtext AnabelChallengeText
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_down
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
AnabelChallengeScript:
    winlosstext CommunityCenterAnabelWinText, CommunityCenterAnabelLossText
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
    showtext AnabelIKnewItText
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
    showtext AnabelThanksForTheMonText
    applymovement GEMROOT_COMMUNITYCENTER_ANABEL, AnabelLeavesMovement
    disappear GEMROOT_COMMUNITYCENTER_ANABEL
    setscene $2
    setevent EVENT_ANABEL_IN_COMMUNITYCENTER
    setevent EVENT_ANABEL_GLITTERVINE_TOWN
    special HealPartyEvenForNuzlocke
    setmapscene GEMROOT_TOWN, $1
    special RestartMapMusic
    end

.AfterVictorious
    showtext AnabelGoodJobText
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
    showtext AnabelThanksForTheMonText
    applymovement GEMROOT_COMMUNITYCENTER_ANABEL, AnabelLeavesMovement
    disappear GEMROOT_COMMUNITYCENTER_ANABEL
    setscene $2
    setevent EVENT_ANABEL_IN_COMMUNITYCENTER
    setevent EVENT_ANABEL_GLITTERVINE_TOWN
    special HealPartyEvenForNuzlocke
    setmapscene GEMROOT_TOWN, $1
    special RestartMapMusic
    end

AnabelChallengeText:
    text "ANABEL: <PLAYER>!"
    line "Let's have a battle"

    para "with our #MON!"
    done

CommunityCenterAnabelWinText:
    text "Wow, <PLAYER>! I'll"
    line "keep training my"

    para "#MON and get"
    line "stronger!"
    done

CommunityCenterAnabelLossText:
    text "I'll training my"
    line "#MON and get"
    cont "even stronger!"
    done

AnabelIKnewItText:
    text "<PLAYER>! I knew"
    line "I could beat you!"
    done

AnabelGoodJobText:
    text "Good job,"
    line "<PLAYER>! For your"
    cont "first battle, that"

    para "was intense!"
    done

AnabelThanksForTheMonText:
    text "And MR.ELDER?"
    line "Thanks so much for"

    para "the #MON! I'm"
    line "sure it'll be"
    cont "great!"
    done

AnabelLeavesMovement:
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
    iffalsefwd .FindAnabel
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

.FindAnabel
    opentext
    writetext ElderFindAnabelText
    waitbutton
    closetext
    end

ElderFindAnabelText:
    text "Hi, <PLAYER>."
    line "Can you find"
    cont "ANABEL for me?"

    para "I want to get"
    line "started on giving"
    cont "you your #MON,"
    
    para "but I can't"
    line "without her."
    done

GemrootAnabelScript:
    faceplayer
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext AnabelCutePokemonText
    jumptext ElderPickAMonText
    end

FirePokeBallScript:
;   checkevent EVENT_ANABEL_IN_COMMUNITYCENTER
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
;   applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
;   applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_up
;   opentext
;   writetext AnabelTakesMudkipText
;   waitbutton
;   closetext
;   disappear GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
;   applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_down
;   applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_left
;   turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
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

AnabelTakesMudkipText:
    text "ANABEL: Then I'll"
    line "take MUDKIP!"
    done

WaterPokeBallScript:
;    checkevent EVENT_ANABEL_IN_COMMUNITYCENTER
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
;    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
;   applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
;  applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_up
;    opentext
;    writetext AnabelTakesTurtwigText
;    waitbutton
;    closetext
;    disappear GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
;    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_down
;    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_left
;    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_left
;    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
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

AnabelTakesTurtwigText:
    text "ANABEL: Then I'll"
    line "take TURTWIG!"
    done

GrassPokeBallScript:
;    checkevent EVENT_ANABEL_IN_COMMUNITYCENTER
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
;    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_up
;    opentext
;    writetext AnabelTakesCyndaquilText
;    waitbutton
;    waitbutton
;    closetext
;    disappear GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
;    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_down
;    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
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

AnabelTakesCyndaquilText:
    text "ANABEL: Then I'll"
    line "take CYNDAQUIL!"
    done

AnabelCutePokemonText:
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
    text "ELDER: Think it"
    line "over carefully."

    para "Your partner is"
    line "important."
    done

TakeGrassMonText:
    text "Take TURTWIG?"
    done

ChoseMonText:
    text "ELDER: I think"
    line "that's a great"
    cont "#MON too!"
    done

ElderAdventureText:
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
    text "ELDER: Good to"
    line "see you, <PLAYER>!"

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
    text "Wait, <PLAYER>!"
    line "Pick a #MON."
    done

ElderPickAMonText:
    text "Go on! Pick a"
    line "#MON."
    done

ElderMagicalWorldText:
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
