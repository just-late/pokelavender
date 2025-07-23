PlayersHouse1F_MapScriptHeader:
	def_scene_scripts
	scene_script MomAutoWalk0

	def_callbacks

	def_warp_events
	warp_event  8,  7, GEMROOT_TOWN, 1
	warp_event  9,  7, GEMROOT_TOWN, 1
	warp_event 11,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  1,  1, BGEVENT_JUMPTEXT, PlayersHouse1FFridgeText
	bg_event  2,  1, BGEVENT_JUMPTEXT, PlayersHouse1FSinkText
	bg_event  3,  1, BGEVENT_JUMPTEXT, PlayersHouse1FStoveText
	bg_event  7,  1, BGEVENT_UP, PlayersHouse1FTVScript

	db 5 ; object_events
	person_event SPRITE_MOM, 4,  9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	person_event SPRITE_MOM, 2,  3, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << MORN), 0, PERSONTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	person_event SPRITE_MOM, 4,  9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << DAY), 0, PERSONTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	person_event SPRITE_MOM, 3,  6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE), 0, PERSONTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	person_event SPRITE_MOM, 2,  1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << NITE), 0, PERSONTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2

	object_const_def
	const PLAYERSHOUSE1F_MOM1

MomAutoWalk0:
	sdefer MeetMomScript
	end

MeetMomScript:
	applyonemovement PLAYER, step_down
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	playmusic MUSIC_MOM
	applyonemovement PLAYERSHOUSE1F_MOM1, step_right
	applyonemovement PLAYERSHOUSE1F_MOM1, step_right
	applyonemovement PLAYERSHOUSE1F_MOM1, step_up
	applyonemovement PLAYERSHOUSE1F_MOM1, step_up
MomEventScript:
	opentext
	writetext MomIntroText
	promptbutton
	setscene $1
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	setevent EVENT_ANABEL_BEDROOM_SCENE
	setevent EVENT_ANABEL_HOUSE_SCENE
.InitialSetDSTFlag:
	writetext MomDSTText
	yesorno
	iffalsefwd .NotDST
	special Special_InitialSetDSTFlag
	yesorno
	iffalse .InitialSetDSTFlag
	sjumpfwd .InitializedDSTFlag
.NotDST:
	special Special_InitialClearDSTFlag
	yesorno
	iffalse .InitialSetDSTFlag
.InitializedDSTFlag:
	writetext MomRunningShoesText
	yesorno
	iftruefwd .NoInstructions
	writetext MomInstructionsText
	promptbutton
.NoInstructions:
	writetext MomOutroText
	waitbutton
	closetext
	special RestartMapMusic
	applyonemovement PLAYERSHOUSE1F_MOM1, step_down
	applyonemovement PLAYERSHOUSE1F_MOM1, step_down
	applyonemovement PLAYERSHOUSE1F_MOM1, step_left
	applyonemovement PLAYERSHOUSE1F_MOM1, step_left
	end

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "Fresh Water and"
	line "tasty Lemonade!"
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

PlayersHouse1FStoveText:
	text "Mom's specialty!"

	para "Cinnabar Volcano"
	line "Burger!"
	done

PlayersHouse1FTVScript:
	jumpthistext

	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train…"

	para "I'd better get"
	line "rolling too!"
	done

MomScript:
	faceplayer
	checkscene
	iffalsefwd .MomEvent
	opentext
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue_jumpopenedtext MomDoItText
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftruefwd .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftruefwd .FirstTimeBanking
	checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
	iftrue_jumpopenedtext MomErrandText
	jumpthisopenedtext

	text "Prof.Elm is wait-"
	line "ing for you."

	para "Hurry up, baby!"
	done

.FirstTimeBanking:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special Special_BankOfMom
	waitendtext
	end

.MomEvent:
	playmusic MUSIC_MOM
	sjump MomEventScript

MomIntroText:
	text "Oh, <PLAYER>!"
	line "You're awake."

	para "Your friend Benny"
	line "was just here."

	para "He told me he"
	line "would meet you in"

	para "the Gemroot Woods."
	done

MomDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

MomRunningShoesText:
	text "By the way, do"
	line "you know how to"

	para "use your new"
	line "Running Shoes?"
	done

MomInstructionsText:
	text "I'll read the"
	line "instructions."

	para "Just hold down the"
	line "B Button to run,"
	cont "indoors or out."

	para "Or use the Option"
	line "to always run, and"
	cont "hold B to walk."
	done

MomOutroText:
	text "Gee, aren't they"
	line "convenient?"
	done

MomErrandText:
	text "So, what was Prof."
	line "Elm's errand?"

	para "…"

	para "That does sound"
	line "challenging."

	para "But, you should be"
	line "proud that people"
	cont "rely on you."
	done

MomDoItText:
	text "<PLAYER>, do it!"

	para "I'm behind you all"
	line "the way!"
	done
