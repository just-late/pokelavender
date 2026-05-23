    db  80, 100,  80, 100,  80,  80 ; 520 bst
    ;   hp, atk, def, spe, sat, sdf

    db GROUND, DRAGON ; type
    db 45 ; catch rate
    db 234 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F50, HATCH_MEDIUM_SLOW

    abilities_for FLYGON, LEVITATE, NO_ABILITY, NO_ABILITY
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG, EGG_DRAGON

    ev_yield 1 Atk, 2 Spe

    ; tm/hm learnset
    tmhm DRAGON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLAR_BEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SANDSTORM, FIRE_BLAST, FACADE, REST, ATTRACT, STEEL_WING, FLY, STRENGTH, ROCK_SMASH
    ; end
    