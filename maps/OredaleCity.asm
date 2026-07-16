OredaleCity_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 13, 23, OREDALE_POKECENTER_1F, 1
	warp_event 13, 31, OREDALE_TRADE_HOUSE, 1

    def_coord_events
	coord_event 10, 41, 0, OredaleSwinubQuestEvent_Left
	coord_event 11, 41, 0, OredaleSwinubQuestEvent_Right

    def_bg_events
	bg_event  9, 14, BGEVENT_JUMPTEXT, OredaleMuseumSignText
	bg_event 27, 16, BGEVENT_JUMPTEXT, CobbMainBuildingSignText
	bg_event 20, 35, BGEVENT_JUMPTEXT, OredaleSkiShopSignText
	bg_event 17, 48, BGEVENT_JUMPTEXT, OredaleGymSignText
	bg_event 35, 52, BGEVENT_JUMPTEXT, OredaleMineSignText
	bg_event 11, 38, BGEVENT_JUMPTEXT, OredaleCitySignText

    db 19 ; object events
	person_event SPRITE_SWINUB_OW, 17,  8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OredaleCitySwinub1Script, EVENT_SWINUB_1_FOUND
	person_event SPRITE_SWINUB_OW, 34, 17, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OredaleCitySwinub2Script, EVENT_SWINUB_2_FOUND
	person_event SPRITE_SWINUB_OW, 23, 32, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OredaleCitySwinub3Script, EVENT_SWINUB_3_FOUND
	person_event SPRITE_SWINUB_OW, 18, 21, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OredaleCitySwinub4Script, EVENT_SWINUB_4_FOUND
	person_event SPRITE_SWINUB_OW, 24, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OredaleCitySwinub5Script, EVENT_SWINUB_QUEST_FINISHED
	person_event SPRITE_TWIN_SNOWY, 36, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_ALWAYS_SET
	person_event SPRITE_TWIN_SNOWY, 24, 13, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, OredaleAntheaScript, EVENT_SWINUB_QUEST_FINISHED
	person_event SPRITE_SUPER_NERD, 15, 38, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC1Text, -1
	person_event SPRITE_ACE_TRAINER_F, 27, 28, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC2Text, -1
	person_event SPRITE_ENGINEER, 25, 17, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC3Text, -1
	person_event SPRITE_BOARDER, 29, 30, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC4Text, -1
	person_event SPRITE_OFFICER, 16, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCobbBuildingGuard1, -1
	person_event SPRITE_OFFICER, 16, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCobbBuildingGuard2, -1
	person_event SPRITE_BOARDER, 22, 10, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC5Text, -1
	person_event SPRITE_ENGINEER, 49, 29, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC6Text, -1
	person_event SPRITE_OFFICER, 52, 36, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleMineGuard, -1
	person_event SPRITE_ACE_TRAINER_F, 49, 21, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC7Text, -1
	person_event SPRITE_FAT_GUY, 17, 35, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC8Text, -1
	person_event SPRITE_SKIER, 35, 23, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleCityNPC9Text, -1
	
;	itemball_event 17, 31
;	itemball_event  8, 33

    const_def 1 ; object constants
    const OREDALE_SWINUB_1
    const OREDALE_SWINUB_2
    const OREDALE_SWINUB_3
    const OREDALE_SWINUB_4
    const OREDALE_SWINUB_5
    const OREDALE_ANTHEA_1
    const OREDALE_ANTHEA_2

; Quest Event
OredaleSwinubQuestEvent_Left:
    appear OREDALE_ANTHEA_1
    turnobject PLAYER, UP
    applyonemovement OREDALE_ANTHEA_1, step_down
    applyonemovement OREDALE_ANTHEA_1, slow_step_down
    pause 10
    turnobject OREDALE_ANTHEA_1, LEFT
    pause 15
    turnobject OREDALE_ANTHEA_1, RIGHT
    pause 15
    showtext BrownieText
    turnobject OREDALE_ANTHEA_1, DOWN
    showemote EMOTE_SHOCK, OREDALE_ANTHEA_1, 15
    applyonemovement OREDALE_ANTHEA_1, step_down
    applyonemovement OREDALE_ANTHEA_1, step_down
    sjumpfwd InitiateSwinubQuest

