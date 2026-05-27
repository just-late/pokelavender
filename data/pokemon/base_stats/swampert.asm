    db 100, 140, 90, 60, 85, 90 ; total 565 ; upped attack because of swampert mega not being a thing
;       HP, atk, def,spe,Sat,Sdf

    db WATER, GROUND ; type
    db 45 ; catch rate
    db 241 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F12_5, HATCH_MEDIUM_SLOW

    abilities_for SWAMPERT, TORRENT, NO_ABILITY, DAMP
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1, EGG_MONSTER ; egg groups

    ev_yield 2 Atk

    ; tm/hm learnset
    tmhm ROAR, BULK_UP, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, EARTHQUAKE, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SCALD, ROCK_SLIDE, SWAGGER, SLEEP_TALK, GIGA_IMPACT, STONE_EDGE, SUBSTITUTE, SURF, WATERFALL, ROCK_SMASH
    ; end
