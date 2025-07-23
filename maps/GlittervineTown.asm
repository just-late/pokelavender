GlittervineTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GlittervineTownFlyPoint

	def_warp_events
	warp_event 25,  5, GLITTERVINE_MART, 2 ; 1
	warp_event 25, 13, GLITTERVINE_POKECENTER_1F, 1 ; 2
	warp_event 11,  5, GLITTERVINE_EVOLUTION_SPEECH_HOUSE, 1 ; 3
	warp_event 31,  8, ROUTE_2_GLITTERVINE_GATE, 1 ; 4
	warp_event 31,  9, ROUTE_2_GLITTERVINE_GATE, 2 ; 5
	warp_event 14, 13, GLITTERVINE_TRAINERS_SCHOOL, 1 ; 6
	warp_event 17,  5, GLITTERVINE_GYM_SPEECH_HOUSE, 1 ; 7

	def_coord_events
	coord_event 31,  8, 0, MeetProfAspen_Trigger1
	coord_event 31,  9, 0, MeetProfAspen_Trigger2

	def_bg_events
	bg_event 21, 13, BGEVENT_JUMPTEXT, GlittervineTownSignText
	bg_event 15, 14, BGEVENT_JUMPTEXT, GlittervineTrainersSchoolSignText
	bg_event 31,  6, BGEVENT_ITEM + NUGGET, EVENT_GLITTERVINE_TOWN_HIDDEN_NUGGET

	db 3 ; object_events
	person_event SPRITE_ELM,  8, 26, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_ALWAYS_SET
	person_event SPRITE_POKEFAN_F,  7, 21, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineNPC1Text, -1
	person_event SPRITE_GRAMPS, 16, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineNPC2Text, -1
	person_event SPRITE_TWIN, 11, 29, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_PINK, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineNPC3Text, -1

	const_def 1 ; object_constants
	const GLITTERVINE_PROF_ASPEN

GlittervineTownFlyPoint:
	setflag ENGINE_FLYPOINT_GLITTERVINE
	endcallback

MeetProfAspen_Trigger1:
	appear GLITTERVINE_PROF_ASPEN
	playmusic MUSIC_PROF_OAK
	turnobject PLAYER, LEFT
	applymovement GLITTERVINE_PROF_ASPEN, AspenEnters_Movement
	sjumpfwd MeetProfAspen_Script
	end

MeetProfAspen_Trigger2:
	appear GLITTERVINE_PROF_ASPEN
	playmusic MUSIC_PROF_OAK
	turnobject PLAYER, LEFT
	applymovement GLITTERVINE_PROF_ASPEN, AspenEnters_Movement
	applyonemovement GLITTERVINE_PROF_ASPEN, step_down
	turnobject GLITTERVINE_PROF_ASPEN, RIGHT
MeetProfAspen_Script:
	opentext
	writetext ProfAspen_Text1
	waitbutton
	closetext
	turnobject GLITTERVINE_PROF_ASPEN, UP
	pause 30
	turnobject GLITTERVINE_PROF_ASPEN, RIGHT
	opentext
	writetext ProfAspen_Text2
	yesorno
	iffalse .PokedexQuestionLoop
.GivePokedex
	writetext ProfAspen_Text3
	playsound SFX_ITEM
	waitsfx
	writetext GotPokedex_Text
	setflag ENGINE_POKEDEX
	writetext ProfAspen_Text4
	waitbutton
	closetext
	applymovement GLITTERVINE_PROF_ASPEN, AspenExits_Movement
	disappear GLITTERVINE_PROF_ASPEN
	special RestartMapMusic
	setscene $1
	end

.PokedexQuestionLoop
	writetext PokedexQuestion_Text
	yesorno
	iffalse .PokedexQuestionLoop
	sjump .GivePokedex
	end

ProfAspen_Text1:
	text "Hello!"

	para "You must be"
	line "<PLAYER>."

	para "Let's see here…"

	para "My name is ASPEN."

	para "Ah, yes."
	
	para "<PLAYER>, DR."
	line "LAVENTON has told"
	cont "me all about you."

	para "Let me explain"
	line "something."
	done

ProfAspen_Text2:
	text "I think you are"
	line "dependable, so"
	cont "I want you to do"
	cont "something for me."

	para "…"

	para "Haha! No, nothing"
	line "too hard."

	para "You see, around"
	line "10 years ago,"
	cont "a man named PROF."
	cont "OAK invented the"
	cont "#DEX."

	para "His vision was"
	line "to collect data"
	cont "on every #MON"
	cont "in the world!"

	para "But, of course,"
	line "he could not do"
	cont "that."

	para "However, I have"
	line "upgraded the"
	cont "#DEX."

	para "And now, I want"
	line "you to help me!"

	para "Will you help"
	line "me?"
	done

ProfAspen_Text3:
	text "Great!"

	para "Here you go."
	done

ProfAspen_Text4:
	text "That is the latest"
	line "version of the"
	cont "#DEX."

	para "It has a brand-new"
	line "user-friendly"
	cont "interface!"

	para "I worked with some"
	line "developers in the"
	cont "JOHTO REGION to"
	cont "make it."

	para "Anyway, I must"
	line "be going."

	para "I have some"
	line "business to do"
	cont "before I go back"
	cont "to the ACADEMY."

	para "See you,"
	line "<PLAYER>!"
	done

GotPokedex_Text:
	text "<PLAYER> received"
	line "#DEX."
	done

PokedexQuestion_Text:
	text "I couldn't quite"
	line "hear that."

	para "Will you help"
	line "me?"
	done

GlittervineNPC1Text:
	text "Hello!"
	
	para "Are you new here?"

	para "We try to keep it"
	line "clean and quiet"
	cont "here in"
	cont "GLITTERVINE TOWN."
	done

GlittervineNPC2Text:
	text "I moved here when"
	line "I was 17 years"
	cont "old."

	para "It seemed like a"
	line "dream back then."

	para "In fact, the"
	line "school wasn't even"
	cont "built yet!"
	done

GlittervineNPC3Text:
	text "I go to the"
	line "#MON TRAINER's"
	cont "school everyday."

	para "I love to study"
	line "with my partner"
	cont "MAREEP!"
	done

GlittervineBennysHouseSignText:
	text "BENNY's HOUSE"
	done

GlittervineTrainersSchoolSignText:
	text "GLITTERVINE"
	line "TRAINER's SCHOOL"
	done

GlittervineTownSignText:
	text "GLITTERVINE TOWN"

	para "A quiet, humble"
	line "place of peace."
	done

AspenEnters_Movement:
	step_right
	step_right
	step_right
	step_right
	step_end

AspenExits_Movement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