OredaleSwinubQuestEvent_Right:
    appear OREDALE_ANTHEA_1
    turnobject PLAYER, UP
    applyonemovement OREDALE_ANTHEA_1, step_down
    applyonemovement OREDALE_ANTHEA_1, slow_step_down
    pause 10
    turnobject OREDALE_ANTHEA_1, LEFT
    pause 15
    turnobject OREDALE_ANTHEA_1, RIGHT
    pause 15
    showtext BrownieText
    turnobject OREDALE_ANTHEA_1, DOWN
    showemote EMOTE_SHOCK, OREDALE_ANTHEA_1, 15
    applyonemovement OREDALE_ANTHEA_1, step_down
    applyonemovement OREDALE_ANTHEA_1, step_right
    applyonemovement OREDALE_ANTHEA_1, step_down
    sjumpfwd InitiateSwinubQuest

BrownieText:
    ntag " ??? "
    text "BROWNIE?"
    line "…<PAUSE>… Where are you?"
    done

InitiateSwinubQuest:
    opentext
    writetext SwinubQuestIntroText
    turnobject OREDALE_ANTHEA_1, LEFT
    pause 30
    faceplayer
    showemote EMOTE_SHOCK, OREDALE_ANTHEA_1, 15
    writetext SwinubQuestIdeaText
    waitbutton
    writetext SwinubQuestStartText
    waitbutton
    closetext
    showemote EMOTE_HEART, OREDALE_ANTHEA_1, 15
    clearevent EVENT_SWINUB_1_FOUND
    setevent EVENT_SWINUB_QUEST_STARTED
    setscene $1
    appear OREDALE_SWINUB_1
    readvar VAR_XCOORD
    ifequalfwd $0b, .Right
    applymovement OREDALE_ANTHEA_1, OredaleGirlLeaves_Movement
    disappear OREDALE_ANTHEA_1
    appear OREDALE_ANTHEA_2
    end

.Right
    applymovement OREDALE_ANTHEA_1, OredaleGirlLeaves2_Movement
    disappear OREDALE_ANTHEA_1
    appear OREDALE_ANTHEA_2
    end

OredaleGirlLeaves_Movement:
    step_up
    step_up
    step_up
    step_up
    step_end

OredaleGirlLeaves2_Movement:
    step_up
    step_left
    step_up
    step_up
    step_up
    step_end

SwinubQuestIntroText:
    ntag " ??? "
    text "Oh! Hi there!"

    para "…<PAUSE>Aww, you're not"
    line "BROWNIE!"

    para "…<PAUSE>…<PAUSE>…"

    para "Huh? Who's BROWNIE?"

    para "BROWNIE's my"
    line "SWINUB!"

    para "…<PAUSE>But he's lost."

    para "He ran off again,"
    line "but this time,"
    
    para "he was too fast"
    line "for me to catch"
    cont "up to him!"

    para "I can usually"
    line "catch him myself,"
    cont "but<PAUSE>………"
    done

SwinubQuestIdeaText:
    ntag " ??? "
    text "Wait! I know!"

    para "Could you look for"
    line "BROWNIE for me,"
    
    para "uhhh<PAUSE>… what's"
    line "your name?"

    para "<PLAYER>? Teehee!"

    para "That's a funny"
    line "name!"

    para "…<PAUSE>My name is"
    line "ANTHEA!"
    done

SwinubQuestStartText:
    ntag " ANTHEA "
    text "Anyway, <PLAYER>,"
    line "won't you please"
    cont "find BROWNIE"
    cont "for me?"

    para "…<PAUSE>…<PAUSE>…"

    para "…<PAUSE>…You will?"

    para "Thank you!"
    done

; Swinub 1
OredaleCitySwinub1Script:
    readvar VAR_FACING
    ifequalfwd DOWN, PlayerDown1
    turnobject OREDALE_SWINUB_1, UP
    pause 15
    turnobject OREDALE_SWINUB_1, DOWN
    pause 15
    turnobject OREDALE_SWINUB_1, LEFT
