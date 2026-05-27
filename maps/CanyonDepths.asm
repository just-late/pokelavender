CanyonDepths_MapScriptHeader:
    def_scene_scripts
   
    def_callbacks

    def_warp_events
	warp_event 11, 61, CANYON_1F, 1

    def_coord_events
	coord_event 12, 43, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event 12, 42, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event  7, 43, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event  7, 42, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event  9, 30, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event  9, 31, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event 14, 30, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event 14, 31, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event  7, 22, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event  7, 23, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event 14, 22, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event 14, 23, 0, CanyonDepthsBridgeUnderfootTrigger
	coord_event  6, 42, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event  6, 43, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event 13, 42, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event 13, 43, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event  8, 30, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event  8, 31, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event 15, 30, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event 15, 31, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event  6, 22, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event  6, 23, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event 15, 22, 1, CanyonDepthsBridgeOverheadTrigger
	coord_event 15, 23, 1, CanyonDepthsBridgeOverheadTrigger

    def_bg_events

    db 1 ; object events

CanyonDepthsBridgeOverheadTrigger:
	callasm CanyonDepths_OverheadBridgeAsm
	callthisasm
	xor a
	jr CanyonDepthsFinishBridge
	
CanyonDepthsBridgeUnderfootTrigger:
	callasm CanyonDepths_UnderfootBridgeAsm
	callthisasm
	ld a, $1
CanyonDepthsFinishBridge:
	ld [wWalkingOnBridge], a
	ld [wCanyonDepthsSceneID], a
	jmp GenericFinishBridge

CanyonDepths_UnderfootBridgeAsm:
	changebridgeblock  6, 42, $fd, CANYON_DEPTHS
	changebridgeblock  8, 42, $fa, CANYON_DEPTHS
	changebridgeblock 10, 42, $fa, CANYON_DEPTHS
	changebridgeblock 12, 42, $fe, CANYON_DEPTHS
	changebridgeblock  8, 30, $fd, CANYON_DEPTHS
	changebridgeblock 10, 30, $fa, CANYON_DEPTHS
	changebridgeblock 12, 30, $fa, CANYON_DEPTHS
	changebridgeblock 14, 30, $49, CANYON_DEPTHS
	changebridgeblock  6, 22, $fd, CANYON_DEPTHS
	changebridgeblock  8, 22, $fa, CANYON_DEPTHS
	changebridgeblock 10, 22, $fa, CANYON_DEPTHS
	changebridgeblock 12, 22, $fa, CANYON_DEPTHS
	changebridgeblock 14, 22, $49, CANYON_DEPTHS
	jmp BufferScreen

CanyonDepths_OverheadBridgeAsm:
	changebridgeblock  6, 42, $48, CANYON_DEPTHS
	changebridgeblock  8, 42, $e7, CANYON_DEPTHS
	changebridgeblock 10, 42, $e7, CANYON_DEPTHS
	changebridgeblock 12, 42, $eb, CANYON_DEPTHS
	changebridgeblock  8, 30, $48, CANYON_DEPTHS
	changebridgeblock 10, 30, $e7, CANYON_DEPTHS
	changebridgeblock 12, 30, $e7, CANYON_DEPTHS
	changebridgeblock 14, 30, $ea, CANYON_DEPTHS
	changebridgeblock  6, 22, $48, CANYON_DEPTHS
	changebridgeblock  8, 22, $e7, CANYON_DEPTHS
	changebridgeblock 10, 22, $e7, CANYON_DEPTHS
	changebridgeblock 12, 22, $e7, CANYON_DEPTHS
	changebridgeblock 14, 22, $ea, CANYON_DEPTHS
	jmp BufferScreen
