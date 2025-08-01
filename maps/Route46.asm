Route46_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 14,  5, DARK_CAVE_MOONFLOWER_ENTRANCE, 3
	warp_event  8,  4, HIDDEN_CAVE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_JUMPTEXT, Route46SignText
	bg_event  8,  3, BGEVENT_JUMPSTD, cavegrotto, HIDDENGROTTO_ROUTE_46

	def_object_events
	object_event 15, 13, SPRITE_HIKER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route46HikerScript, -1
	object_event 12, 19, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHikerBailey, -1
	object_event  4, 14, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCamperTed, -1
	object_event  2, 13, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPicnickerErin1, -1
	object_event  7, 26, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, Route46LassText, -1
	fruittree_event  7,  5, FRUITTREE_ROUTE_46_1, CHERI_BERRY, PAL_NPC_RED
	fruittree_event  8,  6, FRUITTREE_ROUTE_46_2, CHESTO_BERRY, PAL_NPC_PURPLE
	itemball_event  1, 15, X_SPEED, 1, EVENT_ROUTE_46_X_SPEED

Route46HikerScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ROLLOUT_INTRO
	iftruefwd Route46TutorRoute46Script
	writetext Route46HikerText
	waitbutton
	setevent EVENT_LISTENED_TO_ROLLOUT_INTRO
Route46TutorRoute46Script:
	writetext Text_Route46TutorRollout
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_Route46TutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval ROLLOUT
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_Route46TutorRefused

.NoSilverLeaf
	jumpopenedtext Text_Route46TutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_Route46TutorTaught

GenericTrainerCamperTed:
	generictrainer CAMPER, TED, EVENT_BEAT_CAMPER_TED, CamperTedSeenText, CamperTedBeatenText

	text "I did my best but"
	line "came up short."

	para "No excuses--I"
	line "admit I lost."
	done

TrainerPicnickerErin1:
	trainer PICNICKER, ERIN1, EVENT_BEAT_PICNICKER_ERIN, PicnickerErin1SeenText, PicnickerErin1BeatenText, 0, PicnickerErin1Script

PicnickerErin1Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_ERIN
	opentext
	checkflag ENGINE_ERIN_READY_FOR_REMATCH
	iftruefwd .WantsBattle
	checkcellnum PHONE_PICNICKER_ERIN
	iftruefwd Route46NumberAcceptedF
	checkevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskedAlready
	writetext PicnickerErinAfterBattleText
	promptbutton
	setevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	scall Route46AskNumber1F
	sjumpfwd .AskForNumber

.AskedAlready:
	scall Route46AskNumber2F
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_ERIN
	ifequalfwd $1, Route46PhoneFullF
	ifequalfwd $2, Route46NumberDeclinedF
	gettrainername PICNICKER, ERIN1, $0
	scall Route46RegisteredNumberF
	sjumpfwd Route46NumberAcceptedF

.WantsBattle:
	scall Route46RematchF
	winlosstext PicnickerErin1BeatenText, 0
	readmem wErinFightCount
	ifequalfwd 2, .Fight2
	ifequalfwd 1, .Fight1
	ifequalfwd 0, .LoadFight0
.Fight2:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .LoadFight1
.LoadFight0:
	loadtrainer PICNICKER, ERIN1
	startbattle
	reloadmapafterbattle
	loadmem wErinFightCount, 1
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, ERIN2
	startbattle
	reloadmapafterbattle
	loadmem wErinFightCount, 2
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, ERIN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	checkevent EVENT_ERIN_CALCIUM
	iftruefwd .HasCalcium
	checkevent EVENT_GOT_CALCIUM_FROM_ERIN
	iftruefwd .GotCalciumAlready
	scall Route46RematchGiftF
	verbosegiveitem CALCIUM
	iffalsefwd ErinNoRoomForCalcium
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjumpfwd Route46NumberAcceptedF

.GotCalciumAlready:
	end

.HasCalcium:
	opentext
	writetext PicnickerErin2BeatenText
	waitbutton
	verbosegiveitem CALCIUM
	iffalsefwd ErinNoRoomForCalcium
	clearevent EVENT_ERIN_CALCIUM
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjumpfwd Route46NumberAcceptedF

Route46AskNumber1F:
	jumpstd asknumber1f

Route46AskNumber2F:
	jumpstd asknumber2f

Route46RegisteredNumberF:
	jumpstd registerednumberf

Route46NumberAcceptedF:
	jumpstd numberacceptedf

Route46NumberDeclinedF:
	jumpstd numberdeclinedf

Route46PhoneFullF:
	jumpstd phonefullf

Route46RematchF:
	jumpstd rematchf

ErinNoRoomForCalcium:
	setevent EVENT_ERIN_CALCIUM
	jumpstd packfullf
	end

Route46RematchGiftF:
	jumpstd rematchgiftf

GenericTrainerHikerBailey:
	generictrainer HIKER, BAILEY, EVENT_BEAT_HIKER_BAILEY, HikerBaileySeenText, HikerBaileyBeatenText

	text "It's over. I don't"
	line "mind. We Hikers"
	cont "are like that."
	done

Route46HikerText:
	text "A Donphan charged"
	line "at me and I roll-"

	para "ed all the way"
	line "down here!"

	para "Still, it taught"
	line "me a lesson…"

	para "Be careful around"
	line "angry #MON!"
	done

Text_Route46TutorRollout:
	text "I'll teach your"
	line "#MON how to"

	para "use Rollout for"
	line "a Silver Leaf."
	done

Text_Route46TutorNoSilverLeaf:
	text "Ah well, you don't"
	line "have a Silver"
	cont "Leaf."
	done

Text_Route46TutorQuestion:
	text "Should I teach"
	line "your #MON"
	cont "Rollout?"
	done

Text_Route46TutorRefused:
	text "Suit yourself."
	done

Text_Route46TutorTaught:
	text "All done! Your"
	line "#MON learned"
	cont "to use Rollout!"
	done

HikerBaileySeenText:
	text "Awright! I'll show"
	line "you the power of"
	cont "mountain #MON!"
	done

HikerBaileyBeatenText:
	text "Mercy! You showed"
	line "me your power!"
	done

CamperTedSeenText:
	text "I'm raising #-"
	line "mon too!"

	para "Will you battle"
	line "with me?"
	done

CamperTedBeatenText: ; text > text
	text "Wha…?"
	done

PicnickerErin1SeenText:
	text "I raise #MON"
	line "too!"

	para "Will you battle"
	line "with me?"
	done

PicnickerErin1BeatenText:
	text "Oh, rats!"
	done

PicnickerErinAfterBattleText:
	text "I've been to many"
	line "Gyms, but the Gym"

	para "in Goldenrod is my"
	line "favorite."

	para "It's filled with"
	line "pretty flowers!"
	done

PicnickerErin2BeatenText:
	text "Aww… I keep losing"
	line "all the time!"

	para "I'll just have to"
	line "try harder!"

	para "Anyway, thanks for"
	line "battling me again"

	para "and again. Here's"
	line "that present from"
	cont "the other time."
	done

Route46SignText:
	text "Route 46"
	line "Mountain Rd. Ahead"
	done

Route46LassText:
	text "A dead end…?"

	para "Did I take the"
	line "wrong path?"

	para "I didn't know this"
	line "was only one way."
	done
