	db  60,  62,  80,  60,  63,  80 ; 405 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 141 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for GROTLE, OVERGROW, OVERGROW, LEAF_GUARD
else
	abilities_for GROTLE, OVERGROW, NATURAL_CURE, LEAF_GUARD
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield 1 Def, 1 SDf

	; tm/hm learnset
	tmhm CURSE, ROAR, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, ZEN_HEADBUTT, GIGA_DRAIN, BULLDOZE, SOLAR_BEAM, RETURN, DIG, ROCK_SMASH, REST, STONE_EDGE, SWORDS_DANCE, CUT, STRENGTH ; ROCK_CLIMB
	; end
