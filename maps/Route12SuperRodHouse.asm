Route12SuperRodHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_12_SOUTH, 1
	warp_event  3,  7, ROUTE_12_SOUTH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1

Route12SuperRodHouseFishingGuruScript:
	checkevent EVENT_GOT_SUPER_ROD
	iftrue_jumptextfaceplayer .GaveSuperRodText
	faceplayer
	opentext
	writetext OfferSuperRodText
	yesorno
	iffalsefwd .Refused
	writetext GiveSuperRodText
	promptbutton
	verbosegivekeyitem SUPER_ROD
	iffalsefwd .NoRoom
	setevent EVENT_GOT_SUPER_ROD
	jumpthisopenedtext

.GaveSuperRodText:
	text "Try your hand at"
	line "fishing wherever"
	cont "there is water."

	para "Remember--you can"
	line "catch different"

	para "#MON using"
	line "different Rods."
	done

.Refused:
	writetext DontWantSuperRodText
	waitbutton
.NoRoom:
	endtext

OfferSuperRodText:
	text "I'm the Fishing"
	line "Guru's younger"
	cont "brother."

	para "I can see that you"
	line "like fishing."

	para "There's no doubt"
	line "in my mind at all!"

	para "So? I know I'm"
	line "right."
	done

GiveSuperRodText:
	text "Yes, yes. Just as"
	line "I thought!"

	para "Here, fishing fan!"
	line "Take this--it's a"
	cont "Super Rod."
	done

DontWantSuperRodText:
	text "Huh? My own eyes"
	line "deceived me?"
	done
