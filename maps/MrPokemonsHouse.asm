MrPokemonsHouse_MapScriptHeader:
	def_scene_scripts
	scene_script MrPokemonsHouseTrigger0

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_30, 2
	warp_event  3,  7, ROUTE_30, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_ForeignMagazinesText
	bg_event  1,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_ForeignMagazinesText
	bg_event  6,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_BrokenComputerText
	bg_event  7,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_BrokenComputerText
	bg_event  6,  4, BGEVENT_JUMPTEXT, MrPokemonsHouse_StrangeCoinsText
	bg_event  3,  1, BGEVENT_READ, MrPokemonsHouse_CabinetScript

	def_object_events
	object_event  3,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	object_event  6,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
	object_event  4,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOT_POKEDEX_FROM_OAK

	object_const_def
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK
	const MRPOKEMONSHOUSE_POKEDEX

MrPokemonsHouseTrigger0:
	sdefer .MrPokemonEvent
	end

.MrPokemonEvent:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_GENTLEMAN, 15
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	showtext MrPokemonIntroText1
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemon
	opentext
	writetext MrPokemonIntroText2
	promptbutton
	waitsfx
	verbosegivekeyitem MYSTERY_EGG
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod GLITTERVINE_TOWN
if !DEF(DEBUG)
	writetext MrPokemonIntroText3
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, RIGHT
	writetext MrPokemonIntroText4
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	writetext MrPokemonIntroText5
	waitbutton
endc
	closetext
	sjumpfwd MrPokemonsHouse_OakScript

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkkeyitem RED_SCALE
	iftruefwd .RedScale
	checkitem ODD_SOUVENIR
	iftrue_jumpopenedtext MrPokemonText_OddSouvenir
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue_jumpopenedtext MrPokemonText_AlwaysNewDiscoveries
	jumpopenedtext MrPokemonText_ImDependingOnYou

.RedScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse_jumpopenedtext MrPokemonText_Disappointed
	special SpecialGiveShinyDitto
	iffalse_jumpopenedtext MrPokemonText_PartyAndBoxFull
	writetext MrPokemonText_GotShinyDitto
	playsound SFX_KEY_ITEM
	waitsfx
	ifequalfwd 1, .in_party
	special Special_CurBoxFullCheck
	iffalsefwd .BoxNotFull
	farwritetext _CurBoxFullText
.BoxNotFull
	special GetCurBoxName
	writetext MrPokemonText_SentToPC
	promptbutton
.in_party
	takekeyitem RED_SCALE
	setevent EVENT_TRADED_RED_SCALE
	jumpopenedtext MrPokemonText_AlwaysNewDiscoveries

MrPokemonsHouse_OakScript:
	playmusic MUSIC_PROF_OAK
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayer
	turnobject PLAYER, RIGHT
	showtext MrPokemonsHouse_OakText1
	turnobject MRPOKEMONSHOUSE_OAK, UP
	pause 10
	applymovement MRPOKEMONSHOUSE_POKEDEX, MrPokemonsHouse_OakTakesPokedex
	disappear MRPOKEMONSHOUSE_POKEDEX
	pause 10
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	pause 10
	opentext
	writetext MrPokemonsHouse_GetDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext MrPokemonsHouse_OakText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakExits
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, UP
	showtext MrPokemonsHouse_MrPokemonHealText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	showtext MrPokemonText_ImDependingOnYou
	setevent EVENT_RIVAL_GEMROOT_TOWN
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	setscene $1
	setmapscene GLITTERVINE_TOWN, $1
	specialphonecall SPECIALCALL_ROBBED
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELDER
	iftruefwd .RivalTakesTurtwig
	checkevent EVENT_GOT_TURTWIG_FROM_ELDER
	iftruefwd .RivalTakesCyndaquil
	setevent EVENT_WATER_POKEBALL_IN_COMMUNITYCENTER
	end

.RivalTakesTurtwig:
	setevent EVENT_GRASS_POKEBALL_IN_COMMUNITYCENTER
	end

.RivalTakesCyndaquil:
	setevent EVENT_FIRE_POKEBALL_IN_COMMUNITYCENTER
	end

MrPokemonsHouse_CabinetScript:
	opentext
	writetext MrPokemonsHouse_CabinetText
	checkevent EVENT_TRADED_RED_SCALE
	iffalsefwd .NoRedScale
	promptbutton
	writetext MrPokemonsHouse_RedScaleCabinetText
.NoRedScale
	waitbutton
	closetext
	end

MrPokemonsHouse_PlayerWalksToMrPokemon:
	step_right
	step_up
	step_end

MrPokemonsHouse_OakWalksToPlayer:
	step_down
	step_left
	step_left
	step_end

MrPokemonsHouse_OakTakesPokedex:
	fix_facing
	slide_step_down
	remove_fixed_facing
	step_end

MrPokemonsHouse_OakExits:
	step_down
	step_left
	turn_head_down
	step_sleep_2
	step_end

