PlayersHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoom
	callback MAPCALLBACK_TILES, PlayersHouse2FSetSpawn

	def_warp_events
	warp_event 19,  0, PLAYERS_HOUSE_1F, 3
	warp_event  1,  8, GEMROOT_TOWN, 1
	warp_event  3,  8, MOSSHILL_TOWN, 2
	warp_event  5,  8, MOONFLOWER_CITY, 3
	warp_event  7,  8, MARIGOLD_PORT, 1
	warp_event  9,  8, BLOSSOM_CITY, 1
	warp_event 11,  8, GRANITE_VILLAGE, 1
	warp_event 15,  8, OREDALE_CITY, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_UP, PlayersHousePC
	bg_event 15,  1, BGEVENT_READ, PlayersHouseRadio
	bg_event 17,  1, BGEVENT_READ, PokemonJournalDrLaventonScript
	bg_event 18,  0, BGEVENT_IFSET, PlayersHousePoster
	bg_event 10, 12, BGEVENT_READ, DebugPosterScript
	bg_event  0,  8, BGEVENT_JUMPTEXT, PlayersHouseGemrootText
	bg_event  2,  8, BGEVENT_JUMPTEXT, PlayersHouseGlittervineText
	bg_event  4,  8, BGEVENT_JUMPTEXT, PlayersHouseMoonflowerText
	bg_event  6,  8, BGEVENT_JUMPTEXT, PlayersHouseMarigoldText
	bg_event  8,  8, BGEVENT_JUMPTEXT, PlayersHouseBlossomText
	bg_event 10,  8, BGEVENT_JUMPTEXT, PlayersHouseGraniteText
	bg_event 14,  8, BGEVENT_JUMPTEXT, PlayersHouseSnowbarkText

	db 4 ; object events
	object_event 16,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GameConsole, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event 16,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Doll1, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event 17,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Doll2, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event 14,  4, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BigDoll, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL

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

PokemonJournalDrLaventonScript:
	setflag ENGINE_READ_PROF_ELM_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "Special Feature:"
	line "DR.LAVENTON!"

	para "DR.LAVENTON is"
	line "the director of"
	cont "BLOSSOM ACADEMY."

	para "He's said to have"
	line "a rivalry with"
	cont "CLAVELL from the"
	cont "PALDEA REGION."
	done

PlayersHousePC:
	opentext
	special Special_PlayersHousePC
	iftruefwd .Warp
	endtext
.Warp
	warp NONE, 0, 0
	end

DebugPosterScript:
	opentext
	writetext DebugPosterTeamText
	yesorno
	iffalsefwd .NoScript
	givepoke FLYGON, PLAIN_FORM, 50, NO_ITEM, CHERISH_BALL
	givepoke TORTERRA, PLAIN_FORM, 50, NO_ITEM, CHERISH_BALL, WOOD_HAMMER
	givepoke GYARADOS, PLAIN_FORM, 50, NO_ITEM, CHERISH_BALL, DRAGON_RAGE
	givepoke VENUSAUR, MALE | PLAIN_FORM, 50, MOOMOO_MILK, ULTRA_BALL, SLUDGE_BOMB, GiftVenusaurName, GiftVenusaurOTName, 00001
	givekeyitem GBC_SOUNDS
	givekeyitem WAILMER_PAIL
	setflag ENGINE_POKEDEX
	setflag ENGINE_POKEGEAR
	setflag ENGINE_MAP_CARD
.NoScript
	closetext
	end

GiftVenusaurOTName:
	text "BRUCE@"
	done

GiftVenusaurName:
	text "BRO@"
	done

DebugPosterTeamText:
	text "Good team?"
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

PlayersHouseGemrootText:
	text "GEMROOT TOWN"
	done

PlayersHouseGlittervineText:
	text "MOSSHILL TOWN"
	done

PlayersHouseMoonflowerText:
	text "MOONFLOWER CITY"
	done

PlayersHouseMarigoldText:
	text "MARIGOLD PORT"
	done

PlayersHouseBlossomText:
	text "BLOSSOM CITY"
	done

PlayersHouseGraniteText:
	text "GRANITE VILLAGE"
	done

PlayersHouseSnowbarkText:
	text "SNOWBARK TOWN"
	done
