GemrootTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GemrootTownFlyPoint

	def_warp_events
	warp_event 27, 19, PLAYERS_HOUSE_1F, 1             ; 1
	warp_event 31, 27, ARIS_HOUSE_1F, 2                ; 2
	warp_event 12,  5, GEMROOT_COMMUNITY_CENTER_1F, 1  ; 3
	warp_event 21,  9, PLAYERS_NEIGHBORS_HOUSE, 1      ; 4

	def_coord_events
	coord_event 34, 20, 0, TrainerTipsSignScript1
	coord_event 34, 21,	0, TrainerTipsSignScript2
	coord_event 34, 22,	0, TrainerTipsSignScript3

	def_bg_events
	bg_event 31, 19, BGEVENT_JUMPTEXT, PlayersHouseSignText
	bg_event 34, 27, BGEVENT_JUMPTEXT, ArisHouseSignText
	bg_event 14, 13, BGEVENT_JUMPTEXT, GemrootTownSignText
	bg_event 11,  7, BGEVENT_JUMPTEXT, CommunityCenterSignText
	bg_event 34, 19, BGEVENT_JUMPTEXT, TrainerTipsSignText
	
	db 6 ; object_events
	person_event SPRITE_HIKER, 10,  9, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, AttuvaTravelerScript, -1
	person_event SPRITE_FAT_GUY, 21, 11, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, FatGuyTechnologyText, -1
	person_event SPRITE_CUTE_GIRL, 24, 26, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, RiverGirlText, -1
	person_event SPRITE_GRANNY, 19, 20, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, OldGrannyText, -1
	person_event SPRITE_GRAMPS,  6, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, GrampsCommunityCenterText, -1
	person_event SPRITE_FISHER, 16,  3, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, FisherText, -1

	object_const_def

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
.Skip
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
.Skip
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
.Skip
	end

TrainerTipsSignText:
	text "TRAINER TIPS!"

	para "Do not travel on"
	line "Route 1 without a"
	cont "#MON!"

	para "It could land you"
	line "in serious"
	cont "trouble."
	done

AttuvaTravelerScript:
	faceplayer
	checkevent EVENT_GOT_SOUVENEIR_FROM_NOURA_TRAVELER
	iftruefwd .AlreadyGotSouveneir
	opentext
	writetext AttuvaTraveler1Text
	waitbutton
	setevent EVENT_GOT_SOUVENEIR_FROM_NOURA_TRAVELER
	verbosegiveitem RARE_CANDY ; placeholder, will give a souveneir item
	writetext AttuvaTraveler2Text
	closetext
	end

.AlreadyGotSouveneir
	opentext
	writetext AttuvaTraveler2Text
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
	line "my #MON. We had"
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
	line "the #MON Box"
	cont "from your bag!"
	done

AttuvaTraveler1Text:
	text "Hi! I'm traveling"
	line "the Attuva Region"

	para "searching for"
	line "rare treasures."

	para "Here, let me share"
	line "one with you."
	done

AttuvaTraveler2Text:
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

