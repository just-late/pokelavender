GemrootNPCHouse1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GEMROOT_TOWN, 6
	warp_event  3,  7, GEMROOT_TOWN, 6

	def_coord_events

	def_bg_events

	db 3
	object_event  3,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, AncientBookScript, -1 
	person_event SPRITE_HIKER,  3,  2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, TravelingBrothersText, -1
	pokemon_event  2,  4, PIDGEOT, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, PidgeotCryText, -1

AncientBookScript:
	opentext
	writetext AncientBookText
	yesorno
	iffalsefwd .Done
	writetext FourGuardiansText
	yesorno
	iffalsefwd .Done
	writetext MysteriousLegendText
	yesorno
	iffalsefwd .Done
	writetext Log2Text
	yesorno
	iffalsefwd .Done
	writetext Log3Text
	yesorno
	iffalsefwd .Done
	writetext Log4Text
	waitbutton
.Done
	endtext

TravelingBrothersText:
	text "Hello, <PLAYER>!"
	line "Going on a"

	para "journey, are you?"
	
	para "Here's my advice."
	line "I have twelve"

	para "brothers, and"
	line "they've scattered"

	para "themselves all"
	line "over ATTUVA."

	para "They're all in"
	line "search of a"

	para "great treasure."

	para "If you find any"
	line "of them, they"

	para "might share"
	line "something nice"
	cont "with you."
	done

PidgeotCryText:
	text "PIDGEOT: Piidgee!"
	done

AncientBookText:
	text "There's an old"
	line "book here."

	para "Read it?"
	done

FourGuardiansText:
	text "LOG 1--"

	para "We have traveled"
	line "into the depths"

	para "of GLITTERVINE"
	line "TUNNEL, in search"

	para "of the first"
	line "guardian."

	para "The ancient legend"
	line "tells of four"

	para "guardians, and it"
	line "is these we seek."

	para "Keep reading?"
	done

MysteriousLegendText:
	text "The legend tells"
	line "us that when the"

	para "four guardians"
	line "are united, an"

	para "ancient path will"
	line "open to us."

	para "Keep reading?"
	done

Log2Text:
	text "LOG 2--"

	para "We have run out"
	line "of good water."

	para "The first"
	line "guardian posesses"

	para "great powers, so"
	line "I have christened"

	para "it the SCORCHING"
	line "FIST. It has used"

	para "its powers to"
	line "melt away our"

	para "water supply."

	para "Keep reading?"
	done

Log3Text:
	text "LOG 3--"
	
	para "The SCORCHING FIST"
	line "seems to be"

	para "resting, so we"
	line "seized our chance"

	para "and escaped the"
	line "caves."

	para "Not all of us"
	line "made it."

	para "Keep reading?"
	done

Log4Text:
	text "L G 4- -"

	para "The rest of the"
	line "text is completely"
	cont "illegible…"
	done
