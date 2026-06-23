OredalePokeCenter1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  5,  7, OREDALE_CITY, 1
	warp_event  6,  7, OREDALE_CITY, 1

    def_coord_events

    def_bg_events
;	bg_event 10,  1

    db 5 ; object events
	pc_nurse_event 5, 1
	person_event SPRITE_BOARDER,  5,  3, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OredalePokeCenter1FBoarderScript, -1
	person_event SPRITE_HIKER,  4,  8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptext, OredalePokeCenter1FHikerText, -1
	person_event SPRITE_GAMER_GIRL,  5, 11, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, trade, NPC_TRADE_SKYLAR, -1
	object_event  8,  5, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptext, OredalePokeCenter1FNewspaperText, -1

OredalePokeCenter1FBoarderScript:
    faceplayer
    opentext
    checkevent EVENT_GOT_OREDALE_APRICORN_BOX
    iftrue_jumpopenedtext CoolApricornsText
    writetext OredalePokeCenter1FBoarderText
    yesorno
    iftruefwd .Item
    jumpopenedtext OredalePokeCenter1FAwShucksText

.Item:
    setevent EVENT_GOT_OREDALE_APRICORN_BOX
    writetext OredalePokeCenter1FApricornBoxText
    waitbutton
    verbosegivekeyitem APRICORN_BOX
    writetext OredalePokeCenter1FBoarderEndText
    waitbutton
    jumpopenedtext CoolApricornsText

OredalePokeCenter1FNewspaperText:
    text "“ATUVA TIMES”"

    para "TEAM INDIGO"
    line "CAUSES TROUBLE"
    cont "IN POWER PLANT"

    para "…<PAUSE>The article text"
    line "is too small to"
    cont "read!"
    done

OredalePokeCenter1FBoarderText:
    text "Hey hey hey!"

    para "Enjoying the snow?"
    done

OredalePokeCenter1FAwShucksText:
    text "Aw,<PAUSE> shucks!"
    done

OredalePokeCenter1FApricornBoxText:
    text "Do you know about"
    line "APRICORNS?"

    para "They're a special"
    line "kind of fruit."
    
    para "They grow on trees"
    line "around ATUVA!"

    para "You can make #"
    line "BALLS out of them!"

    para "Here, take this"
    line "box to collect"
    cont "APRICORNS in!"
    done

OredalePokeCenter1FBoarderEndText:
    text "You can find"
    line "APRICORNS growin'"
    cont "all round ATUVA."

    para "There aren't many"
    line "here up north,"
    cont "though."
    done

CoolApricornsText:
    text "Snow's as cool as"
    line "APRICORNS, am I"
    cont "right?"
    done

OredalePokeCenter1FHikerText:
    text "…<PAUSE>…<PAUSE>…"
    para "He's ignoring you."
    done
