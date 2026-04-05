MarigoldPort_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 41, 9, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event 36, 12, BGEVENT_JUMPTEXT, MarigoldPortSignText

    db 4 ; object_events
	person_event SPRITE_SAILOR, 20, 34, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortSailor1Text, -1
	person_event SPRITE_SAILOR, 19, 31, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortSailor2Text, -1
	person_event SPRITE_CUTE_GIRL, 23, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortGirlText, -1
	pokemon_event 14, 23, FURRET, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MarigoldPortFurretText, -1
    pokemon_event 33, 19, MACHOKE, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_GRAY, MarigoldPortMachokeText, -1

MarigoldPortSailor1Text:
    text "Ain't the salty"
    line "air a real thrill?"
    done

MarigoldPortSailor2Text:
    text "Urrgh!"

    para "These… boxes…"
    line "…are… so…"
    cont "HEAVY…!"
    done

MarigoldPortGirlText:
    text "I'm waiting for"
    line "my boat to the"
    cont "ACADEMY."

    para "I hope it comes"
    line "soon… FURRET is"
    cont "getting hungry."
    done

MarigoldPortSignText:
    text "MARIGOLD PORT"

    para "An isolated town"
    line "on the edge of"
    cont "the sea."
    done

MarigoldPortFurretText:
    text "Brurorr…"
    done

MarigoldPortMachokeText:
    text "MA!"
    
    para "CHO!"
    done
