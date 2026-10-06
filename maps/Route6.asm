Route6_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  6, LOCOVINE_TOWN, 1
	warp_event  2,  7, LOCOVINE_TOWN, 2

	def_coord_events

	def_bg_events

	db 17
	object_event  8,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPokefanmRex, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPokefanmAllan, -1
	object_event 28, 44, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsDayanddani1, -1
	object_event 27, 44, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsDayanddani2, -1
	object_event 10, 35, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerYoungsterChaz, -1
	object_event 28, 41, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGuitaristfWanda, -1
	person_event SPRITE_DONPHAN_OW, 11, 17, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW, 10, 19, SPRITEMOVEDATA_WANDER, 2, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW,  9, 16, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW, 26, 12, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW, 24, 19, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW, 20, 16, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW, 22, 15, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW, 20, 21, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS
	person_event SPRITE_DONPHAN_OW, 28, 11, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route6DonphanScript, EVENT_MIGRATION_STAGE_1_ENDS

Route6DonphanScript:
	faceplayer
	cry DONPHAN
	jumptext Route6DonphanText

GenericTrainerPokefanmRex:
	generictrainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText

	text "Look how adorable"
	line "my PHANPY acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmRexSeenText:
	text "My PHANPY is the"
	line "cutest in the"
	cont "world."
	done

PokefanmRexBeatenText:
	text "My PHANPY!"
	done

GenericTrainerPokefanmAllan:
	generictrainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText

	text "Look how adorable"
	line "my TEDDIURSA acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmAllanSeenText:
	text "My TEDDIURSA is"
	line "the cutest in the"
	cont "world."
	done

PokefanmAllanBeatenText:
	text "My TEDDIURSA!"
	done

GenericTrainerTwinsDayanddani1:
	generictrainer TWINS, DAYANDDANI1, EVENT_BEAT_TWINS_DAY_AND_DANI, TwinsDayanddani1SeenText, TwinsDayanddani1BeatenText

	text "DAY: You beat us…"
	done

TwinsDayanddani1SeenText:
	text "DAY: Are you going"
	line "to beat us?"
	done

TwinsDayanddani1BeatenText:
	text "DAY: Waah!"
	done

GenericTrainerTwinsDayanddani2:
	generictrainer TWINS, DAYANDDANI2, EVENT_BEAT_TWINS_DAY_AND_DANI, TwinsDayanddani2SeenText, TwinsDayanddani2BeatenText

	text "DANI: Looks like"
	line "we got bounced."
	done

TwinsDayanddani2SeenText:
	text "DANI: We'll knock"
	line "you flat!"
	done

TwinsDayanddani2BeatenText:
	text "DANI: Eeeeh!"
	done

GenericTrainerYoungsterChaz:
	generictrainer YOUNGSTER, CHAZ, EVENT_BEAT_YOUNGSTER_CHAZ, .SeenText, .BeatenText

	text "Me and my big"
	line "mouth…"
	done

.SeenText:
	text "Do I see a strong"
	line "trainer?"

	para "Nope, there's only"
	line "trash here!"
	done

.BeatenText:
	text "The trash was me…"
	done

GenericTrainerGuitaristfWanda:
	generictrainer GUITARISTF, WANDA, EVENT_BEAT_GUITARISTF_WANDA, .SeenText, .BeatenText

	text "Just move along…"
	done

.SeenText:
	text "You'd better"
	line "scatter and run!"
	done

.BeatenText:
	text "The battle's lost"
	line "and not won…"
	done

Route6AdvancedTipsSignText:
	text "Advanced Tips!"

	para "Some items may"
	line "seem harmful to"
	cont "the holder, like"

	para "an Iron Ball or"
	line "a Ring Target."

	para "But with the move"
	line "Trick, the holder"

	para "can swap their"
	line "item with the"
	cont "opponent!"
	done

Route6DonphanText:
	text "The DONPHAN"
	line "huffed heartily."
	done
