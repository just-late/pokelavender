IcePathB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, IcePathB1FSetUpStoneTable

	def_warp_events
	warp_event  3, 15, ICE_PATH_1F, 3
	warp_event 17,  3, ICE_PATH_B2F_MAHOGANY_SIDE, 1
	warp_event 11,  2, ICE_PATH_B2F_MAHOGANY_SIDE, 3 ; hole
	warp_event  4,  7, ICE_PATH_B2F_MAHOGANY_SIDE, 4 ; hole
	warp_event  5, 12, ICE_PATH_B2F_MAHOGANY_SIDE, 5 ; hole
	warp_event 12, 13, ICE_PATH_B2F_MAHOGANY_SIDE, 6 ; hole
	warp_event  5, 25, ICE_PATH_1F, 4
	warp_event 11, 27, ICE_PATH_B2F_BLACKTHORN_SIDE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 30, BGEVENT_ITEM + MAX_POTION, EVENT_ICE_PATH_B1F_HIDDEN_MAX_POTION

	def_object_events
	object_event 11,  7, SPRITE_ICE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_BROWN, PERSONTYPE_COMMAND, jumpstd, strengthboulder, EVENT_BOULDER_IN_ICE_PATH_1
	object_event  7,  8, SPRITE_ICE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_BROWN, PERSONTYPE_COMMAND, jumpstd, strengthboulder, EVENT_BOULDER_IN_ICE_PATH_2
	object_event  8,  9, SPRITE_ICE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_BROWN, PERSONTYPE_COMMAND, jumpstd, strengthboulder, EVENT_BOULDER_IN_ICE_PATH_3
	object_event 17,  7, SPRITE_ICE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_BROWN, PERSONTYPE_COMMAND, jumpstd, strengthboulder, EVENT_BOULDER_IN_ICE_PATH_4
	object_event  4, 23, SPRITE_BOARDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBoarderMax, -1
	object_event 14, 24, SPRITE_SKIER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSkierBecky, -1
	itemball_event  5, 35, IRON, 1, EVENT_ICE_PATH_B1F_IRON

	object_const_def
	const ICEPATHB1F_BOULDER1
	const ICEPATHB1F_BOULDER2
	const ICEPATHB1F_BOULDER3
	const ICEPATHB1F_BOULDER4

IcePathB1FSetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 3, ICEPATHB1F_BOULDER1, .Boulder1
	stonetable 4, ICEPATHB1F_BOULDER2, .Boulder2
	stonetable 5, ICEPATHB1F_BOULDER3, .Boulder3
	stonetable 6, ICEPATHB1F_BOULDER4, .Boulder4
	db -1

.Boulder1:
	disappear ICEPATHB1F_BOULDER1
	clearevent EVENT_BOULDER_IN_ICE_PATH_1A
	sjumpfwd .FinishBoulder

.Boulder2:
	disappear ICEPATHB1F_BOULDER2
	clearevent EVENT_BOULDER_IN_ICE_PATH_2A
	sjumpfwd .FinishBoulder

.Boulder3:
	disappear ICEPATHB1F_BOULDER3
	clearevent EVENT_BOULDER_IN_ICE_PATH_3A
	sjumpfwd .FinishBoulder

.Boulder4:
	disappear ICEPATHB1F_BOULDER4
	clearevent EVENT_BOULDER_IN_ICE_PATH_4A
	; fallthrough

.FinishBoulder:
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	jumpthistext

	text "The boulder fell"
	line "through."
	done

GenericTrainerBoarderMax:
	generictrainer BOARDER, MAX, EVENT_BEAT_BOARDER_MAX, BoarderMaxSeenText, BoarderMaxBeatenText

	text "I'm not giving up!"
	done

GenericTrainerSkierBecky:
	generictrainer SKIER, BECKY, EVENT_BEAT_SKIER_BECKY, SkierBeckySeenText, SkierBeckyBeatenText

	text "Don't forget to"
	line "wear a scarf!"
	done

BoarderMaxSeenText:
	text "Blackthorn can't be"
	line "much farther…"
	done

BoarderMaxBeatenText:
	text "Wiped out!"
	done

SkierBeckySeenText:
	text "I can see my"
	line "breath freezing!"
	done

SkierBeckyBeatenText:
	text "Achoo!"
	done
