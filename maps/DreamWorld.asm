DreamWorld_MapScriptHeader:
    def_scene_scripts

    def_callbacks
    callback MAPCALLBACK_OBJECTS, DreamWorldSpawnPlayerCallback

    def_warp_events
	warp_event  5,  2, PLAYERS_HOUSE_2F, 1
	warp_event 34, 17, PLAYERS_HOUSE_2F, 1

    def_coord_events
	coord_event 36, 15, 0, DreamWorldPlayerScriptTrigger

    def_bg_events

    db 4 ; object events
	person_event SPRITE_CHRIS, 15, 37, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, DreamWorldPlayerScript, -1
	person_event SPRITE_KRIS, 15, 37, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, DreamWorldPlayerScript, -1
	person_event SPRITE_CRYS, 15, 37, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, DreamWorldPlayerScript, -1
	pokemon_event 37, 17, SENTRET, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, DreamWorldSentretText, -1

    object_const_def
    const DREAMWORLD_PLAYER_1
    const DREAMWORLD_PLAYER_2
    const DREAMWORLD_PLAYER_3

DreamWorldSpawnPlayerCallback:
    disappear DREAMWORLD_PLAYER_1
    disappear DREAMWORLD_PLAYER_2
    disappear DREAMWORLD_PLAYER_3
    readvar VAR_PLAYERGENDER
    ifequalfwd $1, .Player2
    ifequalfwd $2, .Player3
    appear DREAMWORLD_PLAYER_1
    endcallback

.Player2:
    appear DREAMWORLD_PLAYER_2
    endcallback

.Player3:
    appear DREAMWORLD_PLAYER_3
    endcallback

DreamWorldPlayerScriptTrigger:
    checkevent EVENT_TALKED_TO_DREAMWORLD_PLAYER
    iftruefwd .End
    turnobject PLAYER, RIGHT
    sjumpfwd DreamWorldPlayerScript
.End
    end

DreamWorldPlayerScript:
    faceplayer
    checkevent EVENT_TALKED_TO_DREAMWORLD_PLAYER
    iftruefwd .ReadyToGo
    opentext
    writetext DreamWorldPlayerText
    waitbutton
    closetext
    turnobject PLAYER, LEFT
    pause 20
    turnobject PLAYER, RIGHT
    pause 10
    opentext
    writetext DreamWorldPlayerSentretText
.ReadyToGo
    setevent EVENT_TALKED_TO_DREAMWORLD_PLAYER
    jumptext DreamWorldPlayerReadyToGoText

DreamWorldPlayerText:
    text "Hello there!"

    para "Huh?"

    para "……"

    para "Who am I?"

    para "I'm your thoughts."
    line "You're in a"
    cont "different reality."

    para "See the holes in"
    line "the sky with no"
    cont "stars in them?"

    para "Those holes are"
    line "where the fabric"
    cont "of space-time"
    cont "is falling apart."
    done

DreamWorldPlayerSentretText:
    text "Did you see the"
    line "SENTRET?"

    para "SENTRET is a"
    line "simple #MON,"
    cont "but this one……"

    para "It's the state"
    line "of human life"
    cont "in your current"
    cont "reality."

    para "It's just on"
    line "the edge of a"
    cont "space-time rip."
    
    para "Don't think about"
    line "it too hard,"
    cont "though."

    para "I haven't seen"
    line "that SENTRET"
    cont "move for millions"
    cont "of years."

    para "You still have"
    line "a future ahead"
    cont "of you."
    done

DreamWorldPlayerReadyToGoText:
    text "When you're"
    line "ready to go, you"
    cont "can just stand"
    cont "on that gray"
    cont "square."

    para "It will take you"
    line "back to your"
    cont "reality."

    para "Good luck!"
    done

DreamWorldSentretText:
    text "You shouldn't be"
    line "able to read"
    cont "this."

    para "Are you using"
    line "cheat codes?"
    done
