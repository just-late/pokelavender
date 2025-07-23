DarkCaveMoonflowerEntrance_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 15, ROUTE_31, 3
	warp_event 17,  1, DARK_CAVE_BLACKTHORN_ENTRANCE, 2
	warp_event 35, 33, ROUTE_46, 3

	def_coord_events
	coord_event  6,  2, 0, DarkCaveMoonflowerEntranceFalknerTrigger

	def_bg_events
	bg_event 26,  3, BGEVENT_ITEM + ELIXIR, EVENT_DARK_CAVE_MOONFLOWER_ENTRANCE_HIDDEN_ELIXIR

	def_object_events
	pokemon_event 10, 2, URSARING, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, ClearText, EVENT_DARK_CAVE_URSARING
	object_event  9,  2, SPRITE_PIDGEOTTO_SIDE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_DARK_CAVE_PIDGEOTTO
	object_event  8,  2, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_DARK_CAVE_FALKNER
	itemball_event  6,  8, POTION, 1, EVENT_DARK_CAVE_MOONFLOWER_ENTRANCE_POTION
	smashrock_event 16, 14
	smashrock_event 27, 6
	smashrock_event  7, 14
	smashrock_event 36, 31
	itemball_event 36, 22, DUSK_STONE, 1, EVENT_DARK_CAVE_MOONFLOWER_ENTRANCE_DUSK_STONE
	itemball_event 35,  9, HYPER_POTION, 1, EVENT_DARK_CAVE_MOONFLOWER_ENTRANCE_HYPER_POTION
	itemball_event 30, 28, DIRE_HIT, 1, EVENT_DARK_CAVE_MOONFLOWER_ENTRANCE_DIRE_HIT

	object_const_def
	const DARKCAVEVIOLETENTRANCE_URSARING
	const DARKCAVEVIOLETENTRANCE_PIDGEOTTO
	const DARKCAVEVIOLETENTRANCE_FALKNER

DarkCaveMoonflowerEntranceFalknerTrigger:
	waitsfx
	checkdarkness
	iftruefwd .Darkness
	scall .BeatUrsaring
	showemote EMOTE_SHOCK, DARKCAVEVIOLETENTRANCE_FALKNER, 15
	opentext
	writetext DarkCaveMoonflowerEntranceFalknerIntroText
.Finish:
	writetext DarkCaveMoonflowerEntranceFalknerExplanationText
	waitbutton
	closetext
	follow PLAYER, DARKCAVEVIOLETENTRANCE_FALKNER
	applymovement PLAYER, DarkCaveMoonflowerEntranceMovementData_PlayerStepAside
	stopfollow
	turnobject PLAYER, DOWN
	applymovement DARKCAVEVIOLETENTRANCE_FALKNER, DarkCaveMoonflowerEntranceMovementData_FalknerLeave
	disappear DARKCAVEVIOLETENTRANCE_FALKNER
	pause 15
	clearevent EVENT_MOONFLOWER_GYM_FALKNER
	setmapscene MOONFLOWER_GYM, $1
	setscene $1
	end

.Darkness:
	checkevent EVENT_GOT_TM70_FLASH
	iftruefwd .ProgressAnyway
	showtext DarkCaveMoonflowerEntranceFalknerDarknessText
	applyonemovement PLAYER, step_left
	end

.ProgressAnyway:
	showtext DarkCaveMoonflowerEntranceFalknerProgressAnywayText
	scall .BeatUrsaring
	opentext
	writetext DarkCaveMoonflowerEntranceFalknerDarkIntroText
	sjump .Finish

.BeatUrsaring:
	special SaveMusic
	playmusic MUSIC_JOHTO_TRAINER_BATTLE
	pause 40
	opentext
	writetext DarkCaveMoonflowerEntranceFalknerAttackText
	pause 30
	closetext
	cry PIDGEOTTO
	waitsfx
	playsound SFX_TACKLE
	applymovement DARKCAVEVIOLETENTRANCE_PIDGEOTTO, DarkCaveMoonflowerEntranceMovementData_PidgeottoAttack
	waitsfx
	pause 30
	cry URSARING
	pause 30
	disappear DARKCAVEVIOLETENTRANCE_URSARING
	pause 15
	special RestoreMusic
	opentext
	writetext DarkCaveMoonflowerEntranceFalknerReturnText
	pause 30
	closetext
	disappear DARKCAVEVIOLETENTRANCE_PIDGEOTTO
	pause 20
	applyonemovement DARKCAVEVIOLETENTRANCE_FALKNER, step_left
	end

DarkCaveMoonflowerEntranceMovementData_PidgeottoAttack:
	run_step_right
	run_step_left
	step_end

DarkCaveMoonflowerEntranceMovementData_PlayerStepAside:
	step_left
	step_left
	step_left
	step_end

DarkCaveMoonflowerEntranceMovementData_FalknerLeave:
	step_down
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end

DarkCaveMoonflowerEntranceFalknerAttackText:
	text "Falkner: Use Wing"
	line "Attack, Pidgeotto!"
	done

DarkCaveMoonflowerEntranceFalknerReturnText:
	text "Good job,"
	line "Pidgeotto."
	done

DarkCaveMoonflowerEntranceFalknerIntroText:
	text "Oh! You must be"
	line "a trainer."
	prompt

DarkCaveMoonflowerEntranceFalknerDarkIntroText:
	text "You must be brave"
	line "to come here in"
	cont "pitch darkness."
	prompt

DarkCaveMoonflowerEntranceFalknerExplanationText:
	text "I'm Falkner, the"
	line "Moonflower #MON"
	cont "Gym Leader."

	para "I don't explore"
	line "caves for fun,"

	para "but that Ursaring"
	line "was attacking"

	para "trainers too weak"
	line "to defend them-"
	cont "selves."

	para "As a Gym Leader,"
	line "it's my job to"

	para "handle this sort"
	line "of situation."

	para "So you're here to"
	line "earn a badge?"

	para "Then meet me at"
	line "the Moonflower Gym."
	done

DarkCaveMoonflowerEntranceFalknerDarknessText:
	text "Falkner: Is"
	line "someone there?"

	para "Don't come any"
	line "closer!"

	para "It's too dark, you"
	line "could get hurt."
	done

DarkCaveMoonflowerEntranceFalknerProgressAnywayText:
	text "Falkner: Is"
	line "someone there?"

	para "It's reckless to"
	line "explore Dark Cave"
	cont "without any light!"

	para "I'm in the middle"
	line "of a battle, so"
	cont "stay back!"
	done
