MoonflowerGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 13, MOONFLOWER_CITY, 2
	warp_event  5, 13, MOONFLOWER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  0,  9, BGEVENT_READ, MoonflowerGymStatue
	bg_event  0, 10, BGEVENT_READ, MoonflowerGymStatue

	db 14 ; object_events
	person_event SPRITE_BIKER, 12, 12, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, MoonflowerBarFightScript, -1
	person_event SPRITE_FAT_GUY, 12, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MoonflowerBarFightScript, -1
	person_event SPRITE_FALKNER, 3,  7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, MoonflowerGymRancidScript, -1
	person_event SPRITE_PIDGEOTTO_SIDE,  3,  8, SPRITEMOVEDATA_MICROPHONE, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MoonflowerGymMicrophoneText, -1
	person_event SPRITE_ROCKER, 10,  7, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGuitarist_mClyde, -1
	person_event SPRITE_BATTLE_GIRL,  6,  6, SPRITEMOVEDATA_STANDING_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerGuitarist_fJanet, -1
	person_event SPRITE_GYM_GUY,  9,  1, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, MoonflowerGymGuyScript, -1
	person_event SPRITE_FAT_GUY, 11,  8, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC1Text, -1
	person_event SPRITE_FISHER,  7,  9, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC2Text, -1
;	person_event SPRITE_COOL_DUDE,  6,  4, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC3Text, -1
	person_event SPRITE_FAT_GUY,  9,  3, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptext, MoonflowerGymNPC4Text, -1
;	person_event SPRITE_POKEFAN_F,  8, 12, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC5Text, -1
;	person_event SPRITE_POKEFAN_M,  9, 13, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC6Text, -1

	object_const_def
	const MOONFLOWER_BARFIGHT_BIKER
	const MOONFLOWER_BARFIGHT_FAT_GUY

MoonflowerGymRancidScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_RANCID
	iftruefwd .FightDone
	writetext RancidIntroText
	waitbutton
	closetext
	loadtrainer FALKNER, 1
	winlosstext FalknerWinLossText, 0
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_RANCID
	opentext
	writetext ReceivedPunkBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PUNKBADGE
.FightDone:
	checkevent EVENT_GOT_TM08_VENOSHOCK
	iftrue_jumpopenedtext RancidFightDoneText
	setevent EVENT_BEAT_GUITARISTM_CLYDE
	setevent EVENT_BEAT_GUITARISTF_JANET
	writetext RancidPunkBadgeText
	setmapscene MOONFLOWER_CITY, $2
	promptbutton
	verbosegivetmhm TM_VENOSHOCK
	setevent EVENT_GOT_TM08_VENOSHOCK
	jumpopenedtext RancidTMVenoshockText

GenericTrainerGuitarist_mClyde:
	generictrainer GUITARISTM, CLYDE, EVENT_BEAT_GUITARISTM_CLYDE, Guitarist_mClydeSeenText, Guitarist_mClydeBeatenText

	text "We haven't had"
	line "challengers in"
	cont "awhile, so I'm out"
	cont "of practice."
	done

GenericTrainerGuitarist_fJanet:
	generictrainer GUITARISTF, JANET, EVENT_BEAT_GUITARISTF_JANET, Guitarist_fJanetSeenText, Guitarist_fJanetBeatenText

	text "Dangit!"

	para "I didn't have any"
	line "time for a solo!"
	done

MoonflowerGymGuyScript:
	checkevent EVENT_BEAT_RANCID
	iftrue_jumptextfaceplayer MoonflowerGymGuyWinText
	jumptextfaceplayer MoonflowerGymGuyText

MoonflowerGymStatue:
	gettrainername FALKNER, 1, $1
	checkflag ENGINE_PUNKBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	readvar VAR_BADGES
	ifgreater 1, .JulianToo
	jumpstd gymstatue2
.JulianToo
	jumpstd gymstatue3

MoonflowerBarFightScript:
	showtext MoonflowerBarFightText1
	applymovement MOONFLOWER_BARFIGHT_BIKER, MoonflowerBarFightBikerMovement
	showtext MoonflowerBarFightText2
	applymovement MOONFLOWER_BARFIGHT_FAT_GUY, MoonflowerBarFightFatGuyMovement
	end

