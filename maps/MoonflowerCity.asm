MoonflowerCity_MapScriptHeader:
	def_scene_scripts
	scene_script MoonflowerCity_PokeGearGuyScene

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MoonflowerCityFlyPoint

	def_warp_events
	warp_event 17, 27, MOONFLOWER_MART, 2
	warp_event 22, 27, MOONFLOWER_GYM, 1
	warp_event 27, 27, MOONFLOWER_POKECENTER_1F, 1
	warp_event 19, 17, MOONFLOWER_BIKE_SHOP, 1
	warp_event 31,  3, PLAYERS_HOUSE_2F, 1
;	warp_event 17, 19, MOONFLOWER_ONIX_TRADE_HOUSE, 1
;	warp_event 15, 19, ROUTE_31_MOONFLOWER_GATE, 1
;	warp_event 16, 19, ROUTE_31_MOONFLOWER_GATE, 2
;	warp_event 17, 18, ROUTE_36_MOONFLOWER_GATE, 3
;	warp_event 16, 18, ROUTE_36_MOONFLOWER_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 29, 13, BGEVENT_JUMPTEXT, MoonflowerCitySignText
	bg_event 21, 28, BGEVENT_JUMPTEXT, MoonflowerGymSignText
	bg_event 20, 31, BGEVENT_ITEM + HYPER_POTION, EVENT_MOONFLOWER_CITY_HIDDEN_HYPER_POTION
	bg_event 23, 17, BGEVENT_ITEM + POKE_BALL, EVENT_MOONFLOWER_CITY_HIDDEN_POKE_BALL
	bg_event 12, 11, BGEVENT_ITEM + RARE_CANDY, EVENT_MOONFLOWER_CITY_RARE_CANDY
	bg_event 15, 11, BGEVENT_ITEM + PP_UP, EVENT_MOONFLOWER_CITY_PP_UP

	db 8 ; object_events
	person_event SPRITE_GENTLEMAN,  8, 31, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_GRAMPS, 22, 22, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC1Text, -1
	person_event SPRITE_CHILD, 10, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC2Text, -1
	person_event SPRITE_YOUNGSTER, 24, 15, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC3Text, -1
	person_event SPRITE_SCHOOLBOY, 19, 20, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC4Text, -1
	person_event SPRITE_FIREBREATHER, 15, 31, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_PINK, PERSONTYPE_SCRIPT, 0, PokeGearCampaignClown1_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	person_event SPRITE_FIREBREATHER, 18, 10, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, PokeGearCampaignClown2_Script, EVENT_POKEGEAR_CAMPAIGN_IN_MOONFLOWER
	fruittree_event 18,  6, FRUITTREE_MOONFLOWER_CITY, CHERI_BERRY, PAL_NPC_RED

	const_def 1 ; object constants
	const MOONFLOWER_POKEGEAR_GUY

MoonflowerCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIOLET
	endcallback

MoonflowerCity_PokeGearGuyScene:
	sdefer PokeGearGuy_SceneScript
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

PokeGearCampaignClown1_Script:
	faceplayer
	opentext
	writetext PokeGearCampaignIntro_Text
.Question1:
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

PokeGearCampaignClown2_Script:
	faceplayer
	opentext
	writetext PokeGearCampaignIntro_Text
.Question2:
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
		
.GotItRight
	playsound SFX_ITEM
	waitsfx
	writetext PokeGearCampaignRight2_Text
	setevent EVENT_GOT_POKEGEAR_QUESTION2
	waitbutton
	closetext
	end

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
	cont "#GEAR of your"
	cont "very own!"
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
	line "look in the trash-"
	cont "cans, there's an"
	cont "item inside!"

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
