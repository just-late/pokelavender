MoonflowerGym_MapScriptHeader:
	def_scene_scripts
	scene_script MoonflowerGymConcertScene

	def_callbacks
	callback MAPCALLBACK_OBJECTS, ConcertPlayerSubstitute

	def_warp_events
	warp_event  4, 13, MOONFLOWER_CITY, 2
	warp_event  5, 13, MOONFLOWER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  0,  9, BGEVENT_READ, MoonflowerGymStatue
	bg_event  0, 10, BGEVENT_READ, MoonflowerGymStatue

	db 11 ; object_events
	person_event SPRITE_MOM, -3, -3, SPRITEMOVEDATA_PLACEHOLDER_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DoNothingScript, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	person_event SPRITE_BIKER, 10,  5, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, MoonflowerBarFightScript, -1
	person_event SPRITE_FAT_GUY,  9, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MoonflowerBarFightScript, -1
	person_event SPRITE_GYM_GUY,  9,  1, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, MoonflowerGymGuyScript, -1
	person_event SPRITE_FALKNER, 3,  7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, MoonflowerGymRancidScript, -1
	person_event SPRITE_ROCKER, 10,  7, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGuitarist_mClyde, -1
	person_event SPRITE_BATTLE_GIRL,  7,  6, SPRITEMOVEDATA_STANDING_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerGuitarist_fJanet, -1
	person_event SPRITE_FAT_GUY, 11,  8, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC1Text, -1
	person_event SPRITE_FISHER,  7,  9, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC2Text, -1
	person_event SPRITE_COOL_DUDE,  6,  4, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerGymNPC3Text, -1
	person_event SPRITE_FAT_GUY,  9,  3, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptext, MoonflowerGymNPC4Text, -1

	object_const_def
	const MOONFLOWER_GYM_PLAYER
	const MOONFLOWER_BARFIGHT_BIKER
	const MOONFLOWER_BARFIGHT_FAT_GUY
	const MOONFLOWER_GYM_GUY

MoonflowerGymConcertScene:
	sdefer MoonflowerGymConcertScript
	end

ConcertPlayerSubstitute:
	checkevent EVENT_RANCID_CONCERT
	iftruefwd .finished
	callasm .PreparePlayerSubstitute
	appear MOONFLOWER_GYM_PLAYER
.finished
	endcallback

.PreparePlayerSubstitute:
	ld a, [wPlayerGender]
	ld b, SPRITE_CHRIS
	and a ; PLAYER_MALE
	jr z, .got_gender
	ld b, SPRITE_KRIS
	dec a ; PLAYER_FEMALE
	jr z, .got_gender
	; PLAYER_ENBY
	ld b, SPRITE_CRYS
.got_gender
	ld a, [wPlayerState]
	cp PLAYER_BIKE
	jr nz, .got_sprite
	assert SPRITE_CHRIS + 1 == SPRITE_CHRIS_BIKE
	assert SPRITE_KRIS + 1 == SPRITE_KRIS_BIKE
	assert SPRITE_CRYS + 1 == SPRITE_CRYS_BIKE
	inc b
.got_sprite
	ld a, b
	farcall LoadSpriteAsMapObject1
	ld a, [wXCoord]
	ld [wSavedXCoord], a
	add 4
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	ld b, MOONFLOWER_GYM_PLAYER
	farjp CopyDECoordsToMapObject

MoonflowerGymConcertScript:
;	playmusic MUSIC_CHAMPION_BATTLE_BW
	applymovement MOONFLOWER_GYM_GUY, MoonflowerGymGuyWalksToYou
	turnobject PLAYER, LEFT
	opentext
	writetext MoonflowerGymConcertGoingOn
	waitbutton
	closetext
	pause 5
	turnobject PLAYER, RIGHT
	pause 5
	applyonemovement PLAYER, hide_object
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up
	setscene $1
	end

MoonflowerGymRancidScript:
	faceplayer
	opentext
	checkflag ENGINE_PUNKBADGE
	iftruefwd .FightDone
	writetext RancidIntroText
	waitbutton
	closetext
	winlosstext RancidWinLossText, 0
	loadtrainer FALKNER, 1
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
	promptbutton
	verbosegivetmhm TM_POISON_JAB
	setevent EVENT_GOT_TM08_VENOSHOCK
	setmapscene MOONFLOWER_CITY, $2
	clearevent EVENT_MOONFLOWER_CITY_INDIGO_BLOCKERS
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

RancidWinLossText:
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

	para "It also lets you"
	line "use HM07--ROCK"
	cont "SMASH--outside of"
	cont "battle."

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

MoonflowerGymNPC3Text:
	text "I come here every"
	line "night, for battles"
	cont "and beverages!"
	done

MoonflowerGymNPC4Text:
	text "Yeah, yeah."

	para "Put it on my tab."
	done

MoonflowerGymConcertGoingOn:
	text "Oh!"

	para "There's a concert"
	line "going on right"
	cont "now,"

	para "so no one can have"
	line "battles."

	para "Why don't you"
	line "stick around for"
	cont "the music?"
	done

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

MoonflowerGymGuyWalksToYou:
	step_down
	step_down
	step_down
	step_right
	step_down
	step_right
	step_end
