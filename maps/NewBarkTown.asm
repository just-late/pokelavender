NewBarkTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NewBarkTownFlyPoint

	def_warp_events
	warp_event 27, 19, PLAYERS_HOUSE_1F, 1
	warp_event 31, 27, ARIS_HOUSE_1F, 2

	def_coord_events
	coord_event 35, 20, 0, TrainerTipsSignScript1
	coord_event 35, 21,	0, TrainerTipsSignScript2
	coord_event 35, 22,	0, TrainerTipsSignScript3

	def_bg_events
	bg_event 31, 19, BGEVENT_JUMPTEXT, PlayersHouseSignText
	bg_event 34, 27, BGEVENT_JUMPTEXT, ArisHouseSignText
	bg_event 14, 13, BGEVENT_JUMPTEXT, GemrootTownSignText
	bg_event 11,  7, BGEVENT_JUMPTEXT, CommunityCenterSignText
	bg_event 35, 19, BGEVENT_READ, TrainerTipsSignScript
	
	def_object_events
	object_event 9, 10, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NouraTravelerScript, -1
	object_event 11, 21, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, FatGuyTechnologyText, -1
	object_event 26, 24, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, RiverGirlText, -1
	object_event 20, 19, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OldGrannyText, -1
	object_event 14, 6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GrampsCommunityCenterText, -1
	object_event 3, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptext, FisherText, -1

	object_const_def

NewBarkTownFlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback
	
TrainerTipsSignScript1:
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext IrresistibleSignText
	turnobject PLAYER, UP
	sjumpfwd TrainerTipsSignScript
	end

TrainerTipsSignScript2:
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext IrresistibleSignText
	turnobject PLAYER, UP
	applyonemovement PLAYER, step_up
	sjumpfwd TrainerTipsSignScript
	end

TrainerTipsSignScript3:
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext IrresistibleSignText
	turnobject PLAYER, UP
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up
TrainerTipsSignScript:
	jumpthistext

	text "TRAINER TIPS!"

	para "Do not travel on"
	line "Route 1 without a"
	cont "#mon!"

	para "It could land you"
	line "in serious"
	cont "trouble."
	done

NouraTravelerScript:
	faceplayer
	checkevent EVENT_GOT_SOUVENEIR_FROM_NOURA_TRAVELER
	iftruefwd .AlreadyGotSouveneir
	opentext
	writetext NouraTraveler1Text
	waitbutton
	setevent EVENT_GOT_SOUVENEIR_FROM_NOURA_TRAVELER
	verbosegiveitem RARE_CANDY ; placeholder, will give a souveneir item
	writetext NouraTraveler2Text
	closetext
	end

.AlreadyGotSouveneir
	opentext
	writetext NouraTraveler2Text
	closetext
	end

GrampsCommunityCenterText:
	text "This is the"
	line "Gemroot Town"

	para "Community Center."
	line "They built it"
	cont "when I was just a"

	para "little boy."
	line "Time sure flies!"
	done

OldGrannyText:
	text "When I was your"
	line "age, I traveled"

	para "the world with"
	line "my #mon. We had"
	para "some fun" 
	line "adventures!"
	done

RiverGirlText:
	text "It's so nice to"
	line "stand and watch"

	para "over the river."
	line "Sometimes I even"
	cont "see Magikarp"
	cont "swimming by."
	done

FatGuyTechnologyText:
	text "Technology just"
	line "keeps getting"
	cont "better and better!"

	para "You can now access"
	line "the #mon Box"
	cont "from your bag!"
	done

NouraTraveler1Text:
	text "Hi! I'm traveling"
	line "the Noura Region"

	para "searching for"
	line "rare treasures."

	para "Here, let me share"
	line "one with you."
	done

NouraTraveler2Text:
	text "It's a Rare Candy!"
	line "Try using it on"
	cont "a #mon."
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
	text "<PLAYER>'s House"
	done

ArisHouseSignText:
	text "Ari's House"
	done

GemrootTownSignText:
	text "Gemroot Town"

	para "A home to the"
	line "roots of adventure"
	done

CommunityCenterSignText:
	text "Gemroot Town"
	line "Community Center"
	done

