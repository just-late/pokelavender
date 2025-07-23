GlittervineMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GLITTERVINE_TOWN, 1
	warp_event  3,  7, GLITTERVINE_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GlittervineMartClerkScript, -1
	object_event  7,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GlittervineMartCooltrainerMScript, -1
	object_event  2,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GlittervineMartYoungsterText, -1

GlittervineMartClerkScript:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftruefwd .AfterDex
	pokemart MARTTYPE_STANDARD, MART_GLITTERVINE

.AfterDex:
	pokemart MARTTYPE_STANDARD, MART_GLITTERVINE_DEX

GlittervineMartCooltrainerMScript:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue_jumptextfaceplayer GlittervineMartCooltrainerMText_PokeBallsInStock
	jumpthistextfaceplayer

	text "They're fresh out"
	line "of # Balls!"

	para "When will they get"
	line "more of them?"
	done

GlittervineMartCooltrainerMText_PokeBallsInStock:
	text "# Balls are in"
	line "stock! Now I can"
	cont "catch #MON!"
	done

GlittervineMartYoungsterText:
	text "When I was walking"
	line "in the grass, a"

	para "bug #MON poi-"
	line "soned my #MON!"

	para "I just kept going,"
	line "and my #MON"
	cont "barely recovered."

	para "You should keep an"
	line "Antidote with you."
	done
