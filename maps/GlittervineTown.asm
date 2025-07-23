GlittervineTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GlittervineTownFlyPoint

	def_warp_events
	warp_event 25,  5, GLITTERVINE_MART, 2
	warp_event 25, 13, GLITTERVINE_POKECENTER_1F, 1
	warp_event 11,  5, GLITTERVINE_EVOLUTION_SPEECH_HOUSE, 1

	def_coord_events
	coord_event 31,  8, 1, GlittervineRivalTriggerNorth
	coord_event 31,  9, 1, GlittervineRivalTriggerSouth

	def_bg_events
	bg_event 21, 13, BGEVENT_JUMPTEXT, GlittervineTownSignText
	bg_event 31,  6, BGEVENT_ITEM + NUGGET, EVENT_GLITTERVINE_TOWN_HIDDEN_NUGGET

	db 5
	person_event SPRITE_ANABEL,  8, 31, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANABEL_GLITTERVINE_TOWN

	object_const_def
	const GLITTERVINETOWN_RIVAL

GlittervineTownFlyPoint:
	setflag ENGINE_FLYPOINT_GLITTERVINE
	endcallback

GlittervineRivalTriggerSouth:
	moveobject GLITTERVINETOWN_RIVAL, 39, 7
GlittervineRivalTriggerNorth:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	appear GLITTERVINETOWN_RIVAL
	applymovement GLITTERVINETOWN_RIVAL, GlittervineTown_RivalWalksToYou
	turnobject PLAYER, RIGHT
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext GlittervineRivalText_Seen
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELDER
	iftruefwd .Totodile
	checkevent EVENT_GOT_TURTWIG_FROM_ELDER
	iftruefwd .Turtwig
	winlosstext RivalGlittervineWinText, RivalGlittervineLossText
	setlasttalked GLITTERVINETOWN_RIVAL
	loadtrainer RIVAL0, 3
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	setevent EVENT_RIVAL_GLITTERVINE_TOWN
	reloadmap
	sjumpfwd .FinishRival

.Totodile:
	winlosstext RivalGlittervineWinText, RivalGlittervineLossText
	setlasttalked GLITTERVINETOWN_RIVAL
	loadtrainer RIVAL0, 1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	setevent EVENT_RIVAL_GLITTERVINE_TOWN
	reloadmap
	sjumpfwd .FinishRival

.Turtwig:
	winlosstext RivalGlittervineWinText, RivalGlittervineLossText
	setlasttalked GLITTERVINETOWN_RIVAL
	loadtrainer RIVAL0, 2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	setevent EVENT_RIVAL_GLITTERVINE_TOWN
	reloadmap
.FinishRival:
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	showtext GlittervineRivalTextAfter1
	playsound SFX_TACKLE
	applymovement PLAYER, GlittervineTown_RivalPushesYouOutOfTheWay
	applymovement GLITTERVINETOWN_RIVAL, GlittervineTown_RivalStartsToLeave
	showemote EMOTE_SHOCK, GLITTERVINETOWN_RIVAL, 15
	applymovement GLITTERVINETOWN_RIVAL, GlittervineTown_RivalComesBack
	turnobject PLAYER, UP
	showtext GlittervineRivalTextAfter2
	turnobject PLAYER, LEFT
	applymovement GLITTERVINETOWN_RIVAL, GlittervineTown_RivalExitsStageLeft
	disappear GLITTERVINETOWN_RIVAL
	special HealPartyEvenForNuzlocke
	setscene $2
	playmusic MUSIC_CHERRYGROVE_CITY
	end

GlittervineRivalText_Seen:
	text "ANABEL: Hey,"
	line "<PLAYER>!"

	para "I was going to"
	line "the MART to grab"

	para "some # BALLs, but"
	line "I can take down"
	cont "a wimp like you."

	para "Hah!"

	para "You think you'll"
	line "win?"

	para "I've trained"
	line "my #MON"
	
	para "really strong"
	line "since last time."

	para "I'll show you"
	line "what I mean!"
	done

RivalGlittervineWinText:
	text "ANABEL: Then…"
	line "how did you win?"

	para "Are you cheating"
	line "or something?"
	done

RivalGlittervineLossText:
	text "ANABEL: Aaaand"
	line "you'll never get"
	cont "better!"
	done

GlittervineRivalTextAfter1:
	text "…… …… ……"

	para "Look, <PLAYER>."
	line "I'm on a mission."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."

	para "And you can't keep"
	line "getting in my way!"

	para "Ciao!"
	done

GlittervineTownSignText:
	text "GLITTERVINE TOWN"

	para "A quiet, humble"
	line "place of peace."
	done
