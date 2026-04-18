MarigoldPort_MapScriptHeader:
    def_scene_scripts
	scene_script MarigoldPort_GoodsBoatScene
	scene_script MarigoldPort_NoopScene

    def_callbacks
	callback MAPCALLBACK_NEWMAP, MarigoldPortFlyPoint
	callback MAPCALLBACK_OBJECTS, CameronCallback

    def_warp_events
	warp_event 61,  9, PLAYERS_HOUSE_2F, 1
	warp_event 49,  9, MARIGOLD_POKECENTER_1F, 1
	warp_event 43,  9, MARIGOLD_NPC_HOUSE_1, 1
	warp_event 51, 15, MARIGOLD_NPC_HOUSE_2, 1
	warp_event 35, 21, MARIGOLD_BOATHOUSE, 1
	warp_event 36,  9, MARIGOLD_GYM, 1

    def_coord_events
	coord_event 12, 16, 0, TyphlosionsQuestTrigger1
	coord_event 13, 16, 0, TyphlosionsQuestTrigger2

    def_bg_events
	bg_event 56, 12, BGEVENT_JUMPTEXT, MarigoldPortSignText
	bg_event 38, 10, BGEVENT_JUMPTEXT, MarigoldPortGymSignText
	bg_event 33, 21, BGEVENT_JUMPTEXT, MarigoldBoathouseSignText

    db 21 ; object_events
	person_event SPRITE_BILL, 16, 32, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MarigoldPortCameronScript, EVENT_MARIGOLD_PORT_PHOTO
	person_event SPRITE_SAILOR, 19, 11, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, 0, EVENT_DID_BLAZE_QUEST
	person_event SPRITE_SAILOR, 22, 12, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, 0, EVENT_DID_BLAZE_QUEST
	person_event SPRITE_OFFICER, 12, 17, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, EVENT_ALWAYS_SET
	object_event 10, 22, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1
	object_event 10, 22, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1
	person_event SPRITE_FISHER, 19, 59, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MarigoldPortFisherScript, -1
	person_event SPRITE_LASS, 13, 42, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC1Text, -1
	person_event SPRITE_BUG_MANIAC, 11, 46, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC2Text, -1
	person_event SPRITE_CHILD, 16, 48, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC3Text, -1
	person_event SPRITE_BEACH_GUY, 10, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC4Text, -1
	person_event SPRITE_SAILOR, 20, 52, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortSailor1Text, -1
	person_event SPRITE_SAILOR, 19, 53, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortSailor2Text, -1
	person_event SPRITE_CUTE_GIRL, 19, 65, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortGirlText, -1
	pokemon_event 64, 19, FURRET, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MarigoldPortFurretText, -1
	pokemon_event 51, 19, MACHOKE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_GRAY, MarigoldPortMachokeText, -1
	object_event 53, 23, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1
	object_event 53, 23, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1
	object_event 32, 25, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1
	object_event 32, 25, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1
	object_event 10, 22, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1
	object_event 10, 22, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptext, MarigoldPortSailboatText, -1

	object_const_def
	const MARIGOLD_PORT_CAMERON
	const GOODS_BOAT_SAILOR_1
	const GOODS_BOAT_SAILOR_2
	const MARIGOLD_PORT_OFFICER
	const MARIGOLD_PORT_SAILBOAT_TOP
	const MARIGOLD_PORT_SAILBOAT_BOTTOM

MarigoldPort_GoodsBoatScene:
	end

MarigoldPort_NoopScene:
	end

MarigoldPortFlyPoint:
	setflag ENGINE_FLYPOINT_MARIGOLD
	endcallback

CameronCallback:
	readvar VAR_WEEKDAY
	ifequalfwd FRIDAY, .CameronAppears
	disappear MARIGOLD_PORT_CAMERON
	endcallback

.CameronAppears:
	appear MARIGOLD_PORT_CAMERON
	endcallback

TyphlosionsQuestTrigger1:
	checktime (1 << EVE) | (1 << NITE)
	iffalsefwd .End
	checkevent EVENT_DOING_BLAZE_QUEST
	iffalsefwd .End
	turnobject GOODS_BOAT_SAILOR_1, UP
	showemote EMOTE_SHOCK, GOODS_BOAT_SAILOR_1, 30
	opentext
	writetext GoodsBoatSailorIntroText
	waitbutton
	closetext
	turnobject GOODS_BOAT_SAILOR_1, RIGHT
	applymovement PLAYER, PlayerWalksToBoat1_Movement
	sjumpfwd MarigoldPortGoodsBoatScript
