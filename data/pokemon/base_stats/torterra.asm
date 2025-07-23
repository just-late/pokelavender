	db  80,  82, 100,  80,  83, 100 ; 525 BST
	;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db GRASS, GROUND ; type
else
	db GRASS, GROUND ; type
endc
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for TORTERRA, OVERGROW, OVERGROW, SHELL_ARMOR
else
	abilities_for TORTERRA, OVERGROW, OVERGROW, SHELL_ARMOR
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield 1 Def, 2 SDf

	; tm/hm learnset
	tmhm CURSE, ROAR, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, BULLDOZE, SOLAR_BEAM, RETURN, DIG, ROCK_SMASH, REST, STONE_EDGE, ZEN_HEADBUTT, SWORDS_DANCE, CUT, STRENGTH ; ROCK_CLIMB
	; end
