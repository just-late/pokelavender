MrPsychicsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 5
	warp_event  3,  7, SAFFRON_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, MrPsychic, -1

MrPsychic:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
	iftruefwd MrPsychicsHouseTutorZenHeadbuttScript
	writetext MrPsychicText
	waitbutton
	setevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
MrPsychicsHouseTutorZenHeadbuttScript:
	writetext Text_MrPsychicsHouseTutorZenHeadbutt
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_MrPsychicsHouseTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval ZEN_HEADBUTT
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_MrPsychicsHouseTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_MrPsychicsHouseTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_MrPsychicsHouseTutorTaught

MrPsychicText:
	text "…"

	para "…"

	para "…"

	para "…I got it!"

	para "You want to learn"
	line "Zen Headbutt!"
	done

Text_MrPsychicsHouseTutorZenHeadbutt:
	text "I will teach your"
	line "#MON to use Zen"

	para "Headbutt for a"
	line "Silver Leaf."
	done

Text_MrPsychicsHouseTutorNoSilverLeaf:
	text "You don't have a"
	line "Silver Leaf…"
	done

Text_MrPsychicsHouseTutorQuestion:
	text "Should I teach"
	line "your #MON"
	cont "Zen Headbutt?"
	done

Text_MrPsychicsHouseTutorRefused:
	text "…I was wrong?"
	done

Text_MrPsychicsHouseTutorTaught:
	text "Your #MON now"
	line "knows how to use"
	cont "Zen Headbutt."
	done
