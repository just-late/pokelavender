EcruteakCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, EcruteakCityFlyPoint

	def_warp_events
	warp_event 35, 26, ROUTE_42_ECRUTEAK_GATE, 1
	warp_event 35, 27, ROUTE_42_ECRUTEAK_GATE, 2
	warp_event 23, 11, ECRUTEAK_HOUSE, 1
	warp_event 17,  9, ECRUTEAK_SHRINE_OUTSIDE, 3
	warp_event 18,  9, ECRUTEAK_SHRINE_OUTSIDE, 4
	warp_event 23, 27, ECRUTEAK_POKECENTER_1F, 1
	warp_event  5, 21, ECRUTEAK_LUGIA_SPEECH_HOUSE, 1
	warp_event 23, 21, DANCE_THEATRE, 1
	warp_event 29, 21, ECRUTEAK_MART, 2
	warp_event  6, 27, ECRUTEAK_GYM, 1
	warp_event 13, 27, ECRUTEAK_ITEMFINDER_HOUSE, 1
	warp_event  5, 17, VALERIES_HOUSE, 1
	warp_event  5,  5, BURNED_TOWER_1F, 1
	warp_event  0, 18, ROUTE_38_ECRUTEAK_GATE, 3
	warp_event  0, 19, ROUTE_38_ECRUTEAK_GATE, 4
	warp_event 29, 27, ECRUTEAK_CHERISH_BALL_HOUSE, 1
	warp_event 13, 17, ECRUTEAK_DESTINY_KNOT_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 15, 21, BGEVENT_JUMPTEXT, EcruteakCitySignText
	bg_event  8, 28, BGEVENT_JUMPTEXT, EcruteakGymSignText
	bg_event 21, 21, BGEVENT_JUMPTEXT, EcruteakDanceTheaterSignText
	bg_event  7,  9, BGEVENT_JUMPTEXT, BurnedTowerSignText
	bg_event 15, 11, BGEVENT_JUMPTEXT, EcruteakShrineSignText
	bg_event 21, 11, BGEVENT_JUMPTEXT, EcruteakBarrierStationSignText
	bg_event 25, 14, BGEVENT_ITEM + HYPER_POTION, EVENT_ECRUTEAK_CITY_HIDDEN_HYPER_POTION
	bg_event 33, 16, BGEVENT_ITEM + RARE_CANDY, EVENT_ECRUTEAK_CITY_HIDDEN_RARE_CANDY
	bg_event  1, 17, BGEVENT_ITEM + ULTRA_BALL, EVENT_ECRUTEAK_CITY_HIDDEN_ULTRA_BALL
	bg_event  6,  6, BGEVENT_ITEM + ETHER, EVENT_ECRUTEAK_CITY_HIDDEN_ETHER

	def_object_events
	object_event 20, 15, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, EcruteakCityGramps1Text, -1
	object_event 20, 21, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, EcruteakCityGramps2Text, -1
	object_event 19, 26, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, EcruteakCityLass1Text, -1
	object_event  8, 10, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, EcruteakCityLass2Script, -1
	object_event  9, 22, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, EcruteakCityFisherScript, -1
	object_event 11, 16, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, EcruteakCityYoungsterText, -1
	object_event  3, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, EcruteakCityGramps3Text, EVENT_ECRUTEAK_CITY_GRAMPS
	object_event 11, 11, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, EcruteakCityHexManiacText, -1
	object_event 11, 11, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, (1 << MORN) | (1 << DAY), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, EcruteakCitySightseerMText, -1
	pokemon_event 12, 11, SMEARGLE, SPRITEMOVEDATA_POKEMON, -1, (1 << MORN) | (1 << DAY), PAL_NPC_BROWN, EcruteakCitySmeargleText, -1
	object_event 16,  9, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_ARCH_TREE_LEFT, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 19,  9, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_ARCH_TREE_RIGHT, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, PERSONTYPE_COMMAND, end, NULL, -1

