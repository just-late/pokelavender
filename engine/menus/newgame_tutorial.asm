; Tutorial Pages
    const_def
    const NEWGAME_TUTORIAL_PAGE1
  ; const NEWGAME_TUTORIAL_PAGE2
  ; const NEWGAME_TUTORIAL_PAGE3

; Text Arrow States
  ; const_def
  ; const NEWGAME_TUTORIAL_ARROWBUTTON_NORMAL
  ; const NEWGAME_TUTORIAL_ARROWBUTTON_DOWN

NewGame_Tutorial:
    call InitBG_Graphics

InitBG_Graphics:
    call ClearBGPalettes
    call ClearSprites
    call ClearTileMap
    ld hl, NewgameTutorialGFX
    ld de, vTiles0
    ld a, BANK(NewgameTutorialGFX)
    call FarDecompressToDE
    ld hl, FontNormalBackgroundGFX
    ld de, vTiles1
    ld a, BANK(FontNormalBackgroundGFX)
    call FarDecompressToDE
