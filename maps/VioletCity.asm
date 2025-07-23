VioletCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VioletCityFlyPoint

	def_warp_events
	warp_event 17, 27, VIOLET_MART, 2
	warp_event 22, 27, VIOLET_GYM, 1
	warp_event 18, 18, EARLS_POKEMON_ACADEMY, 1
	warp_event 15, 18, VIOLET_NICKNAME_SPEECH_HOUSE, 1
	warp_event 27, 27, VIOLET_POKECENTER_1F, 1
	warp_event 17, 19, VIOLET_ONIX_TRADE_HOUSE, 1
	warp_event 21,  3, SPROUT_TOWER_1F, 1
	warp_event 15, 19, ROUTE_31_VIOLET_GATE, 1
	warp_event 16, 19, ROUTE_31_VIOLET_GATE, 2
	warp_event 17, 18, ROUTE_36_VIOLET_GATE, 3
	warp_event 16, 18, ROUTE_36_VIOLET_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 29, 13, BGEVENT_JUMPTEXT, VioletCitySignText
	bg_event 21, 28, BGEVENT_JUMPTEXT, VioletGymSignText
	bg_event 19, 19, BGEVENT_JUMPTEXT, SproutTowerSignText
	bg_event 18, 19, BGEVENT_JUMPTEXT, EarlsPokemonAcademySignText
	bg_event 20, 31, BGEVENT_ITEM + HYPER_POTION, EVENT_VIOLET_CITY_HIDDEN_HYPER_POTION
	bg_event 19, 18, BGEVENT_ITEM + POKE_BALL, EVENT_VIOLET_CITY_HIDDEN_POKE_BALL

	def_object_events
	object_event 20, 19, SPRITE_FAT_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, VioletCityEarlScript, EVENT_VIOLET_CITY_EARL
	object_event 23, 18, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, VioletCityLassText, -1
	object_event 21, 19, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 2, 1, -1, (1 << MORN) | (1 << DAY), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, VioletCityCooltrainerM1Text, -1
	object_event 21, 18, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, (1 << EVE) | (1 << NITE), 0, PERSONTYPE_COMMAND, jumptextfaceplayer, VioletCityCooltrainerFText, -1
	object_event 15, 22, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, VioletCityGrampsText, -1
	object_event 22, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, VioletCityYoungsterText, -1
	object_event 22, 18, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, VioletCityFisherText, -1
	object_event 23, 19, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, VioletCityCooltrainerM2Text, -1
	cuttree_event 20, 18, EVENT_VIOLET_CITY_CUT_TREE
	fruittree_event 18,  6, FRUITTREE_VIOLET_CITY, CHERI_BERRY, PAL_NPC_RED
	itemball_event 12, 11, PP_UP, 1, EVENT_VIOLET_CITY_PP_UP
	itemball_event 33, 10, RARE_CANDY, 1, EVENT_VIOLET_CITY_RARE_CANDY

	object_const_def
	const VIOLETCITY_EARL

VioletCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIOLET
	endcallback

VioletCityEarlScript:
	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
	faceplayer
	opentext
	writetext Text_EarlAsksIfYouBeatFalkner
	yesorno
	iffalsefwd .FollowEarl
	jumpopenedtext Text_VeryNiceIndeed

.FollowEarl:
	writetext Text_FollowEarl
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow VIOLETCITY_EARL, PLAYER
	applymovement VIOLETCITY_EARL, VioletCityFollowEarl_MovementData
	turnobject PLAYER, UP
	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
	stopfollow
	special RestartMapMusic
	opentext
	writetext Text_HereTeacherIAm
	promptbutton
	verbosegivekeyitem TYPE_CHART
	writetext Text_EarlsTypeChart
	waitbutton
	closetext
	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
	applyonemovement VIOLETCITY_EARL, step_up
	playsound SFX_ENTER_DOOR
	disappear VIOLETCITY_EARL
	clearevent EVENT_EARLS_ACADEMY_EARL
	waitsfx
	end

VioletCityFollowEarl_MovementData:
	run_step_down
	run_step_down
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	run_step_down
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	run_step_up
	turn_head_down
	step_end

VioletCitySpinningEarl_MovementData:
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end

Text_EarlAsksIfYouBeatFalkner:
	text "Hello!"
	line "You are trainer?"

	para "Battle Gym Leader,"
	line "win you did?"
	done

Text_VeryNiceIndeed:
	text "Ooh, la la!"
	line "Very indeed nice!"
	done

Text_FollowEarl:
	text "Is that so? Then"
	line "study shall you!"
	cont "Follow me!"
	done

Text_HereTeacherIAm:
	text "Here, teacher I"
	line "am. Good it is"
	cont "you study here!"

	para "Take this and"
	line "learn you will!"
	done

Text_EarlsTypeChart:
	text "In battle, type"
	line "advantages you"
	cont "must know!"

	para "At any time, con-"
	line "sult this chart"
	cont "you may!"
	done

VioletCityLassText:
	text "Ghosts are rumored"
	line "to appear in"
	cont "Sprout Tower."

	para "They said Normal-"
	line "type #MON moves"

	para "had no effect on"
	line "ghosts."
	done

VioletCityCooltrainerM1Text:
	text "Hey, you're a"
	line "#MON trainer?"

	para "If you beat the"
	line "Gym Leader here,"

	para "you'll be ready"
	line "for prime time!"
	done

VioletCityCooltrainerFText:
	text "Bellsprout is a"
	line "popular #MON"
	cont "in this town."

	para "It doesn't do well"
	line "against our Gym"
	cont "Leader, though…"
	done

VioletCityGrampsText:
	text "Falkner, from the"
	line "Violet #MON"

	para "Gym, is a fine"
	line "trainer!"

	para "He inherited his"
	line "father's gym and"

	para "has done a great"
	line "job with it."
	done

VioletCityYoungsterText:
	text "I saw a wiggly"
	line "tree up ahead!"

	para "If you touch it,"
	line "it squirms and"
	cont "dances! Cool!"
	done

VioletCityFisherText:
	text "How does such a"
	line "wobbly building"

	para "survive an earth-"
	line "quake? I must be"
	cont "missing something."
	done

VioletCityCooltrainerM2Text:
	text "We care about the"
	line "traditional build-"
	cont "ings around here."

	para "Even the # Mart"
	line "and #MON Center"

	para "are painted som-"
	line "berly to blend in."
	done

VioletCitySignText:
	text "Violet City"

	para "The City of"
	line "Nostalgic Scents"
	done

VioletGymSignText:
	text "Violet City"
	line "#MON Gym"
	cont "Leader: Falkner"

	para "The Elegant Master"
	line "of Flying #MON"
	done

SproutTowerSignText:
	text "Sprout Tower"

	para "Experience the"
	line "Way of #MON"
	done

EarlsPokemonAcademySignText:
	text "Earl's #MON"
	line "Academy"
	done
