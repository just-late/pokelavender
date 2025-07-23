GemrootNPCHouse2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GEMROOT_TOWN, 7
	warp_event  3,  7, GEMROOT_TOWN, 7

	def_coord_events

	def_bg_events

	db 1 ; object_events
	person_event SPRITE_MATRON,  3,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptext, GemrootHouse2MatronText, -1

GemrootHouse2MatronText:
	text "Hmmm…"
	line "… …"

	para "…"
	line "… …"

	para "She seems busy."
	done
