MoonflowerCity_MapScriptHeader:
	def_scene_scripts
	scene_script MoonflowerCity_PokeGearGuyScene
	scene_script MoonflowerCity_TeamIndigoScene

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MoonflowerCityFlyPoint

	def_warp_events
	warp_event 17, 27, MOONFLOWER_MART, 2
	warp_event 22, 27, MOONFLOWER_GYM, 1
	warp_event 27, 27, MOONFLOWER_POKECENTER_1F, 1
	warp_event 19, 17, MOONFLOWER_BIKE_SHOP, 1
	warp_event 31,  3, ROUTE_2_MOONFLOWER_GATE, 3
	warp_event  9, 17, COBB_BUILDING_1F, 1
	warp_event 13, 17, MOONFLOWER_GANG_APARTMENT_1F, 1
	warp_event 33, 17, MOONFLOWER_NPC_APARTMENT_1_1F, 1
	warp_event 33, 27, MOONFLOWER_NPC_APARTMENT_2_1F, 1
	warp_event  9, 27, MOONFLOWER_NPC_APARTMENT_3_1F, 1
	warp_event 12, 35, ROUTE_3_MOONFLOWER_GATE, 1
	warp_event 13, 35, ROUTE_3_MOONFLOWER_GATE, 2

	def_coord_events
	coord_event 2, 21, 1, TeamIndigoTrigger1
	coord_event 3, 21, 1, TeamIndigoTrigger2
	coord_event 4, 21, 1, TeamIndigoTrigger3
	coord_event 5, 21, 1, TeamIndigoTrigger4
	coord_event 12, 26, 2, MoonflowerIndigoSpeechOnTop1
	coord_event 13, 26, 2, MoonflowerIndigoSpeechOnTop2
	coord_event 15, 28, 2, MoonflowerIndigoSpeechOnRight1
	coord_event 15, 29, 2, MoonflowerIndigoSpeechOnRight2

	def_bg_events
	bg_event 29, 13, BGEVENT_JUMPTEXT, MoonflowerCitySignText
	bg_event 21, 28, BGEVENT_JUMPTEXT, MoonflowerGymSignText
	bg_event 20, 31, BGEVENT_ITEM + HYPER_POTION, EVENT_MOONFLOWER_CITY_HIDDEN_HYPER_POTION
	bg_event 23, 17, BGEVENT_ITEM + POKE_BALL, EVENT_MOONFLOWER_CITY_HIDDEN_POKE_BALL
	bg_event 12, 11, BGEVENT_ITEM + RARE_CANDY, EVENT_MOONFLOWER_CITY_RARE_CANDY
	bg_event 15, 11, BGEVENT_ITEM + PP_UP, EVENT_MOONFLOWER_CITY_PP_UP
	bg_event  7, 17, BGEVENT_JUMPTEXT, PokeIndustriesSignText
	bg_event 25, 17, BGEVENT_JUMPTEXT, MoonflowerForRentSignText
	bg_event 28, 23, BGEVENT_READ, MoonflowerCityHM07Script

	db 20 ; object_events
	person_event SPRITE_GENTLEMAN,  8, 31, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MoonflowerPokeGearGuy_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_FIREBREATHER, 15, 31, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_PINK, PERSONTYPE_SCRIPT, 0, PokeGearCampaignClown1_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_FIREBREATHER, 19, 11, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, PokeGearCampaignClown2_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_ROCKET, 22, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerRocketGuyText, EVENT_BEAT_RANCID
	person_event SPRITE_FAT_GUY, 23, 3, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNPC7Text, EVENT_BEAT_RANCID
	person_event SPRITE_ROCKET_GIRL, 22, 4, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerRocketGirlText, EVENT_BEAT_RANCID
	person_event SPRITE_BIRD_KEEPER, 21, 31, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNPC6Text, EVENT_GOT_HM07_ROCK_SMASH
	person_event SPRITE_GIOVANNI, 28, 12, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_YOUNGSTER, 30, 12, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_BUG_CATCHER, 31, 12, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_LASS, 30, 14, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_CUTE_GIRL, 30, 11, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_GRANNY, 31, 13, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_GRAMPS, 29, 10, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_ROCKET, 28, 14, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, 0, EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	person_event SPRITE_RIVAL, 28, 10, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, 0, EVENT_BEAT_RIVAL_IN_MOONFLOWER
	person_event SPRITE_GRAMPS, 22, 22, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC1Text, -1
	person_event SPRITE_CHILD, 10, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC2Text, -1
	person_event SPRITE_YOUNGSTER, 24, 15, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC3Text, -1
	person_event SPRITE_SCHOOLBOY, 19, 20, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC4Text, -1
	person_event SPRITE_BIKER, 28, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNPC5Text, -1
	pokemon_event 6, 26, RATICATE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MoonflowerCitySignText, -1

	const_def 1 ; object constants
	const MOONFLOWER_POKEGEAR_GUY
	const MOONFLOWER_POKEGEAR_CLOWN1
	const MOONFLOWER_POKEGEAR_CLOWN2
	const INDIGO_GRUNT1
	const INDIGO_FAT_GUY
	const INDIGO_GRUNT2
	const MOONFLOWER_BIRD_KEEPER
	const MOONFLOWER_INDIGO_BOSS
	const MOONFLOWER_SPEECH_BLOCKER_1 ; YOUNGSTER
	const MOONFLOWER_SPEECH_BLOCKER_2 ; BUG_CATCHER
	const MOONFLOWER_SPEECH_BLOCKER_3 ; LASS
	const MOONFLOWER_SPEECH_BLOCKER_4 ; CUTE_GIRL
	const MOONFLOWER_SPEECH_BLOCKER_5 ; GRANNY
	const MOONFLOWER_SPEECH_BLOCKER_6 ; GRAMPS
	const MOONFLOWER_SPEECH_BLOCKER_7 ; GRUNT
	const MOONFLOWER_CITY_RIVAL ; RIVAL

MoonflowerCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIOLET
	endcallback

MoonflowerCity_PokeGearGuyScene:
	sdefer PokeGearGuy_SceneScript
	end

MoonflowerCity_TeamIndigoScene:
	end

PokeGearGuy_SceneScript:
	applyonemovement PLAYER, step_down
	playmusic MUSIC_SHOW_ME_AROUND
	pause 15
	turnobject MOONFLOWER_POKEGEAR_GUY, UP
	showemote EMOTE_SHOCK, MOONFLOWER_POKEGEAR_GUY, 30
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearGuyWalksToYou_Movement
	opentext
	writetext MoonflowerPokeGearGuy_Text1
	waitbutton
	closetext
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearCampaignSpin_Movement
	faceplayer
	opentext
	writetext MoonflowerPokeGearGuy_Text2
	waitbutton
	closetext
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearCampaignSpin_Movement
	turnobject MOONFLOWER_POKEGEAR_GUY, DOWN
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearGuyWalksBack_Movement
	setscene $1
	special RestartMapMusic
	end

MoonflowerIndigoSpeechOnTop1:
	opentext
	writetext MoonflowerSpeechGoingOnText
	waitbutton
	closetext
	applyonemovement PLAYER, fix_facing
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, remove_fixed_facing
	end

MoonflowerIndigoSpeechOnTop2:
	opentext
	writetext MoonflowerSpeechGoingOnText
	waitbutton
	closetext
	applyonemovement PLAYER, fix_facing
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, remove_fixed_facing
	end
	
MoonflowerIndigoSpeechOnRight1:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, MOONFLOWER_INDIGO_BOSS, 15
	turnobject MOONFLOWER_INDIGO_BOSS, RIGHT
	opentext
	writetext MoonflowerIndigoBossComeJoinUsText
	waitbutton
	closetext
	applyonemovement PLAYER, step_down
	turnobject PLAYER, LEFT
	sjumpfwd MoonflowerIndigoSpeechScript

MoonflowerIndigoSpeechOnRight2:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, MOONFLOWER_INDIGO_BOSS, 15
	turnobject MOONFLOWER_INDIGO_BOSS, RIGHT
	opentext
	writetext MoonflowerIndigoBossComeJoinUsText
	waitbutton
	closetext
