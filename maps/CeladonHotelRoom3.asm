CeladonHotelRoom3_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, CELADON_HOTEL_2F, 4
	warp_event  4,  5, CELADON_HOTEL_2F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeladonHotelRoom3GrampsText, -1
	itemball_event  5,  2, ROOM_SERVICE, 1, EVENT_GOT_ROOM_SERVICE_IN_CELADON_HOTEL

CeladonHotelRoom3GrampsText:
	text "I've been staying"
	line "at this hotel"
	cont "every year since"
	cont "I was a wee lad."

	para "It almost feels"
	line "like a second"
	cont "home!"
	done
