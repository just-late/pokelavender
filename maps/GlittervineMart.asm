GlittervineMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GLITTERVINE_TOWN, 1
	warp_event  3,  7, GLITTERVINE_TOWN, 1

	def_coord_events

	def_bg_events

	db 3 ; object_events
	person_event SPRITE_CLERK,  3,  1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GlittervineMartClerkScript, -1
	person_event SPRITE_COOL_DUDE,  6,  7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GlittervineMartNPC1Script, -1
	person_event SPRITE_CUTE_GIRL,  5,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineMartNPC2Text, -1

GlittervineMartClerkScript:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftruefwd .AfterDex
	pokemart MARTTYPE_STANDARD, MART_GLITTERVINE

.AfterDex:
	pokemart MARTTYPE_STANDARD, MART_GLITTERVINE_DEX

GlittervineMartNPC1Script:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue_jumptextfaceplayer GlittervineMartNPC1Text_PokeBallsInStock
	jumpthistextfaceplayer

	text "They're fresh out"
	line "of # BALLS!"

	para "When will they get"
	line "more of them?"
	done

GlittervineMartNPC1Text_PokeBallsInStock:
	text "# BALLS are in"
	line "stock! I wonder"
	cont "what held them"
	cont "up."
	done

GlittervineMartNPC2Text:
	text "When I was walking"
	line "in the grass, a"

	para "bug #MON poi-"
	line "soned my #MON!"

	para "I just kept going,"
	line "and my #MON"
	cont "barely recovered."

	para "You should keep an"
	line "ANTIDOTE with you."
	done
