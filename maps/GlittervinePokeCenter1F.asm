GlittervinePokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, GLITTERVINE_TOWN, 2
	warp_event  6,  7, GLITTERVINE_TOWN, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalRedScript

	def_object_events ; db didn't work here
	pc_nurse_event  5, 1
	person_event SPRITE_TEACHER,  3,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, GlittervinePokeCenter1FNPC1Script, -1
	person_event SPRITE_HIKER,  1,  8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervinePokeCenter1FNPC2Text, -1
	person_event SPRITE_GENTLEMAN, 6, 11, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervinePokeCenter1FNPC3Text, -1
	person_event SPRITE_LADY,  4,  9, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervinePokeCenter1FNPC4Text, -1

PokemonJournalRedScript:
	setflag ENGINE_READ_RED_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "MOD CO."

	para "MOD CO. has been"
	line "working hard for"
	cont "our sake since"
	cont "they bought SILPH"
	cont "CO.'s patent on"
	cont "the #GEAR."

	para "Since then, it's"
	line "been massively"
	cont "improved!"

	para "We owe MOD CO."
	line "a big thank you!"
	done

GlittervinePokeCenter1FNPC1Script:
	checkflag ENGINE_MAP_CARD
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

	text "A MAP CARD lets"
	line "you see where you"
	cont "are at any time."

	para "But #GEAR CARDS"
	line "are expensive."
	done

.Text2:
	text "A MAP CARD lets"
	line "you see where you"
	cont "are at any time."

	para "Oh!"

	para "You have one"
	line "already."

	para "That's nice."
	done

GlittervinePokeCenter1FNPC2Text:
	text "These PCs are"
	line "great."

	para "They're directly"
	line "linked to your"
	cont "#MON BOX."
	done

GlittervinePokeCenter1FNPC3Text:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

GlittervinePokeCenter1FNPC4Text:
	text "#MON JOURNAL"
	line "has such fascin-"
	cont "ating stories!"

	para "I come to #MON"
	line "CENTERS for the"

	para "latest issues, but"
	line "they're not the"

	para "only place with"
	line "a subscription."
	done
