; Old-name style Macros, similar to modern ones

; Map Macros

maptrigger EQUS "scene_script"

MACRO xy_trigger
    coord_event \2, \1, \4, \3

MACRO signpost
    bg_event \2, \1, BGEVENT_READ, \4

warp_def EQUS "warp_event"

; That's all for now
; more later?
