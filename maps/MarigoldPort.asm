MarigoldPort_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 41, 9, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events
	bg_event 36, 12, BGEVENT_JUMPTEXT, MarigoldPortSignText

    db 9 ; object_events
	person_event SPRITE_LASS, 13, 23, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC1Text, -1
	person_event SPRITE_BUG_MANIAC, 11, 28, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC2Text, -1
	person_event SPRITE_CHILD, 16, 29, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC3Text, -1
	person_event SPRITE_BEACH_GUY, 10, 11, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldPortNPC4Text, -1
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

MarigoldPortNPC1Text:
    text "I thought the"
    line "beach would be"
    cont "full of people."

    para "This is quite"
    line "pleasant!"
    done

MarigoldPortNPC2Text:
    text "I like to fish on"
    line "the pier."

    para "But some days, all"
    line "I catch is"
    cont "MAGIKARP."
    done

MarigoldPortNPC3Text:
    text "Are you a"
    line "#MON TRAINER?"

    para "…"

    para "Wow! Cool!"
    done

MarigoldPortNPC4Text:
    text "I love the beach!"
    line "It's so calm and…"

    para "OW! A KRABBY"
    line "pinched me!"
    done
