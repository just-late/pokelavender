BlossomGameCorner_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  5, 13, BLOSSOM_CITY, 2
	warp_event  4, 13, BLOSSOM_CITY, 2

    def_coord_events
    
    def_bg_events
	bg_event  9, 12, BGEVENT_READ, BlossomGameCornerCardFlipScript
;	bg_event  8,  1, BGEVENT_READ, BlossomGameCornerPianoLoScript
;	bg_event  9,  1, BGEVENT_READ, BlossomGameCornerPianoHiScript
	bg_event  7,  3, BGEVENT_LEFT, BlossomGameCornerBehindPianoScript
	bg_event 13, 12, BGEVENT_READ, BlossomGameCornerSlotsScript
	bg_event 13, 11, BGEVENT_READ, BlossomGameCornerLuckySlotsScript
	bg_event 13, 10, BGEVENT_READ, BlossomGameCornerSlotsScript
	bg_event  5,  9, BGEVENT_READ, BlossomGameCornerCoolerScript
	bg_event  4,  8, BGEVENT_READ, OldFlyerScript
	

    db 9 ; object events
	person_event SPRITE_SAILOR, 10,  1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, GameCornerBartenderScript, -1
	person_event SPRITE_BURGLAR,  8, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_ROCKER, 12,  8, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomGameCornerNPC1Text, -1
	person_event SPRITE_FAT_GUY, 11, 12, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, (1 << DAY) | (1 << NITE), PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, BlossomGameCornerNPC2Text, -1
	person_event SPRITE_POKEFAN_F,  8,  8, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, BlossomGameCornerBoozeSellerScript, -1
	person_event SPRITE_BIRD_KEEPER, 12, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_BEAUTY, 11,  3, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_ORANGE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_DITTO_TILES_2, 12,  9, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, BlossomGameCornerCardFlipScript, -1
	person_event SPRITE_DITTO_TILES_2,  8,  7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, BlossomGameCornerBoozeSellerScript, -1

	object_const_def
	const GAMECORNER_BARTENDER

BlossomGameCornerBehindPianoScript:
	jumptext GameCornerPianoGraffitiText

GameCornerBartenderScript:
	checkkeyitem COIN_CASE
	iftruefwd .CoinShop
	showtext BartenderCoinCaseText
	verbosegivekeyitem COIN_CASE
	end

.CoinShop:
	jumpstd gamecornercoinvendor
	end

BlossomGameCornerCoolerScript:
	showemote EMOTE_SHOCK, GAMECORNER_BARTENDER, 15
	showtext BartenderCoolerText1
	applymovement PLAYER, GameCornerWalksToCounter_Movement
	showtext BartenderCoolerText2
	end

BlossomGameCornerBoozeSellerScript:
	pokemart MARTTYPE_SHADY, MART_GAMECORNER_DRINKS
	end

BlossomGameCornerCardFlipScript:
	refreshscreen
	special Special_CardFlip
	endtext

BlossomGameCornerSlotsScript:
	random 6
	ifequalfwd 0, BlossomGameCornerLuckySlotsScript
	refreshscreen
	setval FALSE
	special Special_SlotMachine
	endtext

BlossomGameCornerLuckySlotsScript:
	refreshscreen
	setval TRUE
	special Special_SlotMachine
	endtext

OldFlyerScript:
	opentext
	writetext BlossomGameCornerOldFlyerYesNoText
	yesorno
	iffalsefwd .end
	jumpopenedtext OldFlyerText

.end
	closetext
	end

BartenderCoinCaseText:
	text "Welcome to"
	line "MEOWTH's PLACE."

	para "You'll need a"
	line "COIN CASE if you"
	cont "want to play."

	para "Here,"
	line "on the house."
	done

BartenderCoolerText1:
	text "Woah, kid!"
	done

BartenderCoolerText2:
	text "That cooler's got"
	line "all the booze in"
	cont "this place!"

	para "I may not be the"
	line "most law-abiding"
	cont "guy out there,"

	para "but I'm not about"
	line "to let some kid"
	cont "drink that stuff!"
	done

BlossomGameCornerNPC1Text:
	text "Want to play CARD"
	line "FLIP with us?"

	para "We're just one"
	line "person short."
	done

BlossomGameCornerNPC2Text:
	text "Come on, kid!"

	para "We need one more"
	line "person for this"
	
	para "game so I can keep"
	line "my winning streak"
	cont "going!"
	done

GameCornerPianoGraffitiText:
	text "There's graffiti"
	line "on the piano…"

	para "“PRET was here!”"
	done

BlossomGameCornerOldFlyerYesNoText:
	text "An old flyer."
	line "Read it?"
	done

OldFlyerText:
	text "“COME ONE,"
	line "COME ALL!"

	para "One night only,"
	line "BILLY MARTIN and"
	cont "HIS ORCHESTRA!!!"

	para "Come hear and dance"
	line "to ATUVA's BELOVED"
	cont "KINGS OF SWING!!!"

	para "The dance/concert"
	line "will take place"
	cont "ONLY at 9:00 PM,"

	para "8/20/1932, NEXT"
	line "SATURDAY NIGHT.”"
	done

GameCornerWalksToCounter_Movement:
	step_left
	step_left
	step_end
