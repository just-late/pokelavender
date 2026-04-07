MarigoldBoathouse_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
    warp_event 2, 7, MARIGOLD_PORT, 5
    warp_event 3, 7, MARIGOLD_PORT, 5

    def_coord_events

    def_bg_events
    bg_event 2, 3, BGEVENT_READ, MarigoldBoathouseBoatmanScript

    db 3 ; object_events
	person_event SPRITE_FISHER,  2,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MarigoldBoathouseBoatmanScript, -1
    person_event SPRITE_POKEFAN_F, 5, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, MarigoldBoathouseNPC1Text, -1
    person_event SPRITE_CHILD,  5, 4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MarigoldBoathouseNPC2Text, -1

MarigoldBoathouseBoatmanScript:
    faceplayer
    opentext
    writetext MarigoldBoatmanIntroText
;   yesorno
;   iftruefwd .End
;   writetext MarigoldBoatmanSailText ; Add a boat sailing script here
.End:
    closetext
    end

MarigoldBoatmanIntroText:
    text "Sorry."

    para "This is the end"
    line "of the demo."
    done

MarigoldBoathouseNPC1Text:
    text "My son won't quiet"
    line "down."

    para "He's a little over-"
    line "excited."
    done

MarigoldBoathouseNPC2Text:
    text "I'm going to go"
    line "on a BOAT!"
    
    para "I'm gonna go on"
    line "a BOAT!"

    para "HOORAY!"

    para "WOMAN: Shhhhh…"
    done
