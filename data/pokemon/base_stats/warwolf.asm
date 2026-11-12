	db 70, 90,  85,  95,  70,  90 ; 500 BST
	;  hp  atk  def  spd  sat  sdf

    db ICE, ICE ; type
    db 30 ; catch rate
    db 191 ; base exp
    db NO_ITEM, SITRUS_BERRY ; items
    dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

    abilities_for WARWOLF, THICK_FAT, INTIMIDATE, QUICK_FEET
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_GROUND ; egg groups

    ev_yield 3 Def

    ; tm/hm learnset
    tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, PAY_DAY, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, REST, ATTRACT, THIEF, CUT, STRENGTH, ICE_BEAM
	; end 
