OvercastGrove_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 12, 23, PLAYERS_HOUSE_2F, 1
	warp_event 13, 23, PLAYERS_HOUSE_2F, 1
	warp_event 14, 23, PLAYERS_HOUSE_2F, 1
	warp_event 15, 23, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event 14, 20, BGEVENT_JUMPTEXT, OvercastGroveSignText

    db 3 ; object events
	person_event SPRITE_BUG_CATCHER, 12, 11, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OvercastGroveBugCatcherText, -1
	person_event SPRITE_CUTE_GIRL, 17, 15, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, OvercastGroveLassText, -1
	person_event SPRITE_YOUNGSTER, 12, 22, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OvercastGroveYoungsterText, -1

OvercastGroveBugCatcherText:
    text "I came here to"
    line "catch BUG #MON,"

    para "but now I'm all"
    line "wet."
    done

OvercastGroveLassText:
    text "Heehee!"

    para "These puddles are"
    line "fun!"
    done

OvercastGroveYoungsterText:
    text "The sign says it"
    line "always rains"
    cont "here."

    para "I hate the rain!"

    para "……"

    para "Huh? What am I"
    line "doing here?"

    para "I'm waiting until"
    line "it stops raining!"
    done

OvercastGroveSignText:
    text "OVERCAST GROVE"
    
    para "A mysterious grove"
    line "where it always"
    cont "rains."
    done