MoonflowerIndigoSpeechScript:
	applyonemovement MOONFLOWER_INDIGO_BOSS, slow_step_left
	turnobject MOONFLOWER_INDIGO_BOSS, DOWN
	pause 5
	showtext MoonflowerIndigoBossAreYouListeningText1
	applyonemovement MOONFLOWER_INDIGO_BOSS, slow_step_right
	applyonemovement MOONFLOWER_INDIGO_BOSS, slow_step_right
	turnobject MOONFLOWER_INDIGO_BOSS, DOWN
	pause 5
	showtext MoonflowerIndigoBossAreYouListeningText2
	pause 10
	playmusic MUSIC_NATIONAL_PARK
	opentext
	writetext MoonflowerIndigoBossIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, MOONFLOWER_SPEECH_BLOCKER_1, 10
	showemote EMOTE_QUESTION, MOONFLOWER_SPEECH_BLOCKER_5, 15
	turnobject MOONFLOWER_SPEECH_BLOCKER_4, UP
	pause 5
	turnobject MOONFLOWER_SPEECH_BLOCKER_2, RIGHT
	pause 10
	applyonemovement MOONFLOWER_INDIGO_BOSS, slow_step_left
	turnobject MOONFLOWER_INDIGO_BOSS, DOWN
	opentext
	writetext MoonflowerIndigoBossMainText
	waitbutton
	closetext
	turnobject MOONFLOWER_SPEECH_BLOCKER_2, UP
	pause 5
	turnobject MOONFLOWER_SPEECH_BLOCKER_5, LEFT
	showemote EMOTE_SHOCK, MOONFLOWER_SPEECH_BLOCKER_5, 15
	pause 10
	showemote EMOTE_SLEEP, MOONFLOWER_SPEECH_BLOCKER_7, 10
	pause 10
	turnobject MOONFLOWER_SPEECH_BLOCKER_7, DOWN
	applymovement MOONFLOWER_INDIGO_BOSS, MoonflowerIndigoBossLeaves_Movement
	disappear MOONFLOWER_INDIGO_BOSS
	showemote EMOTE_SHOCK, MOONFLOWER_SPEECH_BLOCKER_7, 10
	applymovement MOONFLOWER_SPEECH_BLOCKER_7, MoonflowerIndigoGruntLeaves_Movement
	disappear MOONFLOWER_SPEECH_BLOCKER_7
	setscene $3
	setevent EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
	pause 10
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear MOONFLOWER_SPEECH_BLOCKER_1
	disappear MOONFLOWER_SPEECH_BLOCKER_2
	disappear MOONFLOWER_SPEECH_BLOCKER_3
	disappear MOONFLOWER_SPEECH_BLOCKER_4
	disappear MOONFLOWER_SPEECH_BLOCKER_5
	disappear MOONFLOWER_SPEECH_BLOCKER_6
	special Special_FadeInQuickly
	special RestartMapMusic
	sjumpfwd MoonflowerMeetRivalAfterSpeechScript

MoonflowerPokeGearGuy_Script:
	checkevent EVENT_GOT_POKEGEAR_QUESTION1
	iffalsefwd .FindTheClowns
	checkevent EVENT_GOT_POKEGEAR_QUESTION2
	iffalsefwd .FindTheClowns
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearCampaignSpin_Movement
	faceplayer
	opentext
	writetext MoonflowerPokeGearGuy_Text3
	waitbutton
	closetext
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearCampaignSpin_Movement
	faceplayer
	opentext
	writetext MoonflowerPokeGearGuy_Text4
	waitbutton
	setflag ENGINE_MAP_CARD
	writetext ReceivedMapCardText
	playsound SFX_ITEM
	waitsfx
	closetext
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearCampaignSpin_Movement
	faceplayer
	opentext
	writetext MoonflowerPokeGearGuy_Text5
	waitbutton
	closetext
	readvar VAR_FACING
	ifequalfwd UP, .Up
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearGuyLeaves1_Movement
	disappear MOONFLOWER_POKEGEAR_GUY
	disappear MOONFLOWER_POKEGEAR_CLOWN1
	disappear MOONFLOWER_POKEGEAR_CLOWN2
	setevent EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	end