.End:
	end

TyphlosionsQuestTrigger2:
	checktime (1 << EVE) | (1 << NITE)
	iffalsefwd .End
	checkevent EVENT_DOING_BLAZE_QUEST
	iffalsefwd .End
	showemote EMOTE_SHOCK, GOODS_BOAT_SAILOR_1, 30
	turnobject GOODS_BOAT_SAILOR_1, UP
	opentext
	writetext GoodsBoatSailorIntroText
	waitbutton
	closetext
	turnobject GOODS_BOAT_SAILOR_1, RIGHT
	applymovement PLAYER, PlayerWalksToBoat2_Movement
	sjumpfwd MarigoldPortGoodsBoatScript
.End:
	end

MarigoldPortGoodsBoatScript:
	opentext
	writetext GoodsBoatSailorMainText
	waitbutton
	verbosegivekeyitem VEGETABLES
	setevent EVENT_DID_BLAZE_QUEST
	waitbutton
	closetext
	pause 15
	playmusic MUSIC_OFFICER_ENCOUNTER
	opentext
	writetext MarigoldOfficerHeyText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, GOODS_BOAT_SAILOR_1, 30
	opentext
	writetext GoodsBoatSailorHideText
	waitbutton
	closetext
	applymovement PLAYER, PlayerHides_Movement
	applyonemovement PLAYER, hide_object
	pause 10
	appear MARIGOLD_PORT_OFFICER
	applymovement MARIGOLD_PORT_OFFICER, OfficerWalksToSailor_Movement
	applymovement PLAYER, PlayerCameraMoves_Movement
	opentext
	writetext OfficerSuspicousText
	waitbutton
	closetext
	pause 10
	applymovement PLAYER, PlayerCameraMovesBack_Movement
	sjumpfwd MarigoldPortGoodsBoatScript2

MarigoldPortGoodsBoatScript2:
	special Special_FadeBlackQuickly
	turnobject PLAYER, LEFT
	special Special_ReloadSpritesNoPalettes
	disappear MARIGOLD_PORT_OFFICER
	applyonemovement PLAYER, show_object
	special Special_FadeInQuickly
	special RestartMapMusic
	pause 30
	turnobject GOODS_BOAT_SAILOR_1, UP
	opentext
	writetext SailorYouCanComeOutText
	waitbutton
	closetext
	pause 10
	applyonemovement PLAYER, step_right
	turnobject PLAYER, DOWN
	applymovement GOODS_BOAT_SAILOR_1, GoodsBoatSailorLeaves_Movement
	disappear GOODS_BOAT_SAILOR_1
	disappear GOODS_BOAT_SAILOR_2
	disappear MARIGOLD_PORT_SAILBOAT_TOP
	disappear MARIGOLD_PORT_SAILBOAT_BOTTOM
	changeblock 5, 10, $D6
	changeblock 5, 11, $D5
	opentext
	writetext GoodsBoatSailedAwayText
	waitbutton
	closetext
	setscene $1
	end

MarigoldPortFisherScript:
    faceplayer
	opentext
	writetext MarigoldPortDollVendorText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .TurtwigDoll
	ifequalfwd $2, .TotodileDoll
	ifequalfwd $3, .CharmanderDoll
	endtext

.TurtwigDoll:
	checkmoney $0, 5000
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_TURTWIG_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 5000
	setevent EVENT_DECO_TURTWIG_DOLL
	writetext MarigoldPortTurtwigDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext MarigoldPortTurtwigDollSentText
	waitbutton
	sjump .Start

.TotodileDoll:
	checkmoney $0, 5000
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_TOTODILE_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 5000
	setevent EVENT_DECO_TOTODILE_DOLL
	writetext MarigoldPortTotodileDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext MarigoldPortTotodileDollSentText
	waitbutton
	sjump .Start

