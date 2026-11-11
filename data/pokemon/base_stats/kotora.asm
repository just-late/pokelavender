    db 55, 50, 40, 60, 50, 60 ; 310 BST
    ;  hp atk def spe sat sdf

    db ELECTRIC, ELECTRIC ; type
    db 170 ; catch rate
    db 100 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F50, HATCH_MEDIUM_SLOW ; gender ratio, step cycles to hatch

    abilities_for KOTORA, STATIC, THICK_FAT, LIGHTNING_ROD
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_GROUND, EGG_GROUND ; egg groups

    ev_yield 2 sdf

;   tm/hm learnset
    tmhm LIGHT_SCREEN, PROTECT, DIG, THUNDERBOLT, THUNDER, THUNDER_WAVE, VOLT_SWITCH, THUNDERPUNCH, DOUBLE_EDGE, FIRE_PUNCH, ICE_PUNCH, ACROBATICS, SWIFT, RETURN, SHADOW_BALL, HONE_CLAWS, ROAR, CURSE, BULLDOZE, GYRO_BALL, CUT, ROCK_SMASH, STRENGTH
;   end
