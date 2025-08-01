GoldenrodHarbor_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 31, 16, GOLDENROD_HARBOR_GATE, 1
	warp_event 31, 17, GOLDENROD_HARBOR_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 29, 19, BGEVENT_JUMPTEXT, GoldenrodHarborSignText
	bg_event 20, 19, BGEVENT_JUMPTEXT, GoldenrodHarborAdvancedTipsSignText
	bg_event 28, 15, BGEVENT_JUMPTEXT, GoldenrodHarborCrateSignText
	bg_event 22, 21, BGEVENT_ITEM + REVIVE, EVENT_GOLDENROD_HARBOR_HIDDEN_REVIVE

	def_object_events
	object_event 17,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GoldenrodHarborFisherScript, -1
	object_event 13,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFisherPaton, -1
	itemball_event 13,  3, STAR_PIECE, 1, EVENT_GOLDENROD_HARBOR_STAR_PIECE
	object_event 27, 15, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, pokemart, MARTTYPE_ADVENTURER, MART_GOLDENROD_HARBOR, -1
	object_event 22, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GoldenrodHarborPokefanmScript, -1
	object_event 21, 15, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, MAGIKARP, -1, -1, PAL_NPC_ORANGE, PERSONTYPE_SCRIPT, PLAIN_FORM, GoldenrodHarborMagikarpScript, -1
	object_event 16, 15, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, GoldenrodHarborYoungsterScript, -1
	object_event 16, 20, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, trade, NPC_TRADE_JACQUES, -1
	object_event 40, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	object_event  6, 14, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSwimmerfKatie, -1
	object_event 23, 28, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermJames, -1
	object_event 23, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GoldenrodHarborLass2Text, -1
	object_event  6, 26, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, GoldenrodHarborSailboatText, -1
	object_event  6, 26, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, GoldenrodHarborSailboatText, -1

GoldenrodHarborFisherScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_HYPER_VOICE_INTRO
	iftruefwd GoldenrodHarborTutorHyperVoiceScript
	writetext GoldenrodHarborFisherText
	waitbutton
	setevent EVENT_LISTENED_TO_HYPER_VOICE_INTRO
GoldenrodHarborTutorHyperVoiceScript:
	writetext Text_GoldenrodHarborTutorHyperVoice
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_GoldenrodHarborTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval HYPER_VOICE
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_GoldenrodHarborTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_GoldenrodHarborTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_GoldenrodHarborTutorTaught

GenericTrainerFisherPaton:
	generictrainer FISHER, PATON, EVENT_BEAT_FISHER_PATON, FisherPatonSeenText, FisherPatonBeatenText

	text "You're working"
	line "on a #dex?"
	cont "That's neat!"
	done

GenericTrainerSwimmerfKatie:
	generictrainer SWIMMERF, KATIE, EVENT_BEAT_SWIMMERF_KATIE, SwimmerfKatieSeenText, SwimmerfKatieBeatenText

	text "Why is the sea"
	line "blue?"

	para "I heard it ref-"
	line "lects the sky…"

	para "But then why is"
	line "the sky blue?"
	done

GenericTrainerSwimmermJames:
	generictrainer SWIMMERM, JAMES, EVENT_BEAT_SWIMMERM_JAMES, SwimmermJamesSeenText, SwimmermJamesBeatenText

	text "Can't a Swimmer"
	line "use a rowboat"
	cont "sometimes?"
	done


GoldenrodHarborMagikarpScript:
	jumpthistext

	text "This is a Fish"
	line "#MON! Huh?"

	para "It's only a doll…"
	done

GoldenrodHarborPokefanmScript:
	faceplayer
	opentext
	writetext GoldenrodHarborDollVendorText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .MagikarpDoll
	ifequalfwd $2, .MarillDoll
	ifequalfwd $3, .OctilleryDoll
	endtext

.MagikarpDoll:
	checkmoney $0, 1400
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_MAGIKARP_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 1400
	setevent EVENT_DECO_MAGIKARP_DOLL
	writetext GoldenrodHarborMagikarpDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborMagikarpDollSentText
	waitbutton
	sjump .Start

.MarillDoll:
	checkmoney $0, 5600
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_MARILL_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 5600
	setevent EVENT_DECO_MARILL_DOLL
	writetext GoldenrodHarborMarillDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborMarillDollSentText
	waitbutton
	sjump .Start

.OctilleryDoll:
	checkmoney $0, 11200
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_OCTILLERY_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 11200
	setevent EVENT_DECO_OCTILLERY_DOLL
	writetext GoldenrodHarborOctilleryDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborOctilleryDollSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext GoldenrodHarborNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext GoldenrodHarborAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Magikarp    ¥1400@"
	db "Marill      ¥5600@"
	db "Octillery  ¥11200@"
	db "Cancel@"

GoldenrodHarborYoungsterScript:
	faceplayer
	opentext
	writetext GoldenrodHarborPlantVendorText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .MagnaPlant
	ifequalfwd $2, .TropicPlant
	ifequalfwd $3, .JumboPlant
	endtext

