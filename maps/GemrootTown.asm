GemrootTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GemrootTownFlyPoint

	def_warp_events
	warp_event  9,  5, PLAYERS_HOUSE_1F, 1              ; 1
	warp_event 31, 27, ANABELS_HOUSE_1F, 2              ; 2
	warp_event 10, 13, GEMROOT_COMMUNITY_CENTER_1F, 1   ; 3
	warp_event 21,  5, GEMROOT_NICKNAME_SPEECH_HOUSE, 1 ; 4
	warp_event 21, 13, GEMROOT_NPC_HOUSE_1, 1           ; 5

	def_coord_events
	coord_event 14,  2, 0, TrainerTipsSignScript1
	coord_event 15,  2,	0, TrainerTipsSignScript2
	coord_event 16,  2,	0, TrainerTipsSignScript3
	coord_event 14,  2, 1, MomPokegearTrigger1
	coord_event 15,  2, 1, MomPokegearTrigger2
	coord_event 16,  2, 1, MomPokegearTrigger3

	def_bg_events
	bg_event  7,  5, BGEVENT_JUMPTEXT, PlayersHouseSignText
	bg_event 15,  8, BGEVENT_JUMPTEXT, GemrootTownSignText
	bg_event  9, 14, BGEVENT_JUMPTEXT, CommunityCenterSignText
	bg_event 13,  1, BGEVENT_JUMPTEXT, TrainerTipsSignText
	
	db 5 ; object_events
	person_event SPRITE_MOM,  6, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, EVENT_ALWAYS_SET
	person_event SPRITE_HIKER,  8, 26, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, AtuvaTravelerScript, -1
	person_event SPRITE_GRANNY,  7, 14, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, OldGrannyText, -1
	person_event SPRITE_GRAMPS, 14, 12, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, GrampsCommunityCenterText, -1
	person_event SPRITE_ACE_TRAINER_F, 14, 18, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GemrootAceTrainerText, -1

	object_const_def
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
	setevent EVENT_SAW_MOM_AFTER_STARTER
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

IrresistibleSignText:
	text "There's something"
	line "irresistible about"
	cont "that sign…"
	done

PlayersHouseSignText:
	text "<PLAYER>'s HOUSE"
	done

GemrootTownSignText:
	text "GEMROOT TOWN"

	para "A town rooted to"
	line "the foot of a"
	cont "mountain."
	done

CommunityCenterSignText:
	text "GEMROOT TOWN"
	line "COMMUNITY CENTER"
	done

GemrootMomIntroText:
	nametag
	text " AUNTIE "
	next
	text_start
	text "<PLAYER>!"
	line "Wait!"
	done

GemrootMomMainText:
	nametag
	text " AUNTIE "
	next
	text_start
	text "Oh, is that your"
	line "#MON from the"
	cont "ELDER?"

	para "Hmm…"

	para "…<PAUSE>Well, I'm sure"
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
	nametag
	text " AUNTIE "
	next
	text_start
	text "That will allow"
	line "us to keep in"
	cont "touch."

	para "Make sure to call"
	line "me sometimes!"

	para "Don't let your"
	line "poor mother be"
	cont "worried sick!"

	para "…<PAUSE>…<PAUSE>…"

	para "Goodbye, <PLAYER>!"
	done

GemrootAceTrainerText:
	text "Hi, <PLAYER>!"

	para "Nice #GEAR!"

	para "Did your AUNTIE get"
	line "it for you?"
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
