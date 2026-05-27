    db  50,  70,  50,  70,  50,  50 ; 340 bst
;       hp  atk  def  spe, sat, sdf

    db GROUND, DRAGON ; type
    db 120 ; catch rate
    db 119 ; base exp
    db NO_ITEM, NO_ITEM ; held items
    dn GENDER_F50, HATCH_MEDIUM_SLOW

    abilities_for VIBRAVA, LEVITATE, NO_ABILITY, NO_ABILITY
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_BUG, EGG_DRAGON

    ev_yield 1 Atk, 1 Spe

;   tm/hm learnset
    tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLAR_BEAM, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SANDSTORM, FACADE, REST, ATTRACT, STEEL_WING, FLY, STRENGTH, ROCK_SMASH
;   end