EcruteakCityFlyPoint:
	setflag ENGINE_FLYPOINT_ECRUTEAK
	endcallback

EcruteakCityLass2Script:
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue_jumptextfaceplayer EcruteakCityLass2Text_ReleasedBeasts
	jumptextfaceplayer EcruteakCityLass2Text

EcruteakCityFisherScript:
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftrue_jumptextfaceplayer EcruteakCityFisherText_JasmineReturned
	jumptextfaceplayer EcruteakCityFisherText

EcruteakCityGramps1Text:
	text "Ecruteak used to"
	line "have two towers:"

	para "one each in the"
	line "east and west."
	done

EcruteakCityGramps2Text:
	text "Ah, child."
	line "Have you learned"

	para "to dance like the"
	line "Kimono Girls?"

	para "If you go to their"
	line "Dance Theater, an"

	para "odd old man will"
	line "give you something"
	cont "nice, I hear."
	done

EcruteakCityLass1Text:
	text "I'm going to get"
	line "my #MON blessed"

	para "at the shrine."
	line "Care to join me?"
	done

EcruteakCityHexManiacText:
	text "Spirits of #MON"
	line "haunt this place…"
	done

EcruteakCitySightseerMText:
	text "Ecruteak has such"
	line "an incredible"
	cont "history."

	para "Smeargle and I"
	line "traveled here to"
	cont "draw it."
	done

EcruteakCitySmeargleText:
	text "Smeargle: Smeer!"
	done

EcruteakCityLass2Text:
	text "The tower that"
	line "used to be here…"

	para "My grandma told me"
	line "it used to be much"
	cont "taller."
	done

EcruteakCityLass2Text_ReleasedBeasts:
	text "Three big #MON"
	line "ran off in differ-"
	cont "ent directions."
	cont "What were they?"
	done

EcruteakCityFisherText:
	text "I heard a rumor"
	line "about Olivine"
	cont "Lighthouse."

	para "The #MON that"
	line "serves as the"

	para "beacon fell ill."
	line "Sounds like they"
	cont "are in trouble."
	done

EcruteakCityFisherText_JasmineReturned:
	text "The #MON at"
	line "Olivine Lighthouse"
	cont "has been cured."

	para "Boats can safely"
	line "sail out to sea at"
	cont "night again."
	done

EcruteakCityYoungsterText:
	text "I hear #MON are"
	line "rampaging at the"

	para "Lake of Rage. I'd"
	line "like to see that."
	done

EcruteakCityGramps3Text:
	text "In the distant"
	line "past…"

	para "This tower burned"
	line "in a fire. Three"

	para "nameless #MON"
	line "perished in it."

	para "A rainbow-colored"
	line "#MON descended"

	para "from the sky and"
	line "resurrected them…"

	para "It's a legend that"
	line "has been passed"

	para "down by Ecruteak"
	line "Gym Leaders."

	para "Me?"

	para "I was a trainer"
	line "way back when."
	cont "Hohoho!"
	done

EcruteakCitySignText:
	text "Ecruteak City"
	line "A Historical City"

	para "Where the Past"
	line "Meets the Present"
	done

EcruteakGymSignText:
	text "Ecruteak City"
	line "#MON Gym"
	cont "Leader: Morty"

	para "The Mystic Seer of"
	line "the Future"
	done

EcruteakDanceTheaterSignText:
	text "Ecruteak Dance"
	line "Theater"
	done

BurnedTowerSignText:
	text "Burned Tower"

	para "It was destroyed"
	line "by a mysterious"
	cont "fire."

	para "Please stay away,"
	line "as it is unsafe."
	done

EcruteakShrineSignText:
	text "Ecruteak Shrine"

	para "“Life is a lamp-"
	line "flame before a"
	cont "wind.”"
	done

EcruteakBarrierStationSignText:
	text "Barrier Station"
	line "to Bell Tower"

	para "No Trespassing by"
	line "the Unworthy"
	done
