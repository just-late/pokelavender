    db  45, 100,  45,  10,  45,  45 ; 290 bst
;       hp, atk, def, spe, sat, sdf

    db GROUND, GROUND ; type
    db 255 ; catch rate
    db 58 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F50, HATCH_MEDIUM_SLOW

    abilities_for TRAPINCH, HYPER_CUTTER, ARENA_TRAP, SHEER_FORCE
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG, EGG_DRAGON

    ev_yield 1 Atk

    ; tm/hm learnset
    tmhm PROTECT, FACADE, BULLDOZE, ENDURE, SUNNY_DAY, SANDSTORM, DIG, BODY_SLAM, SLEEP_TALK, REST, ROCK_SLIDE, SUBSTITUTE, GIGA_DRAIN, EARTH_POWER, EARTHQUAKE, STONE_EDGE, HYPER_BEAM, STRENGTH, ROCK_SMASH
    ; end
    