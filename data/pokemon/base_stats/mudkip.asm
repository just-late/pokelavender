    db 50, 70, 50, 40, 50, 50
    ;  hp atk def spe sat sdf

    db WATER, WATER ; type
    db 45 ; catch rate
    db 62 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F12_5, HATCH_MEDIUM_SLOW

    abilities_for MUDKIP, TORRENT, NO_ABILITY, DAMP
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1, EGG_MONSTER ; egg groups

    ev_yield 1 Atk

    ; tm/hm learnset
    tmhm BULK_UP, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SCALD, ROCK_SLIDE, SWAGGER, SLEEP_TALK, SUBSTITUTE, SURF, WATERFALL
    ; end