.Up
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearGuyLeaves2_Movement
	disappear MOONFLOWER_POKEGEAR_GUY
	disappear MOONFLOWER_POKEGEAR_CLOWN1
	disappear MOONFLOWER_POKEGEAR_CLOWN2
	setevent EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	end

.FindTheClowns
	applymovement MOONFLOWER_POKEGEAR_GUY, PokeGearCampaignSpin_Movement
	faceplayer
	jumpthistext

	text "You must find the"
	line "#CLOWNS!"

	para "Ask you questions"
	line "they will!"
	done

MoonflowerMeetRivalAfterSpeechScript:
	applymovement MOONFLOWER_CITY_RIVAL, MoonflowerCityRivalWalksToYou_Movement
	turnobject PLAYER, LEFT
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext MoonflowerRival1Text
	waitbutton
	closetext
	turnobject MOONFLOWER_CITY_RIVAL, DOWN
	pause 15
	opentext
	writetext MoonflowerRivalWimpText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, MOONFLOWER_CITY_RIVAL, 15
	turnobject MOONFLOWER_CITY_RIVAL, RIGHT
	opentext
	writetext MoonflowerRival2Text
	promptbutton
	special SpecialNameRival
	opentext
	writetext MoonflowerRival3Text
	waitbutton
	closetext
	winlosstext MoonflowerRivalWinText, MoonflowerRivalLossText
	loadtrainer RIVAL0, 1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
    dontrestartmapmusic
    reloadmap
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
    iftruefwd .AfterYourDefeat
    sjumpfwd .AfterVictorious
	
.AfterYourDefeat:
	setevent EVENT_BEAT_RIVAL_IN_MOONFLOWER
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MoonflowerRival5Text
	waitbutton
	closetext
	playsound SFX_TACKLE
	applyonemovement PLAYER, fix_facing
	applyonemovement PLAYER, jump_step_right
	applyonemovement PLAYER, remove_fixed_facing
	applymovement MOONFLOWER_CITY_RIVAL, MoonflowerCityRivalLeaves_Movement
	disappear MOONFLOWER_CITY_RIVAL
	special RestartMapMusic
	end

.AfterVictorious:
	setevent EVENT_BEAT_RIVAL_IN_MOONFLOWER
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MoonflowerRival4Text
	waitbutton
	closetext
	playsound SFX_TACKLE
	applyonemovement PLAYER, fix_facing
	applyonemovement PLAYER, jump_step_right
	applyonemovement PLAYER, remove_fixed_facing
	applymovement MOONFLOWER_CITY_RIVAL, MoonflowerCityRivalLeaves_Movement
	disappear MOONFLOWER_CITY_RIVAL
	special RestartMapMusic
	end

MoonflowerPokeGearGuy_Text4:
	text "This is it!"

	para "The MAP CARD!"
	done

ReceivedMapCardText:
	text "<PLAYER> received"
	line "MAP CARD."
	done

MoonflowerPokeGearGuy_Text5:
	text "That MAP CARD,"
	line "it shall serve"
	cont "you well!"

	para "Now then, go I"
	line "must!"
	done

MoonflowerIndigoBossComeJoinUsText:
	text "???: Ah!"
	line "Come listen."
	
	para "I have something"
	line "important to say."
	done

MoonflowerIndigoBossAreYouListeningText1:
	text "You people"
	line "over here!"

	para "Are you all"
	line "listening?"
	
	para "……"

	para "Good!"
	done

MoonflowerIndigoBossAreYouListeningText2:
	text "And you people"
	line "over here!"

	para "Are you all"
	line "listening too?"
	
	para "………"

	para "Great!"
	done