MoonflowerBarFightText1:
	text "They're fighting"
	line "over something."

	para "…"
	done

MoonflowerBarFightText2:
	text "It seems they had"
	line "too much MOOMOO"
	cont "MILK."
	done

MoonflowerGymMicrophoneText:
	text "It's a microphone."
	done

RancidIntroText:
	text "I'm RANCID, the"
	line "MOONFLOWER #MON"
	cont "GYM LEADER!"

	para "I run shows in"
	line "this club 24/7,"
	cont "except for when I'm"
	cont "sleepin'."

	para "I use POISON-TYPE"
	line "#MON to bring"
	cont "up the funk"
	cont "around here!"

	para "Oh, you want a"
	line "battle?"

	para "Alright then!"
	line "Let's get this"
	cont "party started!"
	done

FalknerWinLossText:
	text "OUUCH!"

	para "I haven't had a"
	line "loss like that in"
	cont "awhile!"

	para "Anyway, it's the"
	line "rules that I give"
	cont "you this."
	done

ReceivedPunkBadgeText:
	text "<PLAYER> received"
	line "the PUNK BADGE."
	done

RancidPunkBadgeText:
	text "The PUNK BADGE"
	line "enables you to"

	para "command #MON,"
	line "even traded ones,"
	cont "up to <LV>20."

	para "Here--take this"
	line "too."
	done

RancidTMVenoshockText:
	text "By using a TM, a"
	line "#MON will"

	para "instantly learn a"
	line "new move."

	para "A TM can be used"
	line "as many times as"
	cont "you want."

	para "TM08 contains"
	line "VENOSHOCK."

	para "It does double"
	line "damage if the tar-"
	cont "get is POISONED."
	done

RancidFightDoneText:
	text "There are #MON"
	line "GYMS in cities and"
	cont "towns ahead."

	para "You should test"
	line "your skills at"
	cont "these GYMS."

	para "I'll train harder"
	line "until I can do an"
	cont "unforgettable"
	cont "solo!"
	done

Guitarist_mClydeSeenText:
	text "Get ready for"
	line "a fight!"
	done

Guitarist_mClydeBeatenText:
	text "Gaaah!"
	done

Guitarist_fJanetSeenText:
	text "Let me see if you"
	line "are good enough to"
	cont "face RANCID!"
	done

Guitarist_fJanetBeatenText:
	text "AARGGH!"
	done

MoonflowerGymGuyText:
	text "Hey! Want a drink?"

	para "Don't worry, I'm"
	line "joking."

	para "But I can give you"
	line "some advice!"

	para "Listen up."

	para "The POSION-TYPE is"
	line "weak to GROUND and"
	cont "PSYCHIC-TYPES."

	para "But GRASS-TYPES"
	line "won't be a good"
	cont "choice."
	done

MoonflowerGymGuyWinText:
	text "Nice battle! Keep"
	line "it up, and you'll"

	para "be the CHAMP in no"
	line "time at all!"
	done

MoonflowerGymNPC1Text:
	text "Can I have another"
	line "round, waitress?"

	para "Oh?"

	para "You're not the"
	line "waitress!"
	done

MoonflowerGymNPC2Text:
	text "Dang."

	para "RANCID is hot."

	para "Wait, wait, you"
	line "didn't hear that!"
	done

;MoonflowerGymNPC3Text:
;	text "I come here every"
;	line "night, for battles"
;	cont "and beverages!"
;	done

MoonflowerGymNPC4Text:
	text "Yeah, yeah."

	para "Put it on my tab."
	done

;MoonflowerGymNPC5Text:
;	text "I came here for a"
;	line "date."
;
;	para "I wasn't expecting"
;	line "this!"
;	done

;MoonflowerGymNPC6Text:
;	text "I come here every"
;	line "night with my"
;	cont "girlfriend."

;	para "Don't tell her how"
;	line "big my tab is!"
;	done

MoonflowerBarFightBikerMovement:
	fast_step_right
	fix_facing
	fast_step_left
	remove_fixed_facing
	step_end

MoonflowerBarFightFatGuyMovement:
	turn_head_right
	fix_facing
	fast_step_left
	fast_step_right
	remove_fixed_facing
	turn_head_left
	step_end
