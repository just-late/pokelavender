Route3_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route3FlyPoint

	def_warp_events
	warp_event  5,  3, PLAYERS_HOUSE_2F, 1
	warp_event 11, 39, ROUTE_3_POKECENTER_1F, 1
	warp_event  8, 37, MARIGOLD_CAVE_1F, 1

	def_coord_events

	def_bg_events
	bg_event  6, 38, BGEVENT_JUMPTEXT, MarigoldCaveText
	bg_event 15,  9, BGEVENT_JUMPTEXT, Route3SignText
	bg_event 35, 41, BGEVENT_ITEM + MOON_STONE, EVENT_ROUTE_3_HIDDEN_MOON_STONE

	def_object_events
	object_event 26, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterRegis, -1
	object_event 28, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerYoungsterJimmy, -1
	object_event 12,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerYoungsterWarren, -1
	object_event 13, 46, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherOtis, -1
	object_event  4, 39, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerHikerBruce, -1
	itemball_event 25, 47, BIG_ROOT, 1, EVENT_ROUTE_3_BIG_ROOT

Route3FlyPoint:
	setflag ENGINE_FLYPOINT_MT_MOON
	endcallback

GenericTrainerYoungsterRegis:
	generictrainer YOUNGSTER, REGIS, EVENT_BEAT_YOUNGSTER_REGIS, .SeenText, .BeatenText

	text "Looks like I need"
	line "more training!"
	done

.SeenText:
	text "YOUNGSTER? Good-"
	line "ness, how rude!"

	para "Call me SHORTS"
	line "BOY!"
	done

.BeatenText:
	text "My pride remains."
	
	para "I am still SHORTS"
	line "BOY!"
	done

GenericTrainerYoungsterJimmy:
	generictrainer YOUNGSTER, JIMMY, EVENT_BEAT_YOUNGSTER_JIMMY, .SeenText, .BeatenText

	text "I wear shorts the"
	line "whole year round."

	para "That's my fashion"
	line "policy."
	done

.SeenText:
	text "I can run like the"
	line "wind!"
	done

.BeatenText:
	text "Blown away!"
	done

GenericTrainerYoungsterWarren:
	generictrainer YOUNGSTER, WARREN, EVENT_BEAT_YOUNGSTER_WARREN, .SeenText, .BeatenText

	text "You looked strong."

	para "I was afraid to"
	line "take you on…"
	done

.SeenText:
	text "Hmmm… I don't know"
	line "what to do…"
	done

.BeatenText:
	text "I knew I'd lose…"
	done

GenericTrainerFirebreatherOtis:
	generictrainer FIREBREATHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, .SeenText, .BeatenText

	text "When it rains,"
	line "it's hard to get"
	cont "ignition…"
	done

.SeenText:
	text "Ah! The weather's"
	line "as fine as ever."
	done

.BeatenText:
	text "It's sunny, but"
	line "I'm all wet…"
	done

GenericTrainerHikerBruce:
	generictrainer HIKER, BRUCE, EVENT_BEAT_HIKER_BRUCE, .SeenText, .BeatenText

	text "Shucks…"

	para "I have to get back"
	line "on the road now!"
	done

.SeenText:
	text "Have you been to"
	line "the cave up ahead?"

	para "It's a hard trek,"
	line "but it's worth it!"
	done

.BeatenText:
	text "I'm all worn out"
	line "from the trek!"
	done

Route3SignText:
	text "ROUTE 3"

	para "MOONFLOWER CITY -"
	line "MARIGOLD CAVE"
	done

MarigoldCaveText:
	text "MARIGOLD CAVE"

	para "WARNING!"
	line "Strong wild"
	cont "#MON inside."
	done
