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
	warp_event  9, 17, MOONFLOWER_INDIGO_BASE_1F, 1
;	warp_event 17, 19, MOONFLOWER_ONIX_TRADE_HOUSE, 1

	def_coord_events
	coord_event 2, 21, 1, TeamIndigoTrigger1
	coord_event 3, 21, 1, TeamIndigoTrigger2
	coord_event 4, 21, 1, TeamIndigoTrigger3
	coord_event 5, 21, 1, TeamIndigoTrigger4

	def_bg_events
	bg_event 29, 13, BGEVENT_JUMPTEXT, MoonflowerCitySignText
	bg_event 21, 28, BGEVENT_JUMPTEXT, MoonflowerGymSignText
	bg_event 20, 31, BGEVENT_ITEM + HYPER_POTION, EVENT_MOONFLOWER_CITY_HIDDEN_HYPER_POTION
	bg_event 23, 17, BGEVENT_ITEM + POKE_BALL, EVENT_MOONFLOWER_CITY_HIDDEN_POKE_BALL
	bg_event 12, 11, BGEVENT_ITEM + RARE_CANDY, EVENT_MOONFLOWER_CITY_RARE_CANDY
	bg_event 15, 11, BGEVENT_ITEM + PP_UP, EVENT_MOONFLOWER_CITY_PP_UP
	bg_event  7, 17, BGEVENT_JUMPTEXT, PokeIndustriesSignText

	db 13 ; object_events
	person_event SPRITE_GENTLEMAN,  8, 31, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MoonflowerPokeGearGuy_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_FIREBREATHER, 15, 31, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_PINK, PERSONTYPE_SCRIPT, 0, PokeGearCampaignClown1_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_FIREBREATHER, 19, 11, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, PokeGearCampaignClown2_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_ROCKET, 22, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerRocketGuyText, -1
	person_event SPRITE_FAT_GUY, 23, 3, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNPC7Text, -1
	person_event SPRITE_ROCKET_GIRL, 22, 4, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerRocketGirlText, -1
	person_event SPRITE_GRAMPS, 22, 22, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC1Text, -1
	person_event SPRITE_CHILD, 10, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC2Text, -1
	person_event SPRITE_YOUNGSTER, 24, 15, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC3Text, -1
	person_event SPRITE_SCHOOLBOY, 19, 20, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC4Text, -1
	person_event SPRITE_BIKER, 28, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNPC5Text, -1
	person_event SPRITE_BIRD_KEEPER, 21, 31, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerNPC6Text, -1
	pokemon_event 6, 26, RATICATE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MoonflowerCitySignText, -1

	const_def 1 ; object constants
	const MOONFLOWER_POKEGEAR_GUY
	const MOONFLOWER_POKEGEAR_CLOWN1
	const MOONFLOWER_POKEGEAR_CLOWN2
	const INDIGO_GRUNT1
	const INDIGO_FAT_GUY
	const INDIGO_GRUNT2

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

MoonflowerPokeGearGuy_Text3:
	text "Aha!"

	para "Those are the"
	line "TOKENS!"

	para "Let's see here…"
	done

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
	text "Hey! What?!"

	para "What's a kid like"
	line "you doing here?"

	para "This wasn't in the"
	line "job description!"

	para "Well, I have to"
	line "remove you!"
	done

DontMessWithTeamIndigoText:
	text "That should teach"
	line "you not to mess"
	cont "with TEAM INDIGO!"
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
	text "The new DEPARTMENT"
	line "STORE just opened."

	para "They have anything"
	line "a trainer could"
	cont "want!"
	
	para "There's more stock"
	line "available once"
	cont "you've collected"
	cont "some BADGES."

	para "For example, you"
	line "need three BADGES"
	cont "to shop for"
	
	para "evolutionary"
	line "stones."
	done

MoonflowerCityNPC4Text:
	text "Oh, how I wish"
	line "for a bike!"

	para "I come here every"
	line "single day to"
	cont "stare at this"
	cont "bike."
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

	para "The funky POISON"
	line "TYPE TRAINER!"
	done

MoonflowerNPC5Text:
	text "Hey, kid."
	line "Be careful in the"
	cont "gym."

	para "It's full of mean"
	line "guys at night."

	para "…"

	para "Why are you still"
	line "here?"
	
	para "Scram!"
	done

MoonflowerNPC6Text:
	text "Do you like my"
	line "new haircut?"

	para "I sure do!"
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
	text "# INDUSTRIES"

	para "Working for the"
	line "better of people"
	cont "and #MON."
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
