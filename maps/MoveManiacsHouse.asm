MoveManiacsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 7
	warp_event  3,  7, CIANWOOD_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, magazinebookshelf

	def_object_events
	object_event  2,  3, SPRITE_COSPLAYER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MoveReminderScript, -1

MoveReminderScript:
	faceplayer
	opentext
	writetext MoveReminderIntroText
	waitbutton
	checkitem GOLD_LEAF
	iffalsefwd .no_gold_leaf
	writetext MoveReminderPromptText
	yesorno
	iffalsefwd .refused
	setval NO_MOVE ; to toggle move relearner
	writetext MoveReminderWhichMonText
	waitbutton
	special Special_MoveTutor
	ifequalfwd $0, .teach_move
.refused
	jumpopenedtext MoveReminderCancelText

.no_gold_leaf
	jumpopenedtext MoveReminderNoGoldLeafText

.teach_move
	takeitem GOLD_LEAF
	jumpopenedtext MoveReminderCancelText

MoveReminderIntroText::
	text "Me? I'm the"
	line "Move Maniac."

	para "I'll make your"
	line "#MON remember"

	para "a move if you'll"
	line "trade me a"
	cont "Gold Leaf!"
	done

MoveReminderPromptText::
	text "Do you want me to"
	line "teach one of your"
	cont "#MON a move?"
	done

MoveReminderWhichMonText::
	text "Yay! Which #MON"
	line "needs tutoring?"
	done

MoveReminderNoGoldLeafText::
	text "Huh? You don't"
	line "have any Gold"
	cont "Leaves."

	para "Sometimes you can"
	line "find them on wild"
	cont "Bellsprout."
	done

MoveReminderNoMovesText::
	text "Sorry… There isn't"
	line "any move I can"

	para "make that #MON"
	line "remember."
	prompt

MoveReminderCancelText::
	text "If your #MON"
	line "needs to learn a"

	para "move, come back"
	line "with a Gold Leaf!"
	done
