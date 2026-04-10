Route2GlittervineGate_MapScriptHeader:
    def_scene_scripts
    scene_script SpecialCallMomWorriedScene
    scene_script Route2GlittervineGate_Noop

    def_callbacks

    def_warp_events
    warp_event  0,  4, GLITTERVINE_TOWN, 4
    warp_event  0,  5, GLITTERVINE_TOWN, 5
    warp_event  9,  4, ROUTE_2, 1
    warp_event  9,  5, ROUTE_2, 2

    def_coord_events
    coord_event 5, 4, 1, GuardStopsYouEvent
    coord_event 5, 5, 1, GuardStopsYouEvent

    def_bg_events

    db 1 ; object_events
    person_event SPRITE_OFFICER,  2,  5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Route2GlittervineGateNPC1Text, -1 

SpecialCallMomWorriedScene:
    specialphonecall SPECIALCALL_WORRIED
	setscene $1
    end

Route2GlittervineGate_Noop:
    end

GuardStopsYouEvent:
    checkevent EVENT_SAW_MOM_AFTER_STARTER
    iftruefwd .End
    opentext
    writetext GuardIntroText
    waitbutton
    closetext
    showemote EMOTE_QUESTION, PLAYER, 30
    turnobject PLAYER, UP
    opentext
    writetext GuardStopsYouText
    waitbutton
    closetext
    turnobject PLAYER, LEFT
    applymovement PLAYER, PlayerWalksBackMovement
.End:
    end

Route2GlittervineGateNPC1Text:
    text "Out there's ROUTE"
    line "2."

    para "There's lots of"
    line "trainers looking"
    cont "for a fight."
    done

GuardIntroText:
    text "Hey!"
    done

GuardStopsYouText:
    text "Didn't your MOM"
    line "just ask you to"
    cont "come home?"

    para "What are you"
    line "doing?"

    para "……"

    para "Huh?"
    line "Of course I was"
    cont "eavesdropping!"

    para "If I didn't, my"
    line "job would be too"
    cont "boring!"
    done

PlayerWalksBackMovement:
    step_left
    step_end