.MagnaPlant:
	checkmoney $0, 6400
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_1
	iftruefwd .AlreadyBought
	takemoney $0, 6400
	setevent EVENT_DECO_PLANT_1
	writetext GoldenrodHarborMagnaPlantText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborMagnaPlantSentText
	waitbutton
	sjump .Start

.TropicPlant:
	checkmoney $0, 9600
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_2
	iftruefwd .AlreadyBought
	takemoney $0, 9600
	setevent EVENT_DECO_PLANT_2
	writetext GoldenrodHarborTropicPlantText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborTropicPlantSentText
	waitbutton
	sjump .Start

.JumboPlant:
	checkmoney $0, 12800
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_3
	iftruefwd .AlreadyBought
	takemoney $0, 12800
	setevent EVENT_DECO_PLANT_3
	writetext GoldenrodHarborJumboPlantText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborJumboPlantSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext GoldenrodHarborNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext GoldenrodHarborAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Magna P.    ¥6400@"
	db "Tropic P.   ¥9600@"
	db "Jumbo P.   ¥12800@"
	db "Cancel@"

GoldenrodHarborFisherText:
	text "If you're fishing,"
	line "you have to be"

	para "quiet so you don't"
	line "scare the #MON."

	para "But to be heard"
	line "over the waves,"

	para "you have to say"
	line "things LOUD!"
	done

Text_GoldenrodHarborTutorHyperVoice:
	text "I can teach your"
	line "#MON how to"

	para "use Hyper Voice"
	line "for a Silver Leaf."
	done

Text_GoldenrodHarborTutorNoSilverLeaf:
	text "You don't have a"
	line "Silver Leaf!"
	done

Text_GoldenrodHarborTutorQuestion:
	text "Should I teach"
	line "your #MON"
	cont "Hyper Voice?"
	done

Text_GoldenrodHarborTutorRefused:
	text "OK then."
	done

Text_GoldenrodHarborTutorTaught:
	text "Now your #MON"
	line "knows how to use"
	cont "Hyper Voice!"
	done

FisherPatonSeenText:
	text "The fish I caught"
	line "was attached to"
	cont "another #MON!"
	done

FisherPatonBeatenText:
	text "Aren't #MON"
	line "interesting?"
	done

SwimmerfKatieSeenText:
	text "Swimming in the"
	line "deep blue sea"
	cont "feels wonderful!"
	done

SwimmerfKatieBeatenText:
	text "I lost…"
	line "Now I feel blue…"
	done

SwimmermJamesSeenText:
	text "I can swim, but"
	line "I can also row!"
	done

SwimmermJamesBeatenText:
	text "Maybe I can't"
	line "battle…"
	done

GoldenrodHarborDollVendorText:
	text "Welcome! I have"
	line "adorable aquatic"
	cont "dolls for sale."
	done

GoldenrodHarborMagikarpDollText:
	text "<PLAYER> bought"
	line "Magikarp Doll."
	done

GoldenrodHarborMagikarpDollSentText:
	text "Magikarp Doll"
	line "was sent home."
	done

GoldenrodHarborMarillDollText:
	text "<PLAYER> bought"
	line "Marill Doll."
	done

GoldenrodHarborMarillDollSentText:
	text "Marill Doll"
	line "was sent home."
	done

GoldenrodHarborOctilleryDollText:
	text "<PLAYER> bought"
	line "Octillery Doll."
	done

GoldenrodHarborOctilleryDollSentText:
	text "Octillery Doll"
	line "was sent home."
	done

GoldenrodHarborNoMoneyText:
	text "You can't afford"
	line "that!"
	done

GoldenrodHarborAlreadyBoughtText:
	text "You already have"
	line "that!"
	done

GoldenrodHarborPlantVendorText:
	text "Welcome! I have"
	line "a selection of"

	para "exotic plants to"
	line "adorn your home."
	done

GoldenrodHarborMagnaPlantText:
	text "<PLAYER> bought"
	line "Magna Plant."
	done

GoldenrodHarborMagnaPlantSentText:
	text "Magna Plant"
	line "was sent home."
	done

GoldenrodHarborTropicPlantText:
	text "<PLAYER> bought"
	line "Tropic Plant."
	done

GoldenrodHarborTropicPlantSentText:
	text "Tropic Plant"
	line "was sent home."
	done

GoldenrodHarborJumboPlantText:
	text "<PLAYER> bought"
	line "Jumbo Plant."
	done

GoldenrodHarborJumboPlantSentText:
	text "Jumbo Plant"
	line "was sent home."
	done

GoldenrodHarborLass2Text:
	text "All this water,"
	line "it's totally…"

	para "bloop-bloop,"
	line "splish-splish."

	para "Don't you agree?"
	done

GoldenrodHarborSignText:
	text "Goldenrod Harbor"
	done

GoldenrodHarborAdvancedTipsSignText:
	text "Advanced Tips!"

	para "Sometimes you'll"
	line "get lucky with a"

	para "vending machine"
	line "and get two drinks"

	para "for the price of"
	line "one!"
	done

GoldenrodHarborCrateSignText:
	text "A crate full of"
	line "rare items!"
	done

GoldenrodHarborSailboatText:
	text "It's a sailboat"
	line "named SeaKing."
	done