MoonflowerIndigoBossIntroText:
	text "???: All right."
	line "Now, I will begin."

	para "The ATUVA REGION"
	line "was once a place"
	cont "where people"
	cont "and #MON could"
	cont "live in harmony."

	para "That was in the"
	line "past, however."

	para "Now, in the past,"
	line "there were four"
	cont "GUARDIANS."

	para "These strong"
	line "#MON ruled"
	cont "ATUVA."

	para "However, time"
	line "passed, and the"
	cont "GUARDIANS put"
	cont "ATUVA into the"
	cont "care of humans."

	para "As you can see,"
	line "this has led to"
	cont "a land torn apart"
	cont "by chaos, gangs,"
	cont "and criminals."

	para "Were the GUARDIANS"
	line "still awake, we"
	cont "would be living"
	cont "in a much better"
	cont "world!"
	
	para "This is why,"
	line "today, I will"
	cont "introduce you to"
	cont "TEAM INDIGO."
	done

MoonflowerIndigoBossMainText:
	text "???: Now, calm"
	line "down, calm down."

	para "……"

	para "TEAM INDIGO's"
	line "goal is to wake"
	cont "the ancient"
	cont "GUARDIANS from"
	cont "slumber,"

	para "and bring glory"
	line "to the ATUVA"
	cont "REGION once"
	cont "more!"

	para "In ancient times,"
	line "people lived"
	cont "alongside"
	cont "#MON, and"
	cont "alongside the"
	cont "GUARDIANS."

	para "The GUARDIANS"
	line "were the #MON"
	cont "that brought ATUVA"
	cont "to life."

	para "This is why I,"
	line "and many others,"
	cont "seek to restore"
	cont "them."

	para "……"

	para "That is all I"
	line "have to say today."

	para "I encourage you"
	line "to consider"
	cont "contributing to"
	cont "our cause."

	para "Now, I will go."
	done

PokeGearCampaignClown1_Script:
	faceplayer
	opentext
	writetext PokeGearCampaignIntro_Text
.Question1:
	checkevent EVENT_GOT_POKEGEAR_QUESTION1
	iftruefwd .AlreadyGotIt
	writetext PokeGearCampaignQuestion1_Text
	yesorno
	iftruefwd .GotItRight
	playsound SFX_FAINT
	waitsfx
	writetext PokeGearCampaignWrong1_Text
	yesorno
	iftrue .Question1
	closetext
	end

.GotItRight
	playsound SFX_ITEM
	waitsfx
	writetext PokeGearCampaignRight1_Text
	setevent EVENT_GOT_POKEGEAR_QUESTION1
	waitbutton
	closetext
	end

.AlreadyGotIt
	writetext AlreadyGotItText
	waitbutton
	closetext	
	end			

PokeGearCampaignClown2_Script:
	faceplayer
	opentext
	writetext PokeGearCampaignIntro_Text
.Question2:
	checkevent EVENT_GOT_POKEGEAR_QUESTION2
	iftruefwd .AlreadyGotIt
	writetext PokeGearCampaignQuestion2_Text
	yesorno
	iffalsefwd .GotItRight
	playsound SFX_FAINT
	waitsfx
	writetext PokeGearCampaignWrong2_Text
	yesorno
	iftrue .Question2
	closetext
	end

.AlreadyGotIt
	writetext AlreadyGotItText
	waitbutton
	closetext
	end
		
.GotItRight
	playsound SFX_ITEM
	waitsfx
	writetext PokeGearCampaignRight2_Text
	setevent EVENT_GOT_POKEGEAR_QUESTION2
	waitbutton
	closetext
	end

TeamIndigoTrigger1:
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject INDIGO_GRUNT1, UP
	pause 5
	showemote EMOTE_SHOCK, INDIGO_GRUNT1, 30
	opentext
	writetext IndigoGruntText
	waitbutton
	closetext
	applymovement INDIGO_GRUNT1, GruntWalksToYou1_Movement
	playsound SFX_TACKLE
	applymovement PLAYER, IndigoGruntShovesYou_Movement
	opentext
	writetext DontMessWithTeamIndigoText
	waitbutton
	closetext
	turnobject INDIGO_GRUNT1, RIGHT
    special RestartMapMusic
	end