;   cry SWINUB
    showemote EMOTE_SHOCK, OREDALE_SWINUB_1, 15
OredaleSwinub1RunsScript:
    turnobject OREDALE_SWINUB_1, DOWN
    applymovement OREDALE_SWINUB_1, OredaleSwinub1Leaves_Movement
    setevent EVENT_SWINUB_1_FOUND
    clearevent EVENT_SWINUB_2_FOUND
    disappear OREDALE_SWINUB_1
    appear OREDALE_SWINUB_2
    end

PlayerDown1:
    turnobject OREDALE_SWINUB_1, LEFT
    pause 15
    turnobject OREDALE_SWINUB_1, RIGHT
    pause 15 
    turnobject OREDALE_SWINUB_1, UP
    cry SWINUB
    showemote EMOTE_SHOCK, OREDALE_SWINUB_1, 15
    sjump OredaleSwinub1RunsScript

OredaleSwinub1Leaves_Movement:
    jump_step_down
    jump_step_down
    jump_step_down
    step_end

; Swinub 2
OredaleCitySwinub2Script:
    readvar VAR_FACING
    ifequalfwd RIGHT, .right
    turnobject OREDALE_SWINUB_2, LEFT
    pause 15
    turnobject OREDALE_SWINUB_2, UP
    pause 15
    turnobject OREDALE_SWINUB_2, DOWN
    showemote EMOTE_SHOCK, OREDALE_SWINUB_2, 15
    applymovement OREDALE_SWINUB_2, Swinub2Runs_1Movement
    setevent EVENT_SWINUB_2_FOUND
    clearevent EVENT_SWINUB_3_FOUND
    disappear OREDALE_SWINUB_2
    end

.right
    turnobject OREDALE_SWINUB_2, DOWN
    pause 15
    turnobject OREDALE_SWINUB_2, UP
    pause 15
    faceplayer
    showemote EMOTE_SHOCK, OREDALE_SWINUB_2, 15
    applymovement OREDALE_SWINUB_2, Swinub2Runs_2Movement
    setevent EVENT_SWINUB_2_FOUND
    clearevent EVENT_SWINUB_3_FOUND
    disappear OREDALE_SWINUB_2
    appear OREDALE_SWINUB_3
    end

Swinub2Runs_1Movement:
    step_left
Swinub2Runs_2Movement:
    jump_step_down
    jump_step_right
    fast_step_right
    fast_step_right
    fast_step_right
    fast_step_right
    fast_step_right
    step_end

; Swinub 3
OredaleCitySwinub3Script:
    readvar VAR_FACING
    ifequalfwd UP, .up
    ifequalfwd DOWN, .down
    turnobject OREDALE_SWINUB_3, UP
    pause 15
    turnobject OREDALE_SWINUB_3, DOWN
    pause 15
    faceplayer
    showemote EMOTE_SHOCK, OREDALE_SWINUB_3, 15
    applymovement OREDALE_SWINUB_3, Swinub3Runs_Movement
    setevent EVENT_SWINUB_3_FOUND
    clearevent EVENT_SWINUB_4_FOUND
    disappear OREDALE_SWINUB_3
    appear OREDALE_SWINUB_4
    end

.up
    turnobject OREDALE_SWINUB_3, LEFT
    pause 15
    turnobject OREDALE_SWINUB_3, RIGHT
    pause 15
    faceplayer
    showemote EMOTE_SHOCK, OREDALE_SWINUB_3, 15
    applymovement OREDALE_SWINUB_3, Swinub3Runs_Movement
    setevent EVENT_SWINUB_3_FOUND
    clearevent EVENT_SWINUB_4_FOUND
    disappear OREDALE_SWINUB_3
    appear OREDALE_SWINUB_4
    end

.down
    turnobject OREDALE_SWINUB_3, LEFT
    pause 15
    turnobject OREDALE_SWINUB_3, RIGHT
    pause 15
    faceplayer
    showemote EMOTE_SHOCK, OREDALE_SWINUB_3, 15
    applymovement OREDALE_SWINUB_3, Swinub3Runs_2Movement
    setevent EVENT_SWINUB_3_FOUND
    clearevent EVENT_SWINUB_4_FOUND
    disappear OREDALE_SWINUB_3
    appear OREDALE_SWINUB_4
    end

