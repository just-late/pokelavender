	db 70,  60,  50,  55,  70,  60 ; 365 BST
	;   hp  atk  def  spd  sat  sdf

    db ICE, ICE ; type
    db 70 ; catch rate
    db 75 ; base exp
    db NO_ITEM, SITRUS_BERRY ; items
    dn GENDER_F25, HATCH_MEDIUM_FAST ; gender ratio

    abilities_for WOLFRUNT, RUN_AWAY, RUN_AWAY, RUN_AWAY
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_GROUND ; egg groups

    ev_yield 2 Def

    ; tm/hm learnset
    tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, PAY_DAY, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, REST, ATTRACT, THIEF, CUT, STRENGTH, ICE_BEAM
	; end 
