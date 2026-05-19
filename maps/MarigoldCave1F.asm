MarigoldCave1F_MapScriptHeader:
    def_scene_scripts
	scene_script MarigoldCaveNoopScene

    def_callbacks

    def_warp_events
	warp_event 21,  5, ROUTE_3, 3
	warp_event  3, 25, MARIGOLD_CAVE_2F, 1
	warp_event 35,  3, MARIGOLD_CAVE_2F, 2
	warp_event 33,  5, MARIGOLD_CAVE_1F, 5
	warp_event 35, 13, MARIGOLD_CAVE_1F, 4
	warp_event 33, 27, MARIGOLD_PORT, 1
	warp_event 10, 21, MARIGOLD_CAVE_1F, 1
	warp_event 10, 15, MARIGOLD_CAVE_1F, 1
	warp_event 15,  4, MARIGOLD_CAVE_1F, 1
	warp_event 35,  2, MARIGOLD_CAVE_1F, 1

    def_coord_events
	coord_event 34, 14, 0, MarigoldCaveSableyeEvent

    def_bg_events
	bg_event 21, 24, BGEVENT_ITEM + GREAT_BALL, EVENT_MARIGOLD_CAVE_1F_HIDDEN_GREAT_BALL
	bg_event 34, 24, BGEVENT_ITEM + BIG_PEARL, EVENT_MARIGOLD_CAVE_1F_HIDDEN_BIG_PEARL
	bg_event 21,  2, BGEVENT_ITEM + PARALYZEHEAL, EVENT_MARIGOLD_CAVE_1F_HIDDEN_PARALYZEHEAL

    db 16 ; object events
	object_event 32, 12, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SABLEYE, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, 0, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	person_event SPRITE_RIVAL, 15, 31, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, 0, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	person_event SPRITE_ROCKET, 13, 32, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	person_event SPRITE_ROCKET_GIRL, 15, 34, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	person_event SPRITE_NIDOKING_OW, 15, 33, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, 0, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	person_event SPRITE_CORSOLA_OW, 15, 32, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_CORSOLA, PERSONTYPE_SCRIPT, 0, 0, EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	object_event 32, 12, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_RED, PERSONTYPE_SCRIPT, 0, 0, EVENT_ALWAYS_SET
;	person_event SPRITE_ROCKET,  2, 32
;	person_event SPRITE_ROCKET_GIRL, 13, 10
	smashrock_event 31, 20
	smashrock_event 10,  9
	smashrock_event 33, 21
	person_event SPRITE_HIKER, 23, 17, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHikerRussell, -1
	person_event SPRITE_HIKER, 15,  9, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerHikerDaniel, -1
	person_event SPRITE_JUGGLER, 24, 11, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerJugglerFritz, -1
	itemball_event 21, 23, GREAT_BALL, 1, EVENT_MARIGOLD_CAVE_1F_GREAT_BALL
	itemball_event 31,  4, X_ATTACK, 1, EVENT_MARIGOLD_CAVE_1F_X_ATTACK
	itemball_event 15,  2, POTION, 1, EVENT_MARIGOLD_CAVE_1F_POTION
	itemball_event  5, 20, AWAKENING, 1, EVENT_MARIGOLD_CAVE_1F_AWAKENING

	const_def 1 ; object constants
	const MARIGOLD_CAVE_SABLEYE
	const MARIGOLD_CAVE_RIVAL
	const MARIGOLD_CAVE_GRUNT_1
	const MARIGOLD_CAVE_GRUNT_2
	const MARIGOLD_CAVE_NIDOKING
	const MARIGOLD_CAVE_CORSOLA
	const MARIGOLD_CAVE_POKEBALL

MarigoldCaveNoopScene:
	end

MarigoldCaveSableyeEvent:
	pause 5
	turnobject PLAYER, DOWN
	setscene $1
	opentext
	writetext .GruntNidokingText
	waitbutton
	closetext
	cry NIDOKING
	pause 5
	applymovement MARIGOLD_CAVE_NIDOKING, MarigoldCaveNidokingAttack_Movement
	waitsfx
	cry CORSOLA
	disappear MARIGOLD_CAVE_CORSOLA
	waitsfx
	opentext
	writetext MarigoldCaveRivalText1
	waitbutton
	closetext
	pause 10
	showtext .NidokingReturnText
	disappear MARIGOLD_CAVE_NIDOKING
	pause 5
	turnobject MARIGOLD_CAVE_GRUNT_2, UP
	opentext
	writetext MarigoldCaveGruntBeforeBattleText
	waitbutton
	closetext
	loadtrainer GRUNTF, 2
	winlosstext BeatenText, 0
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_INDIGO_MARIGOLD_CAVE
	sjumpfwd MarigoldAfterBeatingIndigo
	end

