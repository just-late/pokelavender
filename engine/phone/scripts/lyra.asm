LyraPhoneScript:
	readmem wTimeOfDay
	scalltable LyraPhoneScript_GreetingsTable
	getcurlandmarkname $1
	readvar VAR_LANDMARK
	; Special-case too-long landmark names
	ifnotequal MARIGOLD_PORT, .not_celadon_university
	getstring .CeladonUniversity, $1
	sjumpfwd .got_landmark
.not_celadon_university
	ifnotequal POKEMON_LEAGUE, .got_landmark
	getstring .PokemonLeague, $1
.got_landmark
	farwritetext LyraPhoneLandmarkText
	ifless SHAMOUTI_LANDMARK, .not_shamouti
	farwritetext LyraPhoneIslandsText
	sjumpfwd .landmark_done
.not_shamouti
	ifless KANTO_LANDMARK, .not_kanto
	farwritetext LyraPhoneKantoText
	sjumpfwd .landmark_done
.not_kanto
.landmark_done
	farwritetext LyraPhoneNextMoveQuestionText
	yesorno
	iftruefwd .describe_next_move
	farwritetext LyraPhoneNextMoveRefusedText
	sjumpfwd .done

.describe_next_move
	callasm LyraPhone_GetFirstMonNextMoveLevel
	iffalsefwd .no_move
	ifequalfwd -1, .egg
	farwritetext LyraPhoneNextMoveLevelText
	sjumpfwd .done

.no_move
	farwritetext LyraPhoneNoNextMoveText
	sjumpfwd .done

.egg
	farwritetext LyraPhoneNoEggMovesText
.done
	farwritetext LyraPhoneEndText
	end

.CeladonUniversity: db "Celadon U@"
.PokemonLeague:     db "#MON League@"

LyraPhone_GetFirstMonNextMoveLevel:
	; wStringBuffer3 = species name
	call EvolutionPhone_GetFirstNonEggPartyMon
	; hScriptVar = move level
	farcall GetNextMoveLevel
	ldh [hScriptVar], a
	ret

LyraPhoneScript_GreetingsTable:
	table_width 2, LyraPhoneScript_GreetingsTable
	dw .MornGreeting
	dw .DayGreeting
	dw .NiteGreeting
	dw .EveGreeting
	assert_table_length NUM_DAYTIMES
.MornGreeting:
	farwritetext LyraPhoneGreetingText_Morn
	end
.DayGreeting:
	farwritetext LyraPhoneGreetingText_Day
	end
.EveGreeting:
	farwritetext LyraPhoneGreetingText_Eve
	end
.NiteGreeting:
	farwritetext LyraPhoneGreetingText_Nite
	end

LyraPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_YELLOWFOREST, .YellowForest
	ifequalfwd SPECIALCALL_FIRSTBADGE, .FirstBadge
	ifequalfwd SPECIALCALL_LYRASEGG, .LyrasEgg
	specialphonecall SPECIALCALL_NONE
	sjump LyraPhoneScript

.YellowForest:
	farwritetext LyraPhoneSpecialText_YellowForest
	specialphonecall SPECIALCALL_NONE
	end

.FirstBadge:
	farwritetext LyraPhoneSpecialText_FirstBadge
	specialphonecall SPECIALCALL_NONE
	end

.LyrasEgg:
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELDER
	iftruefwd .lyrasegg_mudkip
	checkevent EVENT_GOT_TURTWIG_FROM_ELDER
	iftruefwd .lyrasegg_turtwig
	getstring .Chicory, $1
	sjumpfwd .lyrasegg_end
.lyrasegg_mudkip
	getstring .Cinder, $1
	sjumpfwd .lyrasegg_end
.lyrasegg_turtwig:
	getstring .Toto, $1
.lyrasegg_end
	farwritetext LyraPhoneSpecialText_LyrasEgg
	setevent EVENT_LYRA_GAVE_AWAY_EGG
	specialphonecall SPECIALCALL_NONE
	end

.Chicory: db "Chicory@"
.Cinder:  db "Cinder@"
.Toto:    db "Toto@"