Swinub3Runs_2Movement:
    slow_step_right
Swinub3Runs_Movement:
    slow_step_up
    jump_step_up
    fast_step_left
    fast_step_left
    fast_step_left
    fast_step_left
    fast_step_left
    fast_step_left
    step_end

; Swinub 4
OredaleCitySwinub4Script:
    readvar VAR_FACING
    ifequalfwd DOWN, .down
    turnobject OREDALE_SWINUB_4, UP
    pause 15
    turnobject OREDALE_SWINUB_4, DOWN
    pause 15
.finish
    faceplayer
    showemote EMOTE_SHOCK, OREDALE_SWINUB_4, 15
    applymovement OREDALE_SWINUB_4, Swinub4Runs_Movement
    setevent EVENT_SWINUB_4_FOUND
    setevent EVENT_ALL_SWINUBS_FOUND
    clearevent EVENT_SWINUB_QUEST_FINISHED
    disappear OREDALE_SWINUB_4
    appear OREDALE_SWINUB_5
    end

.down
    turnobject OREDALE_SWINUB_4, LEFT
    pause 15
    turnobject OREDALE_SWINUB_4, RIGHT
    pause 15
    sjump .finish
    end

Swinub4Runs_Movement:
    jump_step_down
    step_down
    jump_step_down
    step_end

; Swinub 5
OredaleCitySwinub5Script:
    faceplayer
    cry SWINUB
    jumpthistext

BrowniePokeCenterText:
    ntag " BROWNIE "
    
    text "Hrororghh!"

    para "BROWNIE snorts"
    line "happily at you."
    done

OredaleAntheaScript:
    checkevent EVENT_ALL_SWINUBS_FOUND
    iftruefwd FinishedAntheaQuest
    faceplayer
    jumpthistext

OredaleAntheaBrownieText:
    ntag " ANTHEA "

    text "Aren't you going"
    line "to find BROWNIE"
    cont "for me?"
    done

FinishedAntheaQuest:
    faceplayer
    opentext
    writetext AntheaFoundSwinubText
    waitbutton
    closetext
    showemote OREDALE_ANTHEA_2, EMOTE_HEART, 15
    pause 5
    opentext
    writetext AntheaThankYouText
    promptbutton
    verbosegivekeyitem CARD_KEY ; rusty key placeholder
    writetext AntheaGoodbyeText
    waitbutton
    closetext
    turnobject OREDALE_ANTHEA_2, RIGHT
    pause 10
    turnobject OREDALE_SWINUB_5, LEFT
    pause 10
    setevent EVENT_SWINUB_QUEST_FINISHED
    follow OREDALE_SWINUB_5, OREDALE_ANTHEA_2
    applymovement OREDALE_SWINUB_5, SwinubAndAntheaLeave_Movement
    disappear OREDALE_ANTHEA_2
    disappear OREDALE_SWINUB_5
    end

AntheaFoundSwinubText:
    ntag " ANTHEA "

    text "Yay! You found"
    line "BROWNIE for me!"

    para "Thank you so"
    line "much!"
    done

AntheaThankYouText:
    text "Here, this is"
    line "for you."

    para "It's some old rusty"
    line "key I found when"
    cont "I was exploring"
    cont "my GYM."
    done

AntheaGoodbyeText:
    ntag " ANTHEA "

    text "I wonder what it"
    line "unlocks!"

    para "…<PAUSE>…"

    para "One more thing"
    line "before I go."

    para "Are you a #MON"
    line "TRAINER?"

    para "…<PAUSE>…"

    para "I knew it!"
    line "You should come"
    cont "to the GYM."

    para "The leader is an"
    line "amazing battler,"
    cont "trust me!"
    
    para "Anyway, see you"
    line "around …<PAUSE>uhhh<PAUSE>…"

    para "<RIVAL>? <PAUSE>…Wait, that's"
    line "not your name…"

    para "Oh yeah! You're"
    line "<PLAYER>!"

    para "<RIVAL> was that"
    line "mean kid."

    para "Anyway, bye bye!"
    done

