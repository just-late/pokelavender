EarlsPokemonAcademy_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 15, MOONFLOWER_CITY, 3
	warp_event  4, 15, MOONFLOWER_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PokemonJournalWalkerScript
	bg_event  1,  1, BGEVENT_READ, PokemonJournalWalkerScript
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard

	def_object_events
	object_event  4,  2, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, AcademyEarl, EVENT_EARLS_ACADEMY_EARL
	object_event  2,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, AcademyNotebook, -1
	object_event  2,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, EarlsPokemonAcademyYoungster1Text, -1
	object_event  4,  7, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, EarlsPokemonAcademyYoungster2Text, -1
	object_event  3, 11, SPRITE_GAMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1

	object_const_def
	const EARLSPOKEMONACADEMY_EARL

AcademyEarl:
	givekeyitem TYPE_CHART ; failsafe in case Moonflower City Earl is gone already in a save
	applymovement EARLSPOKEMONACADEMY_EARL, AcademyEarlSpinMovement
	faceplayer
	opentext
	writetext AcademyEarlIntroText
	yesorno
	iffalsefwd .Part1
	writetext AcademyEarlTeachHowToWinText
	yesorno
	iffalse_jumpopenedtext AcademyEarlNoMoreToTeachText
.Part1:
	writetext AcademyEarlTeachMoreText
	yesorno
	iffalse_jumpopenedtext AcademyEarlNoMoreToTeachText
	jumpopenedtext AcademyEarlTeachHowToRaiseWellText

EarlsPokemonAcademyGameboyKid1Script:
	showtextfaceplayer EarlsPokemonAcademyGameboyKid1Text
	turnobject LAST_TALKED, DOWN
	end

EarlsPokemonAcademyGameboyKid2Script:
	showtextfaceplayer EarlsPokemonAcademyGameboyKid2Text
	turnobject LAST_TALKED, DOWN
	end

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .MenuHeader
	_2dmenu
	closewindow
	ifequalfwd $1, .Poison
	ifequalfwd $2, .Paralysis
	ifequalfwd $3, .Sleep
	ifequalfwd $4, .Burn
	ifequalfwd $5, .Freeze
	endtext

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 0, 11, 8
	dw .Data
	db 1 ; default option

.Data:
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(AcademyBlackboard), 0

.Text:
	db "Psn@"
	db "Par@"
	db "Slp@"
	db "Brn@"
	db "Frz@"
	db "Quit@"

AcademyNotebook:
	opentext
	writetext AcademyNotebookText
	yesorno
	iffalsefwd .Done
	writetext AcademyNotebookText1
	yesorno
	iffalsefwd .Done
	writetext AcademyNotebookText2
	yesorno
	iffalsefwd .Done
	writetext AcademyNotebookText3
	waitbutton
.Done:
	endtext

PokemonJournalWalkerScript:
	setflag ENGINE_READ_WALKER_JOURNAL
	jumpthistext

	text "#MON Journal"

	para "Special Feature:"
	line "Ex-Leader Walker!"

	para "Falkner's father"
	line "Walker is rumored"

	para "to be wandering"
	line "around Johto as"
	cont "a vagabond."
	done

AcademyEarlSpinMovement:
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
	turn_head_right
	turn_head_down
	step_end

AcademyEarlIntroText:
	text "Earl, I am!"

	para "Wonderful are"
	line "#MON, yes!"

	para "Teach you I will"
	line "to be a better"
	cont "trainer!"

	para "What you want to"
	line "know? Want to be"
	cont "a winner is you?"
	done

AcademyEarlTeachHowToWinText:
	text "Good! Teach you,"
	line "I will!"

	para "In battle, #MON"
	line "top on list jump"
	cont "out first!"

	para "Change order in"
	line "list, make battle"
	cont "easy, maybe!"

	para "More from me you"
	line "want to hear?"
	done

AcademyEarlTeachMoreText:
	text "So, want to know"
	line "how to raise"
	cont "#MON well?"
	done

AcademyEarlTeachHowToRaiseWellText:
	text "Fine! Teach you,"
	line "I will!"

	para "If #MON come"
	line "out in battle even"

	para "briefly, some Exp."
	line "Points it gets."

	para "At top of list put"
	line "weak #MON."

	para "Switch in battle"
	line "quick!"

	para "This way, weak"
	line "#MON strong"
	cont "become!"
	done

AcademyEarlNoMoreToTeachText:
	text "Oh! Smart student"
	line "you are! Nothing"
	cont "more do I teach!"

	para "Good to #MON"
	line "you must be!"
	done

EarlsPokemonAcademyYoungster1Text:
	text "I'm taking notes"
	line "of the teacher's"
	cont "lecture."

	para "I'd better copy"
	line "the stuff on the"
	cont "blackboard too."
	done

EarlsPokemonAcademyGameboyKid1Text:
	text "I traded my best"
	line "#MON to the"
	cont "guy beside me."
	done

EarlsPokemonAcademyGameboyKid2Text:
	text "Huh? The #MON I"
	line "just got is hold-"
	cont "ing something!"
	done

EarlsPokemonAcademyYoungster2Text:
	text "A #MON holding"
	line "a Berry will heal"
	cont "itself in battle."

	para "Many other items"
	line "can be held by"
	cont "#MON…"

	para "It sure is tough"
	line "taking notes…"
	done

AcademyBlackboardText:
	text "The blackboard"
	line "describes #MON"

	para "status changes in"
	line "battle."
	done

AcademyPoisonText:
	text "If poisoned, a"
	line "#MON steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "Antidote."
	done

AcademyParalysisText:
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a ParalyzeHeal."
	done

AcademySleepText:
	text "If asleep, your"
	line "#MON can't make"
	cont "a move."

	para "A sleeping #MON"
	line "doesn't wake up"
	cont "after battle."

	para "Wake it up with"
	line "an Awakening."
	done

AcademyBurnText:
	text "A burn steadily"
	line "consumes HP."

	para "It also reduces"
	line "attack power."

	para "A burn lingers"
	line "after battle."

	para "Use a Burn Heal as"
	line "the cure."
	done

AcademyFreezeText:
	text "If your #MON is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after battle."

	para "Thaw it out with"
	line "an Ice Heal."
	done

AcademyNotebookText:
	text "It's this kid's"
	line "notebook…"

	para "Catch #MON"
	line "using # Balls."

	para "Up to six can be"
	line "in your party."

	para "Keep reading?"
	done

AcademyNotebookText1:
	text "Before throwing a"
	line "# Ball, weaken"
	cont "the target first."

	para "A poisoned or"
	line "burned #MON is"
	cont "easier to catch."

	para "Keep reading?"
	done

AcademyNotebookText2:
	text "Some moves may"
	line "cause confusion."

	para "Confusion may make"
	line "a #MON attack"
	cont "itself."

	para "Leaving battle"
	line "clears up any"
	cont "confusion."

	para "Keep reading?"
	done

AcademyNotebookText3:
	text "People who catch"
	line "and use #MON"

	para "in battle are"
	line "#MON trainers."

	para "They are expected"
	line "to visit #MON"

	para "Gyms and defeat"
	line "other trainers."

	para "The next page"
	line "is… Blank!"

	para "Boy: E-he-he…"

	para "I haven't written"
	line "any more…"
	done
