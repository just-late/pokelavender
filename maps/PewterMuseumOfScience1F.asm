PewterMuseumOfScience1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, KabutopsFossilSignpostScript
	bg_event  6,  3, BGEVENT_READ, OmastarFossilSignpostScript
	bg_event  3,  6, BGEVENT_READ, AerodactylFossilSignpostScript
	bg_event 12,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 13,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 14,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 15,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 17,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 18,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText

	def_object_events
	object_event 18,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, PERSONTYPE_SCRIPT, 0, Museum1FFossilScientistScript, -1
	object_event 12,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, Museum1FReceptionistScript, -1
	object_event 16,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GRAY, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum1FScientistText, -1
	object_event  1,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum1FGrampsText, -1
	object_event  4,  3, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum1FYoungsterText, -1

	object_const_def
	const PEWTERMUSEUMOFSCIENCE1F_SCIENTIST2

Museum1FFossilScientistScript:
	faceplayer
	opentext
	writetext Museum1FFossilScientistText
	waitbutton
	checkitem HELIX_FOSSIL
	iftruefwd .own_helix
	checkitem DOME_FOSSIL
	iftruefwd .own_dome
	checkitem OLD_AMBER
	iftruefwd .ask_old_amber
	jumpopenedtext NoFossilsText

.own_helix
	checkitem DOME_FOSSIL
	iftruefwd .own_helix_and_dome
	checkitem OLD_AMBER
	iftruefwd .ask_helix_amber
	writetext AskHelixFossilText
	yesorno
	iftruefwd ResurrectHelixFossil
	sjumpfwd .maybe_later

.own_dome
	checkitem OLD_AMBER
	iftruefwd .ask_dome_amber
	writetext AskDomeFossilText
	yesorno
	iftruefwd ResurrectDomeFossil
	sjumpfwd .maybe_later

.own_helix_and_dome
	checkitem OLD_AMBER
	iftruefwd .ask_helix_dome_amber
	loadmenu HelixDomeMenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, ResurrectHelixFossil
	ifequalfwd $2, ResurrectDomeFossil
	sjumpfwd .maybe_later

.ask_old_amber
	writetext AskOldAmberText
	yesorno
	iftruefwd ResurrectOldAmber
	sjumpfwd .maybe_later

.ask_helix_amber
	loadmenu HelixAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, ResurrectHelixFossil
	ifequalfwd $2, ResurrectOldAmber
	sjumpfwd .maybe_later

.ask_dome_amber
	loadmenu DomeAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, ResurrectDomeFossil
	ifequalfwd $2, ResurrectOldAmber
	sjumpfwd .maybe_later

.ask_helix_dome_amber
	loadmenu HelixDomeAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, ResurrectHelixFossil
	ifequalfwd $2, ResurrectDomeFossil
	ifequalfwd $3, ResurrectOldAmber
.maybe_later:
	jumpopenedtext MaybeLaterText

HelixDomeMenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 4, 15, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Helix Fossil@"
	db "Dome Fossil@"
	db "Cancel@"

HelixAmberMenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 4, 15, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Helix Fossil@"
	db "Old Amber@"
	db "Cancel@"

DomeAmberMenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 4, 14, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Dome Fossil@"
	db "Old Amber@"
	db "Cancel@"

HelixDomeAmberMenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 15, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Helix Fossil@"
	db "Dome Fossil@"
	db "Old Amber@"
	db "Cancel@"

ResurrectHelixFossil:
	takeitem HELIX_FOSSIL
	scall ResurrectAFossilScript
	givepoke OMANYTE, 20
	sjumpfwd FinishResurrect

ResurrectDomeFossil:
	takeitem DOME_FOSSIL
	scall ResurrectAFossilScript
	givepoke KABUTO, 20
	sjumpfwd FinishResurrect

ResurrectOldAmber:
	takeitem OLD_AMBER
	scall ResurrectAFossilScript
	givepoke AERODACTYL, 20
