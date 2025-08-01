MoonflowerOutskirts_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, MoonflowerOutskirtsAvalanche

	def_warp_events
	warp_event 10, 12, HIDDEN_TREE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 10, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_MOONFLOWER_OUTSKIRTS
	bg_event 11, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_MOONFLOWER_OUTSKIRTS

	def_object_events
	object_event 16, -2, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SUICUNE, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, NO_FORM, ObjectEvent, EVENT_SAW_SUICUNE_ON_ROUTE_42
	fruittree_event  2, 10, FRUITTREE_MOONFLOWER_OUTSKIRTS, RAWST_BERRY, PAL_NPC_TEAL
	fruittree_event 17, -2, FRUITTREE_ROUTE_42_1, PNK_APRICORN, PAL_NPC_PINK
	fruittree_event 18, -2, FRUITTREE_ROUTE_42_2, GRN_APRICORN, PAL_NPC_GREEN
	fruittree_event 19, -2, FRUITTREE_ROUTE_42_3, YLW_APRICORN, PAL_NPC_YELLOW
	itemball_event 14, 24, PP_UP, 1, EVENT_MOONFLOWER_CITY_PP_UP

MoonflowerOutskirtsAvalanche:
	checkevent EVENT_GOT_HM05_WHIRLPOOL
	iftruefwd .end
	changeblock 4, -2, $0a
	changeblock 6, -2, $0a
.end
	endcallback
