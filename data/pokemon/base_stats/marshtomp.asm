    db 70, 85, 70, 50, 60, 70 ; total 405
;      HP,atk,def,spe,Sat,Sdf

    db WATER, WATER ; type
    db 45 ; catch rate
    db 142 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F12_5, HATCH_MEDIUM_SLOW

    abilities_for MARSHTOMP, TORRENT, NO_ABILITY, DAMP
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1, EGG_MONSTER ; egg groups

    ev_yield 2 Atk

    ; tm/hm learnset
    tmhm BULK_UP, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, EARTHQUAKE, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SCALD, ROCK_SLIDE, SWAGGER, SLEEP_TALK, SUBSTITUTE, SURF, WATERFALL, ROCK_SMASH
    ; end
