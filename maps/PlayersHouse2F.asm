PlayersHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoom
	callback MAPCALLBACK_TILES, PlayersHouse2FSetSpawn

	def_warp_events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_UP, PlayersHousePC
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadio
	bg_event  5,  1, BGEVENT_READ, PokemonJournalProfElmScript
	bg_event  6,  0, BGEVENT_IFSET, PlayersHousePoster
	bg_event  2,  8, BGEVENT_READ, SnowtopMountain

	def_object_events
	object_event  4,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GameConsole, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Doll1, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Doll2, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  2,  4, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BigDoll, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL

PlayersHouse2FInitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	endcallback

PlayersHouse2FSetSpawn:
	special ToggleMaptileDecorations
	endcallback

Doll1:
	describedecoration 1

Doll2:
	describedecoration 2

BigDoll:
	describedecoration 3

GameConsole:
	describedecoration 4

PlayersHousePoster:
	dw EVENT_PLAYERS_ROOM_POSTER
	describedecoration 0

PlayersHouseRadio:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
	iftruefwd .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftruefwd .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayerRadioText1
	pause 45
	writetext PlayerRadioText2
	pause 45
	writetext PlayerRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayerRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext PlayerRadioText4
	pause 45
	endtext

SnowtopMountain:
	jumpthistext

	text "Snowtop Mountain"
	done

PokemonJournalProfElmScript:
	setflag ENGINE_READ_PROF_ELM_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "Special Feature:"
	line "#MON PROF.ELM!"

	para "PROF.ELM was the"
	line "top student of"
	cont "Prof.Oak."

	para "They're said to"
	line "often argue about"
	cont "research."
	done

PlayersHousePC:
	checkevent EVENT_MOM_SHOWED_HOW_TO_USE_PC
	iffalsefwd .CoolBackground
	opentext
	special Special_PlayersHousePC
	iftruefwd .Warp
	endtext
.Warp
	warp NONE, 0, 0
	end

.CoolBackground
	jumpthistext

	text "It's your PC."
	
	para "It has a cool"
	line "desktop background"
	cont "you picked out!"
	done

PlayerRadioText1:
	text "Prof.Oak's #MON"
	line "Talk! Please tune"
	cont "in next time!"
	done

PlayerRadioText2:
	text "#MON Channel!"
	done

PlayerRadioText3:
	text "This is DJ Mary,"
	line "your co-host!"
	done

PlayerRadioText4:
	text "#MON!"
	line "#MON Channel…"
	done

GoodTeamText:
	text "Giving a good"
	line "#MON Team."
	done
