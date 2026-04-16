OvercastGrove_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 12, 27, ROUTE_3, 4
	warp_event 13, 27, ROUTE_3, 4
	warp_event 14, 27, ROUTE_3, 4
	warp_event 15, 27, ROUTE_3, 4

    def_coord_events

    def_bg_events
	bg_event 14, 24, BGEVENT_JUMPTEXT, OvercastGroveSignText

    db 3 ; object events
	person_event SPRITE_BUG_CATCHER, 16, 11, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OvercastGroveBugCatcherText, -1
	person_event SPRITE_CUTE_GIRL, 21, 15, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, OvercastGroveLassText, -1
	person_event SPRITE_YOUNGSTER, 16, 22, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OvercastGroveYoungsterText, -1

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
    
    para "A mysterious"
    line "clearing where it"
    cont "always rains."
    done
