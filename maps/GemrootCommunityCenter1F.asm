GemrootCommunityCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 5, 11, GEMROOT_TOWN, 5  ; 1
	warp_event 6, 11, GEMROOT_TOWN, 5  ; 2

    def_coord_events
	coord_event  5,  5, 0, PlayerWalksToAnabel1
	coord_event  6,  5, 0, PlayerWalksToAnabel2
	coord_event  5,  4, 0, PickYourMonScript
	coord_event  6,  4, 0, PickYourMonScript

    def_bg_events
	bg_event  0, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  1, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  2, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  3, 5, BGEVENT_JUMPTEXT, GemrootCommunityFoodText
	bg_event  9, 8, BGEVENT_JUMPTEXT, GemrootAncientMuralText
	bg_event 10, 8, BGEVENT_JUMPTEXT, GemrootAncientMuralText
	bg_event  8, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event  9, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 10, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText
	bg_event 11, 5, BGEVENT_JUMPTEXT, GemrootHistoryBooksText

    db 7 ; object events
	person_event  SPRITE_ELDER,  1,  7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GemrootElderScript, -1
	object_event  4,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_POKE_BALL, OBJECTTYPE_SCRIPT, 0, FirePokeBallScript, EVENT_FIRE_POKEBALL_IN_COMMUNITYCENTER
	object_event  5,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_DECO_ITEM, OBJECTTYPE_SCRIPT, 0, WaterPokeBallScript, EVENT_WATER_POKEBALL_IN_COMMUNITYCENTER
	object_event  6,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_KEY_ITEM, OBJECTTYPE_SCRIPT, 0, GrassPokeBallScript, EVENT_GRASS_POKEBALL_IN_COMMUNITYCENTER
	person_event  SPRITE_LASS, 3,  4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GemrootAnabelScript, EVENT_ANABEL_IN_COMMUNITYCENTER
	person_event  SPRITE_SAGE, 6,  9, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CommunityCenterSageText, -1
	person_event  SPRITE_POKEFAN_F, 6,  1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CommunityCenterLadyText, -1

    object_const_def
    const GEMROOT_COMMUNITYCENTER_ELDER
    const GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
    const GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
    const GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
    const GEMROOT_COMMUNITYCENTER_ANABEL

PlayerWalksToAnabel1:
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_up
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
    sjumpfwd GemrootElderGivesMonScript
    end

PlayerWalksToAnabel2:
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, RIGHT
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_left
    turnobject PLAYER, UP
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, UP
    sjumpfwd GemrootElderGivesMonScript
    end

PickYourMonScript:
    jumptext ElderWaitPickMonText
    applyonemovement PLAYER, step_up
    end

GemrootElderGivesMonScript:
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, DOWN
    opentext
    writetext ElderGemrootTraditionText
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, DOWN
    end

GemrootElderScript:
    faceplayer
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftruefwd .GotMon
    opentext
    writetext ElderPickAMonText
    closetext
    end

.GotMon
    opentext
    writetext ElderMagicalWorldText
    closetext
    end

GemrootAnabelScript:
    faceplayer
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext AnabelCutePokemonText
    jumptext ElderPickAMonText
    end

FirePokeBallScript:
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
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_up
    opentext
    writetext AnabelTakesTotodileText
    closetext
    disappear GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, DOWN
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, UP
    opentext
    writetext ElderAdventureText
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    end

TakeFireMonText:
    text "Take Cyndaquil?"
    done

AnabelTakesTotodileText:
    text "Anabel: Then I'll"
    line "take Totodile!"
    done

WaterPokeBallScript:
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext BelongsToElderText
    refreshscreen
    pokepic TOTODILE
    cry TOTODILE
    waitbutton
    closepokepic
    opentext
    writetext TakeWaterMonText
    yesorno
    iffalse_jumpopenedtext DidntChooseMonText
    disappear GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
    setevent EVENT_GOT_TOTODILE_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke TOTODILE, PLAIN_FORM, 5, ORAN_BERRY
    setscene $1
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_up
    opentext
    writetext AnabelTakesChikoritaText
    closetext
    disappear GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, DOWN
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, UP
    opentext
    writetext ElderAdventureText
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    end

TakeWaterMonText:
    text "Take Totodile?"
    done

AnabelTakesChikoritaText:
    text "Anabel: Then I'll"
    line "take Chikorita!"
    done

GrassPokeBallScript:
    checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
    iftrue_jumptext BelongsToElderText
    refreshscreen
    pokepic CHIKORITA
    cry CHIKORITA
    waitbutton
    closepokepic
    opentext
    writetext TakeGrassMonText
    yesorno
    iffalse_jumpopenedtext DidntChooseMonText
    disappear GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL
    setevent EVENT_GOT_CHIKORITA_FROM_ELDER
    writetext ChoseMonText
    promptbutton
    waitsfx
    givepoke CHIKORITA, PLAIN_FORM, 5, ORAN_BERRY
    setscene $1
    setevent EVENT_GOT_A_POKEMON_FROM_ELDER
    closetext
    turnobject PLAYER, DOWN
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, step_up
    opentext
    writetext AnabelTakesCyndaquilText
    closetext
    disappear GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
    applyonemovement GEMROOT_COMMUNITYCENTER_ANABEL, slow_step_right
    turnobject GEMROOT_COMMUNITYCENTER_ANABEL, DOWN
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, UP
    opentext
    writetext ElderAdventureText
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_right
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_up
    end

AnabelTakesCyndaquilText:
    text "Anabel: Then I'll"
    line "take Cyndaquil!"
    done

AnabelCutePokemonText:
    text "I think your"
    line "#mon is cute,"
    cont "too!"
    done

BelongsToElderText:
    text "It's a #mon"
    line "that belongs to"
    cont "the Elder."
    done

DidntChooseMonText:
    text "Elder: Think it"
    line "over carefully."

    para "Your partner is"
    line "important."
    done

TakeGrassMonText:
    text "Take Chikorita?"
    done

ChoseMonText:
    text "Elder: I think"
    line "that's a great"
    cont "#mon too!"
    done

ElderAdventureText:
    text "Well, children,"
    line "You are about to" 
    
    para "set out on the"
    line "biggest journey of"
    cont "your life."

    para "It will be full of"
    line "challenges to"
    cont "overcome."

    para "But it will also"
    line "be full of good,"
    cont "happy times to"
    cont "remember."

    para "I wish you luck."
    done

ElderGemrootTraditionText:
    text "Elder: Hello,"
    line "children. Today"
    cont "is the day"

    para "you get to pick"
    line "your first"
    cont "#mon."

    para "I'm very excited,"
    line "as this is the"

    para "100th year of"
    line "holding up our"

    para "ancient tradition"
    line "here in Gemroot"
    cont "Town."

    para "Ah, the tradition?"
    line "Every year, the"

    para "Elder of the town"
    line "chooses two"

    para "young children to"
    line "become #mon"
    cont "trainers."

    para "Each one comes at"
    line "a different time"
    cont "to choose their"
    cont "#mon."

    para "Go on! Pick a"
    line "#mon."
    done

ElderWaitPickMonText:
    text "Wait, <PLAYER>!"
    line "Pick a #mon."
    done

ElderPickAMonText:
    text "Go on! Pick a"
    line "#mon."
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

    para "ancient dragon"
    line "#mon."
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
