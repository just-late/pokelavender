	db  45,  50,  35,  40,  55,  75 ; 300 BST
	;   hp  atk  def  spe  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_FASTER ; gender ratio, step cycles to hatch

	abilities_for GOOMY, SAP_SIPPER, HYDRATION, NO_ABILITY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 SDf

	; tm/hm learnset
	tmhm TOXIC, ROCK_SLIDE, PROTECT, BODY_SLAM, ENDURE, WATER_PULSE, SLUDGE_BOMB, THUNDERBOLT, SURF, DRAGON_PULSE, CURSE 
	; end