.CharmanderDoll:
	checkmoney $0, 5000
	ifequalfwd $2, .NotEnoughMoney
	checkevent EVENT_DECO_CHARMANDER_DOLL
	iftruefwd .AlreadyBought
	takemoney $0, 5000
	setevent EVENT_DECO_CHARMANDER_DOLL
	writetext MarigoldPortCharmanderDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext MarigoldPortCharmanderDollSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext MarigoldPortNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext MarigoldPortAlreadyBoughtText
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
	db "TURTWIG     ¥5000@"
	db "CHARMANDER  ¥5000@"
	db "TOTODILE    ¥5000@"
	db "CANCEL@"

MarigoldPortDollVendorText:
	text "Welcome! I have"
	line "adorable #MON"
	cont "DOLLS for sale."
	done

MarigoldPortCameronScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_PHOTOGRAPH
	iftrue_jumpopenedtext MarigoldPortCameronAlreadyDoneText
	writetext MarigoldPortCameronGreetingText
	yesorno
	iffalse_jumpopenedtext MarigoldPortCameronRefusedText
	promptbutton
	special Special_CianwoodPhotograph
	ifequalfwd $0, .NoPicture
	ifequalfwd $1, .EggPicture
	setflag ENGINE_DAILY_PHOTOGRAPH
	writetext MarigoldPortCameronHoldStillText
	waitbutton
	closetext
	special FadeOutPalettes
	special LoadMapPalettes
	callasm LoadBlindingFlashPalette
	pause 10
	playsound SFX_DOUBLE_SLAP
	waitsfx
	pause 10
	special FadeInPalettes_EnableDynNoApply
	readmem wCurPartySpecies
	pokepic 0
	cry 0
	waitsfx
	closepokepic
	opentext
	writetext MarigoldPortCameronDoneText
	special PlayCurMonCry
	waitbutton
	jumpthisopenedtext

	text "Come again, OK?"
	done

.NoPicture:
	jumpopenedtext MarigoldPortNoPictureText

.EggPicture:
	jumpopenedtext MarigoldPortEggPictureText

MarigoldPortTurtwigDollText:
	text "<PLAYER> bought"
	line "TURTWIG DOLL."
	done

MarigoldPortTurtwigDollSentText:
	text "TURTWIG DOLL"
	line "was sent home."
	done

MarigoldPortTotodileDollText:
	text "<PLAYER> bought"
	line "TOTODILE DOLL."
	done

MarigoldPortTotodileDollSentText:
	text "TOTODILE DOLL"
	line "was sent home."
	done

MarigoldPortCharmanderDollText:
	text "<PLAYER> bought"
	line "CHARMANDER DOLL."
	done

MarigoldPortCharmanderDollSentText:
	text "CHARMANDER DOLL"
	line "was sent home."
	done

MarigoldPortNoMoneyText:
	text "You can't afford"
	line "that!"
	done

MarigoldPortAlreadyBoughtText:
	text "You already have"
	line "that!"
	done

MarigoldPortSailor1Text:
    text "Ain't the salty"
    line "air a real thrill?"
    done

MarigoldPortSailor2Text:
    text "Urrgh!"

    para "These… boxes…"
    line "…are… so…"
    cont "HEAVY…!"
    done

MarigoldPortGirlText:
    text "I'm watching the"
    line "waves with my"
    cont "FURRET."
    done

MarigoldPortSignText:
    text "MARIGOLD PORT"

    para "An isolated town"
    line "on the edge of"
    cont "the sea."
    done

MarigoldPortFurretText:
    text "Brurorr…"
    done

MarigoldPortMachokeText:
    text "MA!"
    
    para "CHO!"
    done

MarigoldPortNPC1Text:
    text "I thought the"
    line "beach would be"
    cont "full of people."

    para "This is quite"
    line "pleasant!"
    done

MarigoldPortNPC2Text:
    text "I like to fish on"
    line "the pier."

    para "But some days, all"
    line "I catch is"
    cont "MAGIKARP."
    done

MarigoldPortNPC3Text:
    text "Are you a"
    line "#MON TRAINER?"

    para "…"

    para "Wow! Cool!"
    done

MarigoldPortNPC4Text:
    text "I love the beach!"
    line "It's so calm and…"

    para "OW! A KRABBY"
    line "pinched me!"
    done

