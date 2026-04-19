MarigoldCave1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 21,  5, PLAYERS_HOUSE_2F, 1
	warp_event  3, 25, MARIGOLD_CAVE_2F, 1
	warp_event 35,  3, MARIGOLD_CAVE_2F, 2
	warp_event 33,  5, MARIGOLD_CAVE_1F, 5
	warp_event 35, 13, MARIGOLD_CAVE_1F, 4
	warp_event 33, 27, MARIGOLD_PORT, 1
	warp_event 10, 21, MARIGOLD_CAVE_1F, 1
	warp_event 10, 15, MARIGOLD_CAVE_1F, 1
	warp_event 15,  4, MARIGOLD_CAVE_1F, 1
	warp_event 35,  2, MARIGOLD_CAVE_1F, 1

    def_coord_events

    def_bg_events
	bg_event 21, 24, BGEVENT_ITEM + GREAT_BALL, EVENT_MARIGOLD_CAVE_1F_HIDDEN_GREAT_BALL
	bg_event 34, 24, BGEVENT_ITEM + BIG_PEARL, EVENT_MARIGOLD_CAVE_1F_HIDDEN_BIG_PEARL
	bg_event 21,  2, BGEVENT_ITEM + PARALYZEHEAL, EVENT_MARIGOLD_CAVE_1F_HIDDEN_PARALYZEHEAL

    db 11 ; object events
	person_event SPRITE_FAT_GUY, 17, 32, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, 0, EVENT_SMASHED_ROCKS_IN_MARIGOLD_CAVE
	smashrock_event 33, 20
	smashrock_event 10,  9
	smashrock_event 33, 21
	person_event SPRITE_HIKER, 23, 17, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHikerRussell, -1
	person_event SPRITE_HIKER, 15,  9, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerHikerDaniel, -1
	person_event SPRITE_JUGGLER, 24, 11, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerJugglerFritz, -1
	itemball_event 21, 23, GREAT_BALL, 1, EVENT_MARIGOLD_CAVE_1F_GREAT_BALL
	itemball_event 31,  4, X_ATTACK, 1, EVENT_MARIGOLD_CAVE_1F_X_ATTACK
	itemball_event 15,  2, POTION, 1, EVENT_MARIGOLD_CAVE_1F_POTION
	itemball_event  5, 20, AWAKENING, 1, EVENT_MARIGOLD_CAVE_1F_AWAKENING

GenericTrainerHikerRussell:
	generictrainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText

	text "All right, then!"
	line "I've decided."

	para "I'm not leaving"
	line "until my #MON"
	cont "get tougher!"
	done

GenericTrainerHikerDaniel:
	generictrainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText

    text "Wow! You beat a"
    line "GYM LEADER?"

    para "No wonder you"
    line "could beat me!"
	done

GenericTrainerJugglerFritz:
	generictrainer JUGGLER, FRITZ, EVENT_BEAT_JUGGLER_FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText

	text "No more ships for"
	line "me. Next time,"

	para "I'm taking the"
	line "Magnet Train."
	done

HikerRussellSeenText:
	text "You're headed to"
	line "MARIGOLD, are you?"

	para "Let my #MON see"
	line "if you are good"
	cont "enough to battle."
	done

HikerRussellBeatenText:
	text "Oh, oh, oh!"
	done

HikerDanielSeenText:
	text "Whoa! What a"
	line "surprise!"

	para "I didn't expect to"
	line "see anyone here!"
	done

HikerDanielBeatenText:
	text "Whoa! I'm beaten"
	line "big time!"
	done

JugglerFritzSeenText:
	text "Hey!"
	line "Watch this!"
	done

JugglerFritzBeatenText:
    text "Shoot! I'm"
    line "beaten!"
	done