MrPokemonIntroText1:
	text "Hello, hello! You"
	line "must be <PLAYER>."

	para "Prof.Elm said that"
	line "you would visit."
	done

MrPokemonIntroText2:
	text "This is what I"
	line "want Prof.Elm to"
	cont "examine."
	done

MrPokemonIntroText3:
	text "I know a couple"
	line "who run a #MON"
	cont "Day-Care service."

	para "They gave me that"
	line "Egg."

	para "I was intrigued,"
	line "so I sent mail to"
	cont "Prof.Elm."

	para "For #MON evolu-"
	line "tion, Prof.Elm is"
	cont "the authority."
	done

MrPokemonIntroText4:
	text "Even Prof.Oak here"
	line "recognizes that."
	done

MrPokemonIntroText5:
	text "If my assumption"
	line "is correct, Prof."
	cont "Elm will know it."
	done

MrPokemonsHouse_MrPokemonHealText:
	text "You are returning"
	line "to Prof.Elm?"

	para "Here. Your #MON"
	line "should have some"
	cont "rest."
	done

MrPokemonText_OddSouvenir:
	text "Oh! That souvenir!"

	para "I got one of those"
	line "on my trip to the"
	cont "Orange Islands."

	para "I saw some oddly-"
	line "formed #MON"
	cont "there too!"

	para "Hmm… I wonder…"

	para "Is there a conn-"
	line "ection between"

	para "that souvenir and"
	line "those unusual"
	cont "forms of #MON?"
	done

MrPokemonText_ImDependingOnYou:
	text "I'm depending on"
	line "you!"
	done

MrPokemonText_AlwaysNewDiscoveries:
	text "Life is delight-"
	line "ful! Always, new"

	para "discoveries to be"
	line "made!"
	done

MrPokemonsHouse_OakText1:
	text "Oak: Aha! So"
	line "you're <PLAYER>!"

if !DEF(DEBUG)
	para "I'm Oak! A #MON"
	line "researcher."

	para "I was just visit-"
	line "ing my old friend"
	cont "Mr.#MON."

	para "I heard you were"
	line "running an errand"

	para "for Prof.Elm, so I"
	line "waited here."

	para "Oh! What's this?"
	line "A rare #MON!"

	para "Let's see…"

	para "Hm, I see!"

	para "I understand why"
	line "Prof.Elm gave you"

	para "a #MON for this"
	line "errand."

	para "To researchers"
	line "like Prof.Elm and"

	para "I, #MON are our"
	line "friends."

	para "He saw that you"
	line "would treat your"

	para "#MON with love"
	line "and care."

	para "…Ah!"

	para "You seem to be"
	line "dependable."

	para "How would you like"
	line "to help me out?"

	para "See? This is the"
	line "latest version of"
	cont "#dex."

	para "It automatically"
	line "records data on"

	para "#MON you've"
	line "seen or caught."

	para "It's a hi-tech"
	line "encyclopedia!"
endc
	done

MrPokemonsHouse_GetDexText:
	text "<PLAYER> received"
	line "#dex!"
	done

MrPokemonsHouse_OakText2:
	text "Go meet many kinds"
	line "of #MON and"

	para "complete that"
	line "#dex!"

if !DEF(DEBUG)
	para "But I've stayed"
	line "too long."

	para "I have to get to"
	line "Goldenrod for my"
	cont "usual radio show."

	para "<PLAYER>, I'm"
	line "counting on you!"
endc
	done

MrPokemonText_GimmeTheScale:
	text "Hm? That Scale!"
	line "What's that?"
	cont "A red Gyarados?"

	para "It must have kept"
	line "its coloration as"
	cont "a Magikarp!"

	para "That could be"
	line "one of a kind!"
	cont "I, I want it…"

	para "<PLAYER>, would you"
	line "care to trade it?"

	para "I can offer you"
	line "a rare #MON."
	done

MrPokemonText_GotShinyDitto:
	text "<PLAYER> received a"
	line "#MON."
	done

MrPokemonText_SentToPC:
	text "The #MON was"
	line "sent to "
	text_ram wStringBuffer1
	text "."
	done

MrPokemonText_PartyAndBoxFull:
	text "You don't have any"
	line "room for this,"
	cont "even in your Box!"
	done

MrPokemonText_Disappointed:
	text "That's disappoint-"
	line "ing. That happens"
	cont "to be very rare."
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "It's packed with"
	line "foreign magazines."

	para "Can't even read"
	line "their titles…"
	done

MrPokemonsHouse_BrokenComputerText:
	text "It's a big com-"
	line "puter. Hmm. It's"
	cont "broken."
	done

MrPokemonsHouse_StrangeCoinsText:
	text "A whole pile of"
	line "strange coins!"

	para "Maybe they're from"
	line "another country…"
	done

MrPokemonsHouse_CabinetText:
	text "A collection of"
	line "rare curiosities"
	cont "from all over!"
	done

MrPokemonsHouse_RedScaleCabinetText:
	text "One of them is the"
	line "shiny Red Scale!"
	done
