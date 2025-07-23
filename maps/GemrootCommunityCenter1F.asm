GemrootCommunityCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 5, 11, GEMROOT_TOWN, 5  ; 1
	warp_event 6, 11, GEMROOT_TOWN, 5  ; 2

    def_coord_events
	coord_event 5, 4, 0, PlayerWalksToElder1
	coord_event 6, 4, 0, PlayerWalksToElder2
	coord_event 5, 3, 0, PickYourMonScript
    coord_event 6, 3, 0, PickYourMonScript

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

    def_object_events
	object_event 7, 1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, GemrootElderScript, -1
	object_event 4, 1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_POKE_BALL, OBJECTTYPE_SCRIPT, 0, FirePokeBallScript, EVENT_FIRE_POKEBALL_IN_COMMUNITYCENTER
	object_event 5, 1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_DECO_ITEM, OBJECTTYPE_SCRIPT, 0, WaterPokeBallScript, EVENT_WATER_POKEBALL_IN_COMMUNITYCENTER
	object_event 6, 1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_KEY_ITEM, OBJECTTYPE_SCRIPT, 0, GrassPokeBallScript, EVENT_GRASS_POKEBALL_IN_COMMUNITYCENTER

    object_const_def
    const GEMROOT_COMMUNITYCENTER_ELDER
    const GEMROOT_COMMUNITYCENTER_FIRE_POKEBALL
    const GEMROOT_COMMUNITYCENTER_WATER_POKEBALL
    const GEMROOT_COMMUNITYCENTER_GRASS_POKEBALL

PlayerWalksToElder1:
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_right
    applyonemovement PLAYER, step_right
    applyonemovement PLAYER, step_up
    sjumpfwd GemrootElderGivesMonScript
    end

PlayerWalksToElder2:
    applyonemovement PLAYER, step_up
    applyonemovement PLAYER, step_right
    applyonemovement PLAYER, step_up
    sjumpfwd GemrootElderGivesMonScript
    end

PickYourMonScript:
    jumptext ElderWaitPickMonText
    end

GemrootElderGivesMonScript:
    opentext
    writetext ElderGemrootTraditionText
    closetext
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

FirePokeBallScript:
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
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject PLAYER, RIGHT
    opentext
    writetext ElderAdventureText
    closetext
    end

TakeFireMonText:
    text "Take Cyndaquil?"
    done

WaterPokeBallScript:
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
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_left
    turnobject PLAYER, RIGHT
    opentext
    writetext ElderAdventureText
    closetext
    end

TakeWaterMonText:
    text "Take Totodile?"
    done

GrassPokeBallScript:
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
    closetext
    applyonemovement GEMROOT_COMMUNITYCENTER_ELDER, slow_step_down
    turnobject GEMROOT_COMMUNITYCENTER_ELDER, LEFT
    turnobject PLAYER, RIGHT
    opentext
    writetext ElderAdventureText
    closetext
    end

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
    text "Well, <PLAYER>,"
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
    line "<PLAYER>. Today"
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
