MoonflowerPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, MOONFLOWER_CITY, 3
	warp_event  6,  7, MOONFLOWER_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalFalknerScript

	def_object_events
	object_event 10,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, MoonflowerPokeCenter1FElmsAideScript, -1
	pc_nurse_event  5, 1
	object_event  9,  4, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerPokeCenter1FGameboyKidText, -1
	object_event  2,  3	, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerPokeCenter1FGentlemanText, -1
	object_event  0,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerPokeCenter1FSageText, -1
	object_event 11,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerPokeCenter1FYoungsterText, -1

	object_const_def
	const VIOLETPOKECENTER1F_SCIENTIST

PokemonJournalFalknerScript:
	setflag ENGINE_READ_FALKNER_JOURNAL
	jumpthistext

	text "#MON Journal"

	para "Special Feature:"
	line "Leader Falkner!"

	para "People say that"
	line "Falkner reveres"
	cont "his father, who"

	para "led the Moonflower Gym"
	line "before him."
	done

MoonflowerPokeCenter1FElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	iftruefwd .SecondTimeAsking
	writetext .IntroText
	sjumpfwd .AskTakeEgg
.SecondTimeAsking:
	writetext .QuestionText
.AskTakeEgg:
	yesorno
	iffalsefwd .RefusedEgg
	giveegg TOGEPI
	iffalse_jumpopenedtext .PartyAndBoxFull
	setevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	clearevent EVENT_ELMS_AIDE_IN_LAB
	clearevent EVENT_TOGEPI_HATCHED
	setmapscene ROUTE_32, $1
	writetext .GoodbyeText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequalfwd UP, .AideWalksAroundPlayer
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_SCIENTIST, .WalkStraightMovement
	sjumpfwd .Finish
.AideWalksAroundPlayer:
	applymovement VIOLETPOKECENTER1F_SCIENTIST, .WalkAroundMovement
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_SCIENTIST, .WalkDownMovement
.Finish:
	playsound SFX_EXIT_BUILDING
	disappear VIOLETPOKECENTER1F_SCIENTIST
	waitsfx
	end

.PartyAndBoxFull:
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "You have no space"
	line "in your Box, too."

	para "I'll wait here"
	line "while you make"
	cont "room for the Egg."
	done

.RefusedEgg:
	setevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	jumpthisopenedtext

	text "B-but… Prof.Elm"
	line "asked for you…"
	done

.IntroText:
	text "<PLAYER>, long"
	line "time, no see."

	para "I was browsing the"
	line "#MON Journal"
	cont "while I waited."

	para "Its gossip is a"
	line "good pastime…"

	para "Anyway, Prof.Elm"
	line "has another favor"
	cont "to ask you."

	para "Would you take the"
	line "#MON Egg?"
	done

.QuestionText:
	text "<PLAYER>, will you"
	line "take the Egg?"
	done

.GoodbyeText:
	text "We discovered that"
	line "a #MON will not"

	para "hatch until it"
	line "grows in the Egg."

	para "It also has to be"
	line "with other active"
	cont "#MON to hatch."

	para "<PLAYER>, you're"
	line "the only person"
	cont "we can rely on."

	para "Please call Prof."
	line "Elm when that Egg"
	cont "hatches!"
	done

.WalkAroundMovement:
	step_left
	step_left
	step_down
	step_left
	step_left
	step_end

.WalkStraightMovement:
	step_down
	step_left
	step_left
	step_left
	step_left
.WalkDownMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

MoonflowerPokeCenter1FGameboyKidText:
	text "A guy named Bill"
	line "made the #MON"
	cont "PC storage system."
	done

MoonflowerPokeCenter1FGentlemanText:
	text "It was around"
	line "three years ago."

	para "Team Rocket was up"
	line "to no good with"
	cont "#MON."

	para "But justice pre-"
	line "vailed--a young"
	cont "kid broke 'em up."
	done

MoonflowerPokeCenter1FSageText:
	text "Some Bellsprout"
	line "are found with"
	cont "Gold Leaves."

	para "And some Oddish"
	line "are found with"
	cont "Silver Leaves."

	para "These are valued"
	line "by a certain type"
	cont "of person."
	done

MoonflowerPokeCenter1FYoungsterText:
	text "#MON are smart."
	line "They won't obey a"

	para "trainer they don't"
	line "respect."

	para "Without the right"
	line "Gym Badges, they"

	para "will just do as"
	line "they please."
	done
