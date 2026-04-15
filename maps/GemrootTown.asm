GemrootTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GemrootTownFlyPoint

	def_warp_events
	warp_event 27, 19, PLAYERS_HOUSE_1F, 1              ; 1
	warp_event 31, 27, ANABELS_HOUSE_1F, 2              ; 2
	warp_event 12,  5, GEMROOT_COMMUNITY_CENTER_1F, 1   ; 3
	warp_event 21,  9, PLAYERS_NEIGHBORS_HOUSE, 1       ; 4
	warp_event 19, 15, GEMROOT_NICKNAME_SPEECH_HOUSE, 1 ; 5
	warp_event  5, 13, GEMROOT_NPC_HOUSE_1, 1           ; 6
	warp_event 21, 27, GEMROOT_NPC_HOUSE_2, 1           ; 7

	def_coord_events
	coord_event 34, 20, 0, TrainerTipsSignScript1
	coord_event 34, 21,	0, TrainerTipsSignScript2
	coord_event 34, 22,	0, TrainerTipsSignScript3
	coord_event 31, 28, 0, AnabelEventTrigger
	coord_event 34, 20, 1, MomPokegearTrigger1
	coord_event 34, 21, 1, MomPokegearTrigger2
	coord_event 34, 22, 1, MomPokegearTrigger3

	def_bg_events
	bg_event 31, 19, BGEVENT_JUMPTEXT, PlayersHouseSignText
	bg_event 34, 27, BGEVENT_JUMPTEXT, AnabelsHouseSignText
	bg_event 14, 13, BGEVENT_JUMPTEXT, GemrootTownSignText
	bg_event 11,  7, BGEVENT_JUMPTEXT, CommunityCenterSignText
	bg_event 34, 19, BGEVENT_JUMPTEXT, TrainerTipsSignText
	
	db 9 ; object_events
	person_event SPRITE_ANABEL, 27, 31, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, EVENT_ALWAYS_SET
	person_event SPRITE_MOM, 20, 29, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, EVENT_ALWAYS_SET
	person_event SPRITE_HIKER, 10,  9, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, AtuvaTravelerScript, -1
	person_event SPRITE_FAT_GUY, 26, 4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, FatGuyTechnologyText, -1
	person_event SPRITE_CUTE_GIRL, 24, 26, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, RiverGirlText, -1
	person_event SPRITE_GRANNY, 19, 20, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, OldGrannyText, -1
	person_event SPRITE_GRAMPS,  6, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, GrampsCommunityCenterText, -1
	person_event SPRITE_FISHER, 16,  3, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, FisherText, -1
	pokemon_event 6, 25, VENUSAUR, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_GREEN, FatGuyVenusaurText, -1

	object_const_def
	const GEMROOT_TOWN_ANABEL
	const GEMROOT_TOWN_MOM

GemrootTownFlyPoint:
	setflag ENGINE_FLYPOINT_GEMROOT
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback
	
TrainerTipsSignScript1:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
	iftruefwd .Skip
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext IrresistibleSignText
	turnobject PLAYER, UP
	showtext TrainerTipsSignText
	applyonemovement PLAYER, step_left
.Skip:
	end

TrainerTipsSignScript2:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
	iftruefwd .Skip
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext IrresistibleSignText
	turnobject PLAYER, UP
	applyonemovement PLAYER, step_up
	showtext TrainerTipsSignText
	applyonemovement PLAYER, step_left
.Skip:
	end

TrainerTipsSignScript3:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
	iftruefwd .Skip
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext IrresistibleSignText
	turnobject PLAYER, UP
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up
	showtext TrainerTipsSignText
	applyonemovement PLAYER, step_left
.Skip:
	end

MomPokegearTrigger1:
	appear GEMROOT_TOWN_MOM
	playmusic MUSIC_MOM
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext GemrootMomIntroText
	applymovement GEMROOT_TOWN_MOM, GemrootMomWalksToYou1_Movement
	opentext
	writetext GemrootMomMainText
	playsound SFX_ITEM
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	waitsfx
	writetext GemrootMomByeText
	waitbutton
	closetext
	applymovement GEMROOT_TOWN_MOM, GemrootMomLeaves1_Movement
	disappear GEMROOT_TOWN_MOM
	setscene $2
	special RestartMapMusic
	end

MomPokegearTrigger2:
	appear GEMROOT_TOWN_MOM
	playmusic MUSIC_MOM
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext GemrootMomIntroText
	applymovement GEMROOT_TOWN_MOM, GemrootMomWalksToYou2_Movement
	opentext
	writetext GemrootMomMainText
	playsound SFX_ITEM
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	waitsfx
	writetext GemrootMomByeText
	waitbutton
	closetext
	applymovement GEMROOT_TOWN_MOM, GemrootMomLeaves2_Movement
	disappear GEMROOT_TOWN_MOM
	setscene $2
	special RestartMapMusic
	end

MomPokegearTrigger3:
	appear GEMROOT_TOWN_MOM
	playmusic MUSIC_MOM
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext GemrootMomIntroText
	applymovement GEMROOT_TOWN_MOM, GemrootMomWalksToYou3_Movement
	opentext
	writetext GemrootMomMainText
	playsound SFX_ITEM
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	waitsfx
	writetext GemrootMomByeText
	waitbutton
	closetext
	applymovement GEMROOT_TOWN_MOM, GemrootMomLeaves3_Movement
	disappear GEMROOT_TOWN_MOM
	setscene $2
	special RestartMapMusic
	end

