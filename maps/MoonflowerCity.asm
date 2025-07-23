MoonflowerCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MoonflowerCityFlyPoint

	def_warp_events
	warp_event 17, 27, MOONFLOWER_MART, 2
	warp_event 22, 27, MOONFLOWER_GYM, 1
	warp_event 27, 27, MOONFLOWER_POKECENTER_1F, 1
	warp_event 19, 17, MOONFLOWER_BIKE_SHOP, 1
;	warp_event 17, 19, MOONFLOWER_ONIX_TRADE_HOUSE, 1
;	warp_event 15, 19, ROUTE_31_MOONFLOWER_GATE, 1
;	warp_event 16, 19, ROUTE_31_MOONFLOWER_GATE, 2
;	warp_event 17, 18, ROUTE_36_MOONFLOWER_GATE, 3
;	warp_event 16, 18, ROUTE_36_MOONFLOWER_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 29, 13, BGEVENT_JUMPTEXT, MoonflowerCitySignText
	bg_event 21, 28, BGEVENT_JUMPTEXT, MoonflowerGymSignText
	bg_event 20, 31, BGEVENT_ITEM + HYPER_POTION, EVENT_MOONFLOWER_CITY_HIDDEN_HYPER_POTION
	bg_event 23, 17, BGEVENT_ITEM + POKE_BALL, EVENT_MOONFLOWER_CITY_HIDDEN_POKE_BALL
	bg_event 12, 11, BGEVENT_ITEM + RARE_CANDY, EVENT_MOONFLOWER_CITY_RARE_CANDY
	bg_event 15, 11, BGEVENT_ITEM + PP_UP, EVENT_MOONFLOWER_CITY_PP_UP

	db 7 ; object_events
	person_event SPRITE_GRAMPS, 22, 22, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC1Text, -1
	person_event SPRITE_CHILD, 10, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC2Text, -1
	person_event SPRITE_YOUNGSTER, 24, 15, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC3Text, -1
	person_event SPRITE_SCHOOLBOY, 19, 20, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MoonflowerCityNPC4Text, -1
	fruittree_event 18,  6, FRUITTREE_MOONFLOWER_CITY, CHERI_BERRY, PAL_NPC_RED

	object_const_def

MoonflowerCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIOLET
	endcallback

MoonflowerCityNPC1Text:
	text "I come here every"
	line "every morning to"
	cont "take care of the"
	cont "garden."

	para "It's nice, don't"
	line "you think?"
	done

MoonflowerCityNPC2Text:
	text "Heehee!"

	para "Sometimes, when"
	line "look in the trash-"
	cont "cans, there's an"
	cont "item inside!"

	para "Make sure to check"
	line "every one of them!"
	done

MoonflowerCityNPC3Text:
	text "The new DEPARTMENT"
	line "STORE just opened."

	para "They have anything"
	line "a trainer could"
	cont "want!"
	
	para "There's more stock"
	line "available once"
	cont "you've collected"
	cont "some BADGES."

	para "For example, you"
	line "need three BADGES"
	cont "to shop for"
	
	para "evolutionary"
	line "stones."
	done

MoonflowerCityNPC4Text:
	text "Oh, how I wish"
	line "for a bike!"

	para "I come here every"
	line "single day to"
	cont "stare at this"
	cont "bike."
	done

MoonflowerCitySignText:
	text "MOONFLOWER CITY"

	para "The city"
	line "bursting with"
	cont "happy life."
	done

MoonflowerGymSignText:
	text "MOONFLOWER CITY"
	line "#MON GYM"
	cont "LEADER: JULIA"

	para "An elegant master"
	line "of FAIRY #MON."
	done