SwinubAndAntheaLeave_Movement:
    step_right
    step_right
    step_right
    step_right
    step_right
    step_right
    step_end

OredaleCityNPC1Text:
    text "U<PAUSE>u<PAUSE>ugh!"

    para "I'll DIE if I"
    line "can't figure out"
    cont "what item is on"
    cont "the other side of"
    cont "that fence."
    done

OredaleCityNPC2Text:
    text "H-<PAUSE>Hey there!"

    para "H-<PAUSE>H-<PAUSE>Huh?"
    line "Why a-<PAUSE>am I out in"
    cont "the c-<PAUSE>c-<PAUSE>cold?" 

    para "I n-<PAUSE>n-<PAUSE>need fresh"
    line "a-<PAUSE>air!"
    done

OredaleCityNPC3Text:
    text "I'm on break from"
    line "working in the"
    cont "mine."

    para "Even with the new"
    line "machines we got,"
    cont "it's still hard"
    cont "work."
    done

OredaleCityNPC4Text:
    text "I got my snowboard"
    line "at the SKI SHOP."

    para "After I tried it,"
    line "I came back in to"
    cont "tell them…"

    para "They ought to"
    line "stick to skis!"
    done

OredaleCityNPC5Text:
    text "These days, both"
    line "the COBB BUILDING"
    cont "and the mine are"
    cont "always closed."

    para "Just a few months"
    line "ago, they offered"
    cont "tours daily for"
    cont "visitors!"

    para "I wonder what's"
    line "changed…"
    done

OredaleCityNPC6Text:
    text "I used to work"
    line "at the train"
    cont "station,"

    para "but ever since"
    line "they shut it down"
    cont "last year,"

    para "I've been working"
    line "in the mine."
    done

OredaleCobbBuildingGuard1:
    text "Sorry, kid."

    para "The COBB BUILDING's"
    line "not open to the"
    cont "public right now."

    para "I can only let"
    line "you in if you have"
    cont "a COBB ID."
    done

OredaleCobbBuildingGuard2:
    text "Please don't"
    line "loiter around."

    para "I can't let folks"
    line "who don't work at"
    cont "COBB CORP. in to"
    cont "the building."
    done

OredaleMineGuard:
    text "Sorry, kid."

    para "The OREDALE MINE"
    line "is closed to the"
    cont "public right now."
    done

OredaleCityNPC7Text:
    text "Believe it or"
    line "not, the OREDALE"
    cont "GYM specializes"
    cont "in GRASS-TYPES!"

    para "It's not what"
    line "you'd expect for"
    cont "a gym way out in"
    cont "the cold."
    done

OredaleCityNPC8Text:
    text "I've lost my"
    line "COBB ID!"

    para "Now they won't"
    line "let me into"
    cont "the building!"
    
    para "How am I going"
    line "to get to work"
    cont "now?"
    done

OredaleCityNPC9Text:
    text "The SKI SHOP is"
    line "great!"

    para "It's so cozy"
    line "inside!"

    para "…<PAUSE>…<PAUSE>What?"

    para "Why am I outside?"
    line "Uhh…<PAUSE>…"

    para "Good question!"
    done

OredaleMuseumSignText:
    text "OREDALE MUSEUM"

    para "Learn about the"
    line "ancient past of"
    cont "the ATUVA REGION!"
    done

CobbMainBuildingSignText:
    text "COBB CORP."
    line "MAIN BUILDING"

    para "The heart of good"
    line "quality industry!"
    done

OredaleSkiShopSignText:
    text "OREDALE SKI SHOP"
    
    para "Get your quality"
    line "winter sports"
    cont "equipment here!"
    done

OredaleGymSignText:
    text "OREDALE GYM"

    para "LEADER: ANTHEA"

    para "The budding"
    line "GRASS TRAINER!"
    done

OredaleMineSignText:
    text "OREDALE MINE"

    para "NOT open to the"
    line "public!"
    done

OredaleCitySignText:
    text "OREDALE CITY"

    para "A home to industry"
    line "and prosperity."
    done