TrainerTipsSignText:
	text "TRAINER TIPS!"

	para "Do not travel on"
	line "ROUTE 1 without a"
	cont "#MON!"

	para "It could land you"
	line "in serious"
	cont "trouble."
	done

AnabelEventTrigger:
	checkevent EVENT_ANABEL_GEMROOT_SCENE
	iftruefwd .End
	appear GEMROOT_TOWN_ANABEL
	playsound SFX_TACKLE
	turnobject PLAYER, UP
	applymovement PLAYER, PlayerJumpsBackMovement
	applyonemovement GEMROOT_TOWN_ANABEL, step_down
	showtext GemrootAnabelIntroText
	pause 5
	turnobject GEMROOT_TOWN_ANABEL, UP
	pause 10
	turnobject GEMROOT_TOWN_ANABEL, DOWN
	showtext GemrootAnabelForgotText
	applyonemovement GEMROOT_TOWN_ANABEL, step_up
	playsound SFX_ENTER_DOOR
	disappear GEMROOT_TOWN_ANABEL
	setevent EVENT_ANABEL_GEMROOT_SCENE
	clearevent EVENT_ANABEL_BEDROOM_SCENE
.End
	end

GemrootAnabelIntroText:
	text "ANABEL: Woah!"
	line "I didn't expect to"
	cont "see you there!"
	done

GemrootAnabelForgotText:
	text "Oops! I forgot"
	line "some things in my"
	cont "room."

	para "Be right back!"
	done

PlayerJumpsBackMovement:
	fix_facing
	run_step_down
	remove_fixed_facing
	step_end

AtuvaTravelerScript:
	faceplayer
	checkevent EVENT_GOT_SOUVENEIR_FROM_ATUVA_TRAVELER
	iftruefwd .AlreadyGotSouveneir
	opentext
	writetext AtuvaTraveler1Text
	waitbutton
	setevent EVENT_GOT_SOUVENEIR_FROM_ATUVA_TRAVELER
	verbosegiveitem RARE_CANDY
	writetext AtuvaTraveler2Text
	closetext
	end

.AlreadyGotSouveneir
	opentext
	writetext AtuvaTraveler2Text
	closetext
	end

GrampsCommunityCenterText:
	text "This is the"
	line "GEMROOT TOWN"

	para "COMMUNITY CENTER."
	line "They built it"
	cont "when I was just a"

	para "little boy."
	line "Time sure flies!"
	done

OldGrannyText:
	text "When I was your"
	line "age, I traveled"

	para "the world with"
	line "my #MON. We had"
	para "some fun" 
	line "adventures!"
	done

RiverGirlText:
	text "It's so nice to"
	line "stand and watch"

	para "over the river."
	line "Sometimes I even"
	cont "see MAGIKARP"
	cont "swimming by."
	done

FatGuyTechnologyText:
    text "VENUSAUR helps"
	line "get this place"
	cont "HUMID!"
	done

AtuvaTraveler1Text:
	text "Hi! I'm traveling"
	line "the ATUVA REGION"

	para "searching for"
	line "rare treasures."

	para "Here, let me share"
	line "one with you."
	done

AtuvaTraveler2Text:
	text "It's a Rare Candy!"
	line "Try using it on"
	cont "a #MON."
	done

FisherText:
	text "… … … …"
	line "… … … …"

	para "He's ignoring you…"
	done


IrresistibleSignText:
	text "There's something"
	line "irresistible about"
	cont "that sign…"
	done

PlayersHouseSignText:
	text "<PLAYER>'s HOUSE"
	done

AnabelsHouseSignText:
	text "ANABEL's HOUSE"
	done

GemrootTownSignText:
	text "GEMROOT TOWN"

	para "A home to the"
	line "roots of adventure"
	done

CommunityCenterSignText:
	text "GEMROOT TOWN"
	line "COMMUNITY CENTER"
	done

FatGuyVenusaurText:
	text "VENUSAUR:"
	line "Grooooarrgh…"
	done

GemrootMomIntroText:
	text "MOM: <PLAYER>!"
	line "Wait!"
	done

GemrootMomMainText:
	text "Oh, is that your"
	line "#MON from the"
	cont "ELDER?"

	para "Hmm…"

	para "…Well, I'm sure"
	line "it's nice."

	para "Remember, you got"
	line "a #MON because"
	cont "you're going to"
	cont "BLOSSOM ACADEMY."

	para "Don't get side-"
	line "tracked!"

	para "Since you're going"
	line "to be away from"
	cont "home, I bought you"
	cont "a #GEAR."

	para "<PLAYER> received"
	line "#GEAR!"
	done

GemrootMomByeText:
	text "That will allow"
	line "us to keep in"
	cont "touch."

	para "Make sure to call"
	line "me sometimes!"

	para "Don't let your"
	line "poor mother be"
	cont "worried sick!"

	para "……"

	para "Goodbye, <PLAYER>!"
	done

GemrootMomWalksToYou1_Movement:
	step_right
	step_right
	step_right
	step_right
	step_end

GemrootMomWalksToYou2_Movement:
	step_right
	step_right
	step_down
	step_right
	step_right
	step_end

GemrootMomWalksToYou3_Movement:
	step_right
	step_right
	step_down
	step_right
	step_down
	step_right
	step_end

GemrootMomLeaves1_Movement:
	step_left
	step_left
	step_left
	step_left
	step_end

GemrootMomLeaves2_Movement:
	step_left
	step_left
	step_up
	step_left
	step_left
	step_end

GemrootMomLeaves3_Movement:
	step_left
	step_left
	step_up
	step_left
	step_up
	step_left
	step_end
