    db 75, 100, 100, 90, 75, 60 ; 500 BST
    ;  hp atk def  spe sat sdf

    db ELECTRIC, ELECTRIC ; type
    db 70 ; catch rate
    db 140 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F50, HATCH_MEDIUM_SLOW ; gender ratio, step cycles to hatch

    abilities_for RAITORA, STATIC, THICK_FAT, LIGHTNING_ROD
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_GROUND, EGG_GROUND ; egg groups

    ev_yield 3 sdf

;   tm/hm learnset
    tmhm LIGHT_SCREEN, PROTECT, DIG, THUNDERBOLT, THUNDER, THUNDER_WAVE, VOLT_SWITCH, THUNDERPUNCH, DOUBLE_EDGE, FIRE_PUNCH, ICE_PUNCH, ACROBATICS, SWIFT, RETURN, SHADOW_BALL, HONE_CLAWS, ROAR, CURSE, BULLDOZE, GYRO_BALL, CUT, ROCK_SMASH, STRENGTH, SURF
;   end