TeamIndigoTrigger2:
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject INDIGO_GRUNT1, UP
	pause 5
	showemote EMOTE_SHOCK, INDIGO_GRUNT1, 30
	opentext
	writetext IndigoGruntText
	waitbutton
	closetext
	applymovement INDIGO_GRUNT1, GruntWalksToYou2_Movement
	playsound SFX_TACKLE
	applymovement PLAYER, IndigoGruntShovesYou_Movement
	opentext
	writetext DontMessWithTeamIndigoText
	waitbutton
	closetext
	applymovement INDIGO_GRUNT1, GruntWalksBack2_Movement
	turnobject INDIGO_GRUNT1, RIGHT
	special RestartMapMusic
	end

TeamIndigoTrigger3:
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject INDIGO_GRUNT2, UP
	pause 5
	showemote EMOTE_SHOCK, INDIGO_GRUNT2, 30
	opentext
	writetext MoonflowerRocketGirlText
	waitbutton
	closetext
	applymovement INDIGO_GRUNT2, GruntWalksToYou1_Movement
	playsound SFX_TACKLE
	applymovement PLAYER, IndigoGruntShovesYou_Movement
	opentext
	writetext DontMessWithTeamIndigoText
	waitbutton
	closetext
	turnobject INDIGO_GRUNT2, LEFT
	special RestartMapMusic
	end

TeamIndigoTrigger4:
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject INDIGO_GRUNT2, UP
	pause 5
	showemote EMOTE_SHOCK, INDIGO_GRUNT2, 30
	opentext
	writetext MoonflowerRocketGirlText
	waitbutton
	closetext
	applymovement INDIGO_GRUNT2, GruntWalksToYou2_Movement
	playsound SFX_TACKLE
	applymovement PLAYER, IndigoGruntShovesYou_Movement
	opentext
	writetext DontMessWithTeamIndigoText
	waitbutton
	closetext
	applymovement INDIGO_GRUNT2, GruntWalksBack2_Movement
	turnobject INDIGO_GRUNT2, LEFT
	special RestartMapMusic
	end

IndigoGruntText:
	text "PUNK: Hey! What?!"

	para "What's a kid like"
	line "you doing here?"

	para "This wasn't in the"
	line "job description!"

	para "Well, I have to"
	line "remove you!"
	done

DontMessWithTeamIndigoText:
	text "PUNK: That should"
	line "teach you not"
	cont "to mess with"
	cont "TEAM INDIGO!"
	done

MoonflowerPokeGearGuy_Text1:
	text "Hello, bonjour!"

	para "Are you trainer?"

	para "You are, just look"
	line "at you!"

	para "Now trainer…"

	para "I have a secret"
	line "for you!"
	done

MoonflowerPokeGearGuy_Text2:
	text "Oui, oui!"

	para "The #GEAR is"
	line "running a special"
	cont "campaign!"

	para "Indeed, right as"
	line "we speak!"

	para "There are two"
	line "#CLOWNS hiding"
	cont "in the city."

	para "Find them, and"
	line "be asked a ques-"
	cont "tion you will!"	

	para "If correct is"
	line "your answer, a"
	cont "token you shall"
	cont "receive!"

	para "With two tokens,"
	line "you may have a"
	cont "MAP CARD for your"
	cont "#GEAR!"
	done

PokeGearCampaignQuestion1_Text:
	text "Here's your"
	line "question:"

	para "Is CLODSIRE also"
	line "known as the SPINY"
	cont "FISH #MON?"
	done

PokeGearCampaignQuestion2_Text:
	text "Here's your"
	line "question:"

	para "Is HERACROSS a"
	line "BUG- and ROCK-"
	cont "TYPE #MON?"
	done

PokeGearCampaignWrong1_Text:
	text "Brrzzzzt!"

	para "Wrong."
	line "Want to try again?"
	done

PokeGearCampaignWrong2_Text:
	text "Brrzzzzt!"

	para "Fail."
	line "Want to try again?"
	done

