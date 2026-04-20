UnionCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  3, UNION_CAVE_B1F_NORTH, 3
	warp_event  3, 45, UNION_CAVE_B1F_SOUTH, 1
	warp_event 17, 15, ROUTE_32, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7, 37, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPokemaniacLarry, -1
	object_event 15, 39, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerFirebreatherRay, -1
	object_event 11, 32, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerFirebreatherBill, -1
	object_event  5,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerRuin_maniacJones, -1

GenericTrainerPokemaniacLarry:
	generictrainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText

	text "Every Friday, you"
	line "can hear #MON"

	para "roars from deep"
	line "inside the cave."
	done

GenericTrainerFirebreatherBill:
	generictrainer FIREBREATHER, BILL, EVENT_BEAT_FIREBREATHER_BILL, FirebreatherBillSeenText, FirebreatherBillBeatenText

	text "On weekends, you"
	line "can hear strange"

	para "roars from deep in"
	line "the cave."
	done

GenericTrainerFirebreatherRay:
	generictrainer FIREBREATHER, RAY, EVENT_BEAT_FIREBREATHER_RAY, FirebreatherRaySeenText, FirebreatherRayBeatenText

	text "It's my #MON's"
	line "fire that lights"
	cont "up this cave."
	done

GenericTrainerRuin_maniacJones:
	generictrainer RUIN_MANIAC, JONES, EVENT_BEAT_RUIN_MANIAC_JONES, Ruin_maniacJonesSeenText, Ruin_maniacJonesBeatenText

	text "The Ruins are hid-"
	line "ing something…"
	cont "I just know it!"
	done

PokemaniacLarrySeenText:
	text "I roam far and"
	line "wide in search of"
	cont "#MON."

	para "Are you looking"
	line "for #MON too?"

	para "Then you're my"
	line "collecting rival!"
	done

PokemaniacLarryBeatenText:
	text "Ugh. My poor #-"
	line "mon…"
	done

FirebreatherBillSeenText:
	text "Zubat's Supersonic"
	line "keeps confusing"
	cont "my #MON."

	para "I'm seriously"
	line "upset about that!"
	done

FirebreatherBillBeatenText:
	text "I flamed out!"
	done

FirebreatherRaySeenText:
	text "If it's light, a"
	line "cave isn't scary."

	para "If you're strong,"
	line "#MON aren't"
	cont "scary."
	done

FirebreatherRayBeatenText:
	text "Flash!"
	done

Ruin_maniacJonesSeenText:
	text "Have you explored"
	line "the Ruins of Alph?"
	done

Ruin_maniacJonesBeatenText:
	text "Gahahah!"
	done

