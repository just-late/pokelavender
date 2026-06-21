OredaleMuseum1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event 12,  9, OREDALE_CITY, 2
	warp_event 13,  9, OREDALE_CITY, 3
	warp_event  4,  6, OREDALE_MUSEUM_2F, 1

    def_coord_events

    def_bg_events
;	bg_event  6,  1
;	bg_event  7,  1
;	bg_event  8,  1
;	bg_event  9,  1
;	bg_event 14,  1
;	bg_event 15,  1
;	bg_event  0,  7
;	bg_event  1,  7
;	bg_event  8,  5
;	bg_event 12,  5

    db 1 ; object events
	person_event SPRITE_CLERK,  7, 18, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, OredaleMuseum1FClerkText, -1
;	person_event SPRITE_POKEFAN_M,  6,  8
;	person_event SPRITE_TWIN,  6,  9
;	person_event SPRITE_CHILD,  6,  7
;	person_event SPRITE_SCIENTIST,  5, 14

OredaleMuseum1FClerkText:
    text "Hello!"

    para "Welcome to the"
    line "OREDALE MUSEUM."

    para "It's free for"
    line "anyone to come"
    cont "and visit,"

    para "so don't worry"
    line "about buying any"
    cont "tickets."
    done
