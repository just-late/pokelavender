GuideGentsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GLITTERVINE_TOWN, 4
	warp_event  3,  7, GLITTERVINE_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, GuideGentsHouseGuideGentText, EVENT_GUIDE_GENT_VISIBLE_IN_GLITTERVINE

GuideGentsHouseGuideGentText:
	text "When I was a wee"
	line "lad, I was a hot-"
	cont "shot trainer!"

	para "Here's a word of"
	line "advice: Catch lots"
	cont "of #MON!"

	para "Treat them all"
	line "with kindness!"
	done
