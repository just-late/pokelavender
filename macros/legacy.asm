; legacy pokecrystal macros

; map event macros

MACRO maptrigger
    scene_script \1

MACRO xy_trigger
    coord_event \3, \2, \1, \4

MACRO signpost
    bg_event \2, \1, \3, \4

MACRO person_event ; Remove unused argument \7
	db \1 ; sprite
	db \2 + 4 ; y
	db \3 + 4 ; x
	db \4 ; movement function
	dn \5, \6 ; radius: y, x
	db \9 ; palette
	db \8 ; time of day
	db \<10> ; persontype
	if \<10> == PERSONTYPE_COMMAND
		db \<11>_command ; command id
	else
		db \<11> ; sight_range
	endc
		dw \<12> ; pointer || byte, 0
		dw \<13> ; event flag
	redef {_NUM_OBJECT_EVENTS} += 1
ENDM
