    db  75,  70,  90,  80,  70, 105 ; 310 BST
    ;   hp  atk  def  spe  sat  sdf

    db DRAGON, FLYING ; type
    db 45 ; catch rate
    db 172 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F50, HATCH_MEDIUM_SLOW
    
    abilities_for ALTARIA, NATURAL_CURE, CLOUD_NINE, NO_ABILITY
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_DRAGON, EGG_FLYING ; egg groups

    ev_yield 2 SDf

    ; tm/hm learnset
    tmhm DRAGON_CLAW, ROAR, ICE_BEAM, PROTECT, AERIAL_ACE, SWIFT, BODY_SLAM, ENDURE, HYPER_BEAM, AGILITY, GIGA_IMPACT, WILL_O_WISP, FLAMETHROWER, EARTHQUAKE, SAFEGUARD, SOLAR_BEAM, HYPER_VOICE, DRAGON_PULSE, SUBSTITUTE, DAZZLINGLEAM, FACADE, DREAM_EATER, FLY
    ; end
