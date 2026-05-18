    db  45,  40,  60,  50,  40,  75 ; 310 BST
    ;   hp  atk  def  spe  sat  sdf

    db NORMAL, FLYING ; type
    db 255 ; catch rate
    db 62 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F50, HATCH_MEDIUM_SLOW
    
    abilities_for SWABLU, NATURAL_CURE, CLOUD_NINE, NO_ABILITY
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_DRAGON, EGG_FLYING ; egg groups

    ev_yield 1 SDf

    ; tm/hm learnset
    tmhm ICE_BEAM, PROTECT, AERIAL_ACE, SWIFT, BODY_SLAM, ENDURE, AGILITY, SAFEGUARD, SOLAR_BEAM, HYPER_VOICE, DRAGON_PULSE, SUBSTITUTE, DAZZLINGLEAM, FACADE, DREAM_EATER, FLY, 
    ; end