PokeGearCampaignRight1_Text:
	text "Ding ding!"

	para "Correct."
	line "Here's your token!"

	para "<PLAYER> got a"
	line "TOKEN."
	done

PokeGearCampaignRight2_Text:
	text "Ding ding!"

	para "Spot on."
	line "Here's your token!"

	para "<PLAYER> got a"
	line "TOKEN."
	done

PokeGearCampaignIntro_Text:
	text "Hello!"

	para "I am a #CLOWN."
	done	


AlreadyGotItText:
	text "You already got my"
	line "question!"
	done

MoonflowerCityNPC1Text:
	text "I come here every"
	line "every morning to"
	cont "take care of the"
	cont "garden."

	para "It's nice, don't"
	line "you think?"
	done

MoonflowerCityNPC2Text:
	text "Heehee!"

	para "Sometimes, when"
	line "you look in the"
	cont "trash cans,"
	cont "there's an item"
	cont "inside!"

	para "Make sure to check"
	line "every one of them!"
	done

MoonflowerCityNPC3Text:
	text "The police in this"
	line "town are really"
	cont "lazy."

	para "That explains all"
	line "the gangs that have"
	cont "sprouted up around"
	cont "the city!"

	para "Heck, even the"
	line "GYM is a hangout"
	cont "spot for 'em!"

	para "That should be so"
	line "easy to shut"
	cont "down!"
	done

MoonflowerCityNPC4Text:
	text "Oh, how I wish"
	line "for a bike!"

	para "I come here every"
	line "single day to"
	cont "yearn for a bike."
	done

MoonflowerCitySignText:
	text "MOONFLOWER CITY"

	para "The city"
	line "bursting with"
	cont "happy life."
	done

MoonflowerGymSignText:
	text "MOONFLOWER CITY"
	line "#MON GYM"
	cont "LEADER: RANCID"

	para "The funky POISON-"
	line "TYPE TRAINER!"
	done

MoonflowerNPC5Text:
	text "Hey, kid."
	line "Be careful in the"
	cont "gym."

	para "It's full of mean"
	line "guys at night."

	para "……………"

	para "Why are you still"
	line "here?"
	
	para "Scram!"
	done

MoonflowerNPC6Text:
	text "I saw someone drop"
	line "something shiny"
	cont "in the trash can"
	cont "by that lamp-post."
	done

MoonflowerNPC7Text:
	text "Alright, so the…"

	para "Hey! What are you"
	line "doing here, kid?"
	done

MoonflowerRocketGuyText:
	text "Scram, kid!"
	line "We're talking"
	cont "business!"
	done

MoonflowerRocketGirlText:
	text "What are you-?"

	para "A kid?!"

	para "This is none of"
	line "your business!"

	para "Mind your"
	line "manners, kid!"
	done

PokeIndustriesSignText:
	text "COBB CORP."
	line "MOONFLOWER BRANCH"

	para "Working for the"
	line "better of people"
	cont "and #MON."
	done

MoonflowerForRentSignText:
	text "APARTMENT FOR RENT"

	para "Call THOMAS at"
	line "1-800-FOR-RENT"
	done

MoonflowerCityHM07Script:
	opentext
	checkevent EVENT_GOT_HM07_ROCK_SMASH
	iftruefwd .NothingText
	writetext MoonflowerTrashCanText1
	waitbutton
	verbosegivetmhm HM_ROCK_SMASH
	setevent EVENT_GOT_HM07_ROCK_SMASH
	waitbutton
	closetext
	showemote EMOTE_SHOCK, MOONFLOWER_BIRD_KEEPER, 30
	jumptext MoonflowerBirdKeeperAnythingGoodText

.NothingText:
	jumpthisopenedtext
	text "There's nothing"
	line "else here……"
	done

MoonflowerBirdKeeperAnythingGoodText:
	text "GUY: WHAT?"

	para "I thought there"
	line "was maybe some"
	cont "good stuff in"
	cont "there, but an HM?"

	para "Man, I should've"
	line "dug through there!"
	done

MoonflowerTrashCanText1:
	text "Something in"
	line "there looks shiny!"
	done

