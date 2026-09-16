AirplaneHallway_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  2,  0, PLAYERS_HOUSE_2F, 1

    def_coord_events

    def_bg_events

    db 10 ; object events
;	person_event SPRITE_OFFICER,  1,  2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, AirplaneGuardText, -1
	person_event SPRITE_BEAUTY, 12,  2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, AirplaneFlightAttendantText, -1
	person_event SPRITE_BEAUTY, 12,  3, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, AirplaneFlightAttendantText, -1
	person_event SPRITE_PLANE_HEADS_1,  6,  1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, AirplaneArtistText, -1
	person_event SPRITE_PLANE_HEADS_1,  6,  0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_PLANE_HEADS_2,  4,  1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, AirplaneFatGuyText, -1
	person_event SPRITE_PLANE_HEADS_2,  8,  0, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_PLANE_HEADS_2,  5,  0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_PLANE_HEADS_3,  7,  5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, AirplaneGruntWhisperText, -1
	person_event SPRITE_PLANE_HEADS_3,  7,  4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptext, AirplaneGruntWhisperText, -1
	person_event SPRITE_PLANE_HEADS_4,  5,  4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, AirplaneGuardOnBreakScript, -1
;    person_event SPRITE_PLANE_HEADS_4,  

AirplaneGuardOnBreakScript:
    turnobject LAST_TALKED, DOWN
    jumptext AirplaneGuardOnBreakText

AirplaneArtistText:
    text "U<PAUSE>u<PAUSE>u<PAUSE>gh…"

    para "This guy is really"
    line "bugging me…"

    para "I sure wish I had"
    line "a window seat…"

    para "I want more"
    line "snacks…"

    para "…<PAUSE>…<PAUSE>…<PAUSE>…<PAUSE>…<PAUSE>…"
    line "She won't stop"
    cont "complaining."
    done

AirplaneFatGuyText:
    text "Technology is"
    line "incredible!"

    para "People can now"
    line "sit in airplane"
    cont "seats!"

    para "Isn't that just"
    line "amazing?"
    done

AirplaneFlightAttendantText:
    text "PLACEHOLDER"
    done

AirplaneGuardOnBreakText:
    text "I am on break."
    line "Nothing suspicious"
    cont "is going on in"
    cont "any way."

    para "I am very trust-"
    line "worthy."
    done

AirplaneGruntWhisperText:
    text "Whisper, whisper…"
    done