FinishResurrect:
	iffalse_jumpopenedtext NoRoomForFossilPokemonText
	jumpopenedtext TakeGoodCareOfItText

ResurrectAFossilScript:
	writetext ResurrectingPokemonText
	waitbutton
	closetext
	turnobject PEWTERMUSEUMOFSCIENCE1F_SCIENTIST2, RIGHT
	pause 15
	playsound SFX_BOOT_PC
	waitsfx
	pause 30
	playsound SFX_4_NOTE_DITTY
	waitsfx
	pause 5
	waitsfx
	pause 30
	playsound SFX_SHUT_DOWN_PC
	waitsfx
	pause 15
	faceplayer
	opentext
	end

Museum1FReceptionistScript:
	readvar VAR_FACING
	ifequalfwd DOWN, .Sneak
	ifequalfwd LEFT, .Sneak
	jumpthistextfaceplayer

	text "Welcome!"

	para "Thanks to a gene-"
	line "rous donation"
	cont "by Silph Co.,"

	para "admission is free"
	line "of charge!"

	para "Please go ahead."
	done

.Sneak:
	jumpthistextfaceplayer

	text "You can't sneak"
	line "in the back way!"
	done

KabutopsFossilSignpostScript:
	refreshscreen
	trainerpic KABUTOPS_FOSSIL
	waitbutton
	closepokepic
	jumpthistext

	text "Kabutops Fossil"
	line "(Dome)"

	para "A primitive and"
	line "rare #MON."
	done

OmastarFossilSignpostScript:
	refreshscreen
	trainerpic OMASTAR_FOSSIL
	waitbutton
	closepokepic
	jumpthistext

	text "Omastar Fossil"
	line "(Helix)"

	para "A primitive and"
	line "rare #MON."
	done

AerodactylFossilSignpostScript:
	refreshscreen
	trainerpic AERODACTYL_FOSSIL
	waitbutton
	closepokepic
	jumpthistext

	text "Aerodactyl Fossil"

	para "A primitive and"
	line "rare #MON."
	done

Museum1FScientistText:
	text "We are proud of"
	line "three fossils of"

	para "rare, prehistoric"
	line "#MON."

	para "I helped assemble"
	line "them!"
	done

Museum1FFossilScientistText:
	text "Did you know that"
	line "you can extract"

	para "#MON from"
	line "fossils?"

	para "If you ever need"
	line "to, let me take"
	cont "care of it!"
	done

Museum1FGrampsText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

Museum1FYoungsterText:
	text "There are two"
	line "places that I"
	cont "love!"

	para "One is the Ruins"
	line "of Alph in Johto."

	para "The other is the"
	line "Pewter Museum!"

	para "I get a sense of"
	line "history from both"
	cont "of them."
	done

Museum1FBookshelfSignpostText:
	text "Thick and well-"
	line "read books!"

	para "Archaeology Man-"
	line "ual, Lost #MON,"
	cont "#MON Ancestors,"

	para "Caring at the"
	line "Loamy Layer of"
	cont "Kanto…"
	done

AskHelixFossilText:
	text "Do you want to"
	line "resurrect the"
	cont "Helix Fossil?"
	done

AskDomeFossilText:
	text "Do you want to"
	line "resurrect the"
	cont "Dome Fossil?"
	done

AskOldAmberText:
	text "Do you want to"
	line "resurrect the"
	cont "Old Amber?"
	done

NoFossilsText:
	text "Hey! You don't"
	line "have any fossils."
	done

MaybeLaterText:
	text "Just talk to me"
	line "if you change"
	cont "your mind."
	done

ResurrectingPokemonText:
	text "OK! I'll resurrect"
	line "the #MON!"
	done

NoRoomForFossilPokemonText:
	text "Hey! You can't"
	line "carry another"
	cont "#MON, and your"
	cont "Box is full, too!"
	done

TakeGoodCareOfItText:
	text "Take good care"
	line "of it!"
	done