.GruntNidokingText:
	text "GRUNT A: You made"
	line "me do this, kid."

	para "NIDOKING, HYPER"
	line "BEAM!"
	done

.NidokingReturnText:
	text "NIDOKING, rest up."
	done

MarigoldCaveRivalText1:
	text "<RIVAL>: CORSOLA!"

	para "… …"
	done

MarigoldCaveGruntBeforeBattleText:
	text "Why are you"
	line "interfering?"

	para "I've had enough"
	line "with kids trying"
	cont "to stop TEAM"
	cont "INDIGO!"
	done

BeatenText:
	text "Shucks!"
	done

MarigoldCaveNidokingAttack_Movement:
	fix_facing
	step_left
	step_right
	remove_fixed_facing
	step_end

MarigoldAfterBeatingIndigo:
	opentext
	writetext MarigoldCave1FGruntAfterBattleText
	waitbutton
	closetext
	playsound SFX_MASTER_BALL
	disappear MARIGOLD_CAVE_SABLEYE
	appear MARIGOLD_CAVE_POKEBALL
	pause 10
	waitsfx
	disappear MARIGOLD_CAVE_POKEBALL
	applyonemovement MARIGOLD_CAVE_GRUNT_1, slow_step_down
	turnobject MARIGOLD_CAVE_GRUNT_2, LEFT
	showtext MarigoldCaveGruntCaughtItText
	applymovement MARIGOLD_CAVE_GRUNT_2, MarigoldCaveGruntWalksToGrunt_Movement
	showtext MarigoldCaveGruntGreatText
	turnobject MARIGOLD_CAVE_GRUNT_2, DOWN
	showtext MarigoldCaveGruntByeText
	follow MARIGOLD_CAVE_GRUNT_2, MARIGOLD_CAVE_GRUNT_1
	applymovement MARIGOLD_CAVE_GRUNT_2, MarigoldCaveGruntsLeave_Movement
	disappear MARIGOLD_CAVE_GRUNT_1
	disappear MARIGOLD_CAVE_GRUNT_2
	end

MarigoldCave1FGruntAfterBattleText:
	text "Hmph! If only my"
	line "NIDOKING hadn't"
	cont "had to recharge"

	para "from its HYPER"
	line "BEAM, you'd be"
	cont "running to the"

	para "#MON CENTER!"

	para "Whatever."

	para "We've got what we"
	line "need anyways."
	done

MarigoldCaveGruntCaughtItText:
	text "GRUNT B: Okay."
	line "I caught it."
	done

MarigoldCaveGruntGreatText:
	text "GRUNT A: Perfect."

	para "We'll head out."
	line "This was a great"
	cont "success."
	done

MarigoldCaveGruntByeText:
	text "GRUNT A: And you"
	line "two."

	para "Don't think you"
	line "did anything this"
	cont "time, because"
	cont "you failed."

	para "We've already"
	line "caught the first-"

	para "SHOOT! I almost"
	line "said too much."

	para "Anyway… …"

	para "You'd be better"
	line "off not messing"
	cont "with our plans."
	done

MarigoldCaveGruntWalksToGrunt_Movement:
	step_left
	step_left
	turn_head_up
	step_end

MarigoldCaveGruntsLeave_Movement:
	step_down
	step_down
	step_down	
	step_down
	step_down
	step_down
	step_end

GenericTrainerHikerRussell:
	generictrainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText

	text "All right, then!"
	line "I've decided."

	para "I'm not leaving"
	line "until my #MON"
	cont "get tougher!"
	done

GenericTrainerHikerDaniel:
	generictrainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText

    text "Wow! You beat a"
    line "GYM LEADER?"

    para "No wonder you"
    line "could beat me!"
	done

GenericTrainerJugglerFritz:
	generictrainer JUGGLER, FRITZ, EVENT_BEAT_JUGGLER_FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText

	text "No more ships for"
	line "me. Next time,"

	para "I'm taking the"
	line "Magnet Train."
	done

HikerRussellSeenText:
	text "You're headed to"
	line "MARIGOLD, are you?"

	para "Let my #MON see"
	line "if you are good"
	cont "enough to battle."
	done

HikerRussellBeatenText:
	text "Oh, oh, oh!"
	done

HikerDanielSeenText:
	text "Whoa! What a"
	line "surprise!"

	para "I didn't expect to"
	line "see anyone here!"
	done

HikerDanielBeatenText:
	text "Whoa! I'm beaten"
	line "big time!"
	done

JugglerFritzSeenText:
	text "Hey!"
	line "Watch this!"
	done

JugglerFritzBeatenText:
    text "Shoot! I'm"
    line "beaten!"
	done
