	db  45,  49,  65,  45,  49,  65 ; 318 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for TURTWIG, OVERGROW, OVERGROW, LEAF_GUARD
else
	abilities_for TURTWIG, OVERGROW, NATURAL_CURE, LEAF_GUARD
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield 1 SDf

	; tm/hm learnset
	tmhm PROTECT, FACADE, BULLDOZE, ENDURE, SUNNY_DAY, ZEN_HEADBUTT, BODY_SLAM, SLEEP_TALK, SEED_BOMB, REFLECT, LIGHT_SCREEN, REST, SWORDS_DANCE, IRON_HEAD, GIGA_DRAIN, ENERGY_BALL, SOLAR_BEAM, ROAR, CUT 
