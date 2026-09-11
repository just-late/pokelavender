MosshillTrainersSchool_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  3, 13, MOSSHILL_TOWN, 6
	warp_event  4, 13, MOSSHILL_TOWN, 6

    def_coord_events

    def_bg_events
	bg_event  0,  1, BGEVENT_READ, MosshillAcademyBookshelf
	bg_event  1,  1, BGEVENT_READ, MosshillAcademyBookshelf
	bg_event  6,  1, BGEVENT_READ, MosshillAcademyBookshelf
	bg_event  7,  1, BGEVENT_READ, MosshillAcademyBookshelf
	bg_event  3,  0, BGEVENT_READ, MosshillAcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, MosshillAcademyBlackboard

    db 6 ; object_events
	person_event SPRITE_TEACHER,  2,  3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MosshillAcademyNPC1Text, -1
	person_event SPRITE_SCHOOLBOY,  5,  2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MosshillAcademyNPC2Text, -1
	person_event SPRITE_SCHOOLGIRL,  5,  4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MosshillAcademyNPC3Text, -1
	person_event SPRITE_TWIN,  7,  4, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MosshillAcademyNPC4Text, -1
	person_event SPRITE_SCHOOLBOY,  7,  3, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MosshillAcademyNPC5Text, -1
	person_event SPRITE_SCHOOLGIRL,  9,  4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MosshillAcademyNPC6Text, -1

MosshillAcademyBlackboard:
    opentext
    writetext MosshillAcademyBlackboardText
    .Loop:
    loadmenu .MenuHeader
    _2dmenu
    closewindow
    ifequalfwd $1, .Poison
    ifequalfwd $2, .Paralysis
    ifequalfwd $3, .Sleep
    ifequalfwd $4, .Burn
    ifequalfwd $5, .Freeze
    endtext

.Poison:
    writetext MosshillAcademyPoisonText
    waitbutton
    sjump .Loop

.Paralysis:
    writetext MosshillAcademyParalysisText
    waitbutton
    sjump .Loop

.Sleep:
    writetext MosshillAcademySleepText
    waitbutton
    sjump .Loop

.Burn:
    writetext MosshillAcademyBurnText
    waitbutton
    sjump .Loop

.Freeze:
    writetext MosshillAcademyFreezeText
    waitbutton
    sjump .Loop

.MenuHeader:
    db MENU_BACKUP_TILES
    menu_coords 0, 0, 11, 8
    dw .Data
    db 1 ; default option

.Data:
    db $80 ; flags
    dn 3, 2 ; rows, columns
    db 5 ; spacing
    dba .Text
    dbw BANK(MosshillAcademyBlackboard), 0


.Text:
	db "Psn@"
	db "Par@"
	db "Slp@"
	db "Brn@"
	db "Frz@"
	db "Quit@"

MosshillAcademyBookshelf:
    jumpthistext

    text "It's full of books"
    line "about #MON."
    done

MosshillAcademyNPC1Text:
    text "Hi, <PLAYER>!"
    
    para "Headed to BLOSSOM"
    line "ACADEMY now, huh?"

    para "Never let me down!"

    para "You were my top"
    line "student, after"
    cont "all!"
    done

MosshillAcademyNPC2Text:
    text "I'm taking notes"
    line "on the TEACHER's"
    cont "lecture."

    para "I should probably"
    line "copy the"
    cont "blackboard too…"
    done

MosshillAcademyNPC3Text:
    text "I can't wait to"
    line "pass this class!"

    para "My parents are"
    line "going to send me"
    cont "to BLOSSOM ACADEMY"
    cont "after this."
    done

MosshillAcademyNPC4Text:
    text "…And did you know"
    line "LIZ has a crush on"
    cont "TIMOTHY?"

    para "…I know, right?"
    line "You would never"
    cont "guess it!…"

    para "It seems like"
    line "she'll never stop"
    cont "gossiping."
    done

MosshillAcademyNPC5Text:
    text "It sure is hard"
    line "to focus with her"
    cont "around."

    para "All she does is"
    line "gossip!"
    done

MosshillAcademyNPC6Text:
    text "I like to sit in"
    line "the back where I"
    cont "can watch"
    cont "everyone."

    para "…What do you mean,"
    line "creepy?"
    done

MosshillAcademyBlackboardText:
    text "The blackboard"
    line "describes #MON"

    para "status changes in"
    line "battle."
    done
    
MosshillAcademyPoisonText:
    text "If POISONED, a"
    line "#MON steadily"
    cont "loses HP."

    para "POISON lingers"
    line "after the battle,"
 
    para "and HP is lost as"
    line "you walk."
    
    para "To cure it, use an"
    line "ANTIDOTE."
    done
    
MosshillAcademyParalysisText:
    text "PARALYSIS reduces"
    line "speed and may"
    cont "prevent movement."

    para "It remains after"
    line "battle, so use"
    cont "a PARLYZEHEAL."
    done
    
MosshillAcademySleepText:
    text "If asleep, your"
    line "#MON can't make"
    cont "a move."
    
    para "A sleeping #MON"
    line "doesn't wake up"
    cont "after battle."
    
    para "Wake it up with"
    line "an AWAKENING."
    done
    
MosshillAcademyBurnText:
    text "A BURN steadily"
    line "consumes HP."
    
    para "It also reduces"
    line "ATTACK."
    
    para "A burn lingers"
    line "after battle."
    
    para "Use a BURN HEAL as"
    line "the cure."
    done
    
MosshillAcademyFreezeText:
    text "If your #MON is"
    line "frozen, it can't"
    cont "do a thing."
    
    para "It remains frozen"
    line "after battle."
    
    para "Thaw it out with"
    line "an ICE HEAL."
    done