MarigoldPortSailboatText:
    text "The sailboat"
    line "looks battered."

    para "It's been through"
	line "a lot."
    done

GoodsBoatSailorIntroText:
	text "???: Hey!"

	para "BLAZE let me know"
	line "you were coming!"

	para "Get over here,"
	line "fast!"
	done

GoodsBoatSailorMainText:
	text "My name's TOM."

	para "TOM: I'm on good"
	line "terms with BLAZE."

	para "Let's see…"

	para "He wants me to"
	line "give you this."
	done

MarigoldOfficerHeyText:
	text "???: Hey!"
	line "What's going on?"
	done

GoodsBoatSailorHideText:
	text "Darnit! It's the"
	line "cops!"

	para "Ugh… Hide behind"
	line "something, fast!"
	done

OfficerSuspicousText:
	text "???: Hmm…"

	para "I thought I saw"
	line "a kid out here…"

	para "This boat carries"
	line "age-restriced"
	cont "goods, right?"

	para "TOM: …Uhh… Yeah."

	para "???: Well… I hope"
	line "I imagined that"
	cont "kid."

	para "I'll be keeping"
	line "my eye on you."
	done

SailorYouCanComeOutText:
	text "TOM: This was NOT"
	line "worth the trouble"
	cont "it caused."

	para "Well… what's your"
	line "name? <PLAYER>?"
	
	para "You can come"
	line "out now, I guess."

	para "Me and my buddy"
	line "are gonna head"
	cont "out."
	done

GoodsBoatSailedAwayText:
	text "……………"
	
	para "Looks like TOM and"
	line "his buddy sailed"
	cont "away."
	done

MarigoldPortGymSignText:
	text "MARIGOLD PORT"
	line "#MON GYM"
	cont "LEADER: FINN"

	para "A FIGHTING-TYPE"
	line "specialist shaped"
	cont "by the sea!"
	done

MarigoldBoathouseSignText:
	text "MARIGOLD PORT"
	line "BOATHOUSE"
	done

MarigoldPortCameronGreetingText:
	text "Well! Don't you"
	line "look photogenic?"

	para "How about a"
	line "picture with your"
	cont "#MON?"
	done

MarigoldPortCameronHoldStillText:
	text "Hold still!"

	para "3… 2…… 1………"

	para "Say cheese!"
	done

MarigoldPortCameronDoneText:
	text "All done!"

	para "Your "
	text_ram wStringBuffer3
	text ""
	line "looks happier!"
	done

MarigoldPortCameronAlreadyDoneText:
	text "I've already taken"
	line "a photo for you"
	cont "today!"

	para "By the way, it"
	line "looks great!"

	para "I got a letter that"
	line "said the DEV is"
	cont "trying to figure"
	cont "out how to make"
	cont "photos you can"
	cont "view."

	para "I don't know what"
	line "a DEV is, but it"
	cont "sounds cool!"
	done

MarigoldPortCameronRefusedText:
	text "Ah, well…"

	para "You're a shy one!"
	done

MarigoldPortNoPictureText:
	text "Oh, no picture?"
	line "Come again, OK?"
	done

MarigoldPortEggPictureText:
	text "An EGG? My talent"
	line "is worth more…"
	done

PlayerWalksToBoat1_Movement:
	step_down
	step_down
	step_down
	turn_head_left
	step_end

PlayerWalksToBoat2_Movement:
	step_down
	step_down
	step_left
	step_down
	turn_head_left
	step_end

PlayerHides_Movement:
	fast_step_up
	fast_step_up
	fast_step_up
	fast_step_up
	fast_step_left
	turn_head_down
	step_end

OfficerWalksToSailor_Movement:
	step_left
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_left
	step_down
	step_down
	turn_head_left
	step_end

OfficerLeavesSailor_Movement:
	step_up
	step_up
	step_up
	step_up
	step_right
	step_up
	step_up
	step_up
	step_right
	step_right
	step_right
	step_right
	step_end

GoodsBoatSailorLeaves_Movement:
	step_right
	step_right
	step_down
	step_end

PlayerCameraMoves_Movement:
	step_down
	step_down
	step_down
	step_down
	step_end

PlayerCameraMovesBack_Movement:
	step_up
	step_up
	step_up
	step_up
	turn_head_down
	step_end