MoonflowerSpeechGoingOnText:
	text "There's some kind"
	line "of speech going"
	cont "on."

	para "Maybe try"
	line "listening from"
	cont "another place?"
	done

MoonflowerRival1Text:
	text "???: Did you"
	line "hear that guy's"
	cont "speech?"

	para "I just don't"
	line "understand it."

	para "What he said"
	line "about waking the"
	cont "GUARDIANS…"

	para "Well, I study"
	line "the ancient"
	cont "GUARDIANS and…"

	para "The GUARDIANS"
	line "only awaken when"
	cont "they sense the"
	cont "region is in"
	cont "danger…"
	done

MoonflowerRivalWimpText:
	text "…I don't even"
	line "need to tell you"
	cont "this."

	para "You look like a"
	line "wimp to me."
	done

MoonflowerRival2Text:
	text "???: What's that?"

	para "You're going to"
	line "study at BLOSSOM"
	cont "ACADEMY?"

	para "That's where I"
	line "study right now."
	
	para "I can't believe"
	line "YOU got in…"

	para "Anyway, my name's…"
	done

MoonflowerRival3Text:
	text "<RIVAL>: Still,"
	line "you look like a"
	cont "wimp."

	para "Let me see if"
	line "you're good"
	cont "enough to go to"
	cont "BLOSSOM ACADEMY!"
	done

MoonflowerRivalWinText:
	text "Huh! Are you"
	line "happy you won?"
	done

MoonflowerRival4Text:
	text "…Listen."
	line "You didn't win"
	cont "because I'm weak."

	para "It's my #MON's"
	line "fault."

	para "You're nothing but"
	line "a lucky wimp."

	para "…You don't get"
	line "what I'm saying?"

	para "Whatever."

	para "Just don't get"
	line "in my way."

	para "…And don't make"
	line "me tell you that"
	cont "twice."

	para "I don't need"
	line "weaklings."
	done

MoonflowerRivalLossText:
	text "I knew you"
	line "were a wimp."
	done

MoonflowerRival5Text:
	text "…I thought so."

	para "I have no idea"
	line "how you got in"
	cont "to the ACADEMY."

	para "Last time I"
	line "checked, they took"
	cont "in GOOD trainers."

	para "People with"
	line "talent."

	para "Not weaklings like"
	line "you."

	para "…You don't get"
	line "what I'm saying?"

	para "Whatever."

	para "Just don't get"
	line "in my way."

	para "…And don't make"
	line "me tell you that"
	cont "twice."

	para "I don't need"
	line "weaklings."
	done

MoonflowerPokeGearGuy_Text3:
	text "Aha!"
	done

PokeGearGuyWalksToYou_Movement:
	step_up
	step_up
	step_up
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	step_end

PokeGearCampaignSpin_Movement:
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	step_end

PokeGearGuyWalksBack_Movement:
	step_down
	step_down
	step_down
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	step_end

PokeGearGuyLeaves1_Movement:
	step_down
	step_down
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end

PokeGearGuyLeaves2_Movement:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

IndigoGruntShovesYou_Movement:
	turn_head_down
	fix_facing
	jump_step_up
	remove_fixed_facing
	step_end

GruntWalksToYou1_Movement:
	turn_head_up
	step_end

GruntWalksToYou2_Movement:
	step_right
	turn_head_up
	step_end

GruntWalksBack2_Movement:
	step_left
	step_end

MoonflowerIndigoBossLeaves_Movement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

MoonflowerIndigoGruntLeaves_Movement:
	fast_step_left
	fast_step_up
	fast_step_up
	fast_step_up
	fast_step_left
	fix_facing
	jump_step_right
	remove_fixed_facing
	slow_step_left
	step_left
	fast_step_up
	step_end

MoonflowerCityRivalWalksToYou_Movement:
	step_right
	step_right
	step_down
	step_right
	step_right
	step_end

MoonflowerCityRivalLeaves_Movement:
	step_left
	step_down
	step_down
	step_left
	step_down
	step_down
	step_down
	step_end
