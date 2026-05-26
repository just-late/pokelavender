BlossomGameCorner_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  3, 13, BLOSSOM_CITY, 2
	warp_event  2, 13, BLOSSOM_CITY, 2

    def_coord_events
    
    def_bg_events
;	bg_event 15, 10, BGEVENT_READ, BlossomGameCornerCardFlipScript
;	bg_event 14, 11, BGEVENT_READ, BlossomGameCornerCardFlipScript
;	bg_event 15,  6, BGEVENT_READ, BlossomGameCornerCardFlipScript
;	bg_event 15,  7, BGEVENT_READ, BlossomGameCornerCardFlipScript
;	bg_event 14,  7, BGEVENT_READ, BlossomGameCornerCardFlipScript
;	bg_event 14,  9, BGEVENT_READ, BlossomGameCornerCardFlipScript
	bg_event  4,  7, BGEVENT_READ, BlossomGameCornerEggLotteryTier1Script
	bg_event  5,  7, BGEVENT_READ, BlossomGameCornerEggLotteryTier2Script
	bg_event  6,  7, BGEVENT_READ, BlossomGameCornerEggLotteryTier3Script
	bg_event  7,  7, BGEVENT_READ, BlossomGameCornerEggLotteryTier4Script
	bg_event  4, 11, BGEVENT_READ, BlossomGameCornerEggLotteryTier1Script
	bg_event  5, 11, BGEVENT_READ, BlossomGameCornerEggLotteryTier2Script
	bg_event  6, 11, BGEVENT_READ, BlossomGameCornerEggLotteryTier3Script
	bg_event  7, 11, BGEVENT_READ, BlossomGameCornerEggLotteryTier4Script

    db 10 ; object events

BlossomGameCornerEggLotteryTier1Script:
	checkkeyitem COIN_CASE
	iffalsefwd CantPlayScript
    opentext
    writetext PlayBasicEggLotteryText
    special Special_DisplayCoinCaseBalance
    yesorno
    iftruefwd PlayEggLottery1Script
	closetext
	end

PlayEggLottery1Script:
    playsound SFX_TRANSACTION
    takecoins 1000
	waitsfx
	writetext EggLotteryRollingText
    playmusic MUSIC_EGG_LOTTO
	wait 22
	random $5
	ifequalfwd $0, .Rattata
	ifequalfwd $1, .Sentret
	ifequalfwd $2, .Pidgey
	ifequalfwd $3, .Caterpie
	ifequalfwd $4, .Munchlax
	giveegg PORYGON
	getmonname PORYGON, $0
	sjumpfwd EggLottoFinished_JackPot

.Rattata
	giveegg RATTATA
	getmonname RATTATA, $0
	sjumpfwd EggLottoFinished

.Sentret
	giveegg SENTRET
	getmonname SENTRET, $0
	sjumpfwd EggLottoFinished

.Pidgey
	giveegg PIDGEY
	getmonname PIDGEY, $0
	sjumpfwd EggLottoFinished

.Caterpie
	giveegg CATERPIE
	getmonname CATERPIE, $0
	sjumpfwd EggLottoFinished

.Munchlax
	giveegg MUNCHLAX
	getmonname MUNCHLAX, $0
	sjumpfwd EggLottoFinished_JackPot

BlossomGameCornerEggLotteryTier2Script:
	checkkeyitem COIN_CASE
	iffalsefwd CantPlayScript
    opentext
	writetext PlayTier2EggLotteryText
	special Special_DisplayCoinCaseBalance
	yesorno
	iftruefwd PlayEggLottery2Script
	closetext
	end

PlayEggLottery2Script:
    playsound SFX_TRANSACTION
    takecoins 2000
	waitsfx
	writetext EggLotteryRollingText
    playmusic MUSIC_EGG_LOTTO
	wait 22
	random $5
	ifequalfwd $0, .Spinarak
	ifequalfwd $1, .Pichu
	ifequalfwd $2, .Trapinch
	ifequalfwd $3, .Rattata
	ifequalfwd $4, .Scyther
	giveegg HERACROSS
	getmonname HERACROSS, $0
	sjumpfwd EggLottoFinished_JackPot

.Spinarak
	giveegg SPINARAK
	getmonname SPINARAK, $0
	sjumpfwd EggLottoFinished

.Pichu
	giveegg PICHU
	getmonname PICHU, $0
	sjumpfwd EggLottoFinished_NotBad

.Trapinch
	giveegg TRAPINCH
	getmonname TRAPINCH, $0
	sjumpfwd EggLottoFinished_NotBad

.Rattata
	giveegg RATTATA
	getmonname RATTATA, $0
	sjumpfwd EggLottoFinished

.Scyther
	giveegg SCYTHER
	getmonname SCYTHER, $0
	sjumpfwd EggLottoFinished_JackPot

BlossomGameCornerEggLotteryTier3Script:
	checkkeyitem COIN_CASE
	iffalsefwd CantPlayScript
    end

BlossomGameCornerEggLotteryTier4Script:
	checkkeyitem COIN_CASE
	iffalsefwd CantPlayScript
    end

EggLottoFinished:
	writetext EggLottoGotEggText
	waitbutton
	closetext
	end

EggLottoFinished_JackPot:
	writetext EggLottoGotJackPotText
	waitbutton
	closetext
	end

EggLottoFinished_NotBad:
	writetext EggLottoNotBadText
	waitbutton
	closetext
	end

CantPlayScript:
	jumpthistext

.CantPlayText
	text "You can't play"
	line "without a COIN"
	cont "CASE!"
	done

PlayBasicEggLotteryText:
	text "Play BASIC EGG"
	line "LOTTERY for 1000"
	cont "coins?"
	done

EggLotteryRollingText:
	text "ROLLING…"
	done

EggLottoGotEggText:
	text "You got a"
	line ""
	text_ram wStringBuffer3
	text " EGG!"

	para "Better luck"
	line "next time…"
	done

EggLottoGotJackPotText:
	text "You got a"
	line ""
	text_ram wStringBuffer3
	text " EGG!"
	
	para "Wow, that's a"
	line "jackpot!"
	done

EggLottoNotBadText:
	text "You got a"
	line ""
	text_ram wStringBuffer3
	text " EGG!"
	
	para "Not bad!"
	done

PlayTier2EggLotteryText:
	text "Play PRIME EGG"
	line "LOTTERY for 2000"
	cont "coins?"
	done

PlayTier3EggLotteryText:
	text "Play EPIC EGG"
	line "LOTTERY for 3000"
	cont "coins?"
	done

PlayTier4EggLotteryText:
	text "Play MYSTIC EGG"
	line "LOTTERY for 5000"
	cont "coins?"
	done
