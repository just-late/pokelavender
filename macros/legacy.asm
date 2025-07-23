; legacy pokecrystal macros

; map event macros

MACRO maptrigger
    scene_script \1
ENDM

MACRO xy_trigger
    coord_event \3, \2, \1, \4
ENDM

MACRO signpost
    bg_event \2, \1, \3, \4
ENDM

; person_event located in macros/scripts/maps.asm
