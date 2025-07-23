PlayersNeighborsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GEMROOT_TOWN, 4
	warp_event  3,  7, GEMROOT_TOWN, 4

	def_coord_events

	def_bg_events

	db 4 ; object_events
	person_event SPRITE_GRAMPS,  4,  5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, PERSONTYPE_COMMAND, jumptextfaceplayer, GrampsPokemonText, -1
	person_event SPRITE_GRANNY,  3,  2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, NeighborAdventureScript, -1
	person_event SPRITE_CHILD,  4,  2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, GrowUpProfText, -1
	pokemon_event  6,  3, ESPEON, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_PURPLE, NeighborsEspeonText, -1

NeighborAdventureScript:
	faceplayer
	opentext
	writetext GrannyAdventureText
	checkevent EVENT_GOT_A_POKEMON_FROM_ELDER
	iftruefwd .GotPokemon
	checkevent EVENT_BEAT_FALKNER
	iftruefwd .GotGymBadge
	checkevent EVENT_BEAT_MORTY
	iftruefwd .GotFourBadges
	checkevent EVENT_BEAT_CLAIR
	iftruefwd .GotEightBadges
	waitbutton
	closetext
	end

.GotPokemon
	writetext GotFirstPokemonText
	waitbutton
	closetext
	end

.GotGymBadge
	writetext GotFirstGymBadgeText
	closetext
	end

.GotFourBadges
	writetext GotFourBadgesText
	waitbutton
	closetext
	end

.GotEightBadges
	opentext
	writetext PokemonLeagueText
	verbosegiveitem MASTER_BALL
	writetext PokeBallCollectionText
	waitbutton
	closetext
	end

GrannyAdventureText:
	text "I remember when"
	line "I was younger, I"

	para "went on a journey"
	line "all over the world"

	para "with #MON. I"
	line "enjoyed it so"
	cont "much, that I like"

	para "to watch people"
	line "grow with their"

	para "#MON."
	done

GotFirstPokemonText:
	text "Wow, you got your"
	line "#MON! Such a"
	
	para "big step forward."
	done

GotFirstGymBadgeText:
	text "Hmm? Your first GYM"
	line "BADGE? Wow!"
	cont "Congratulations!"
	done

GotFourBadgesText:
	text "Wow! That's your"
	line "fourth GYM BADGE!"

	para "You're half way to"
	line "the #MON LEAGUE!"
	done

PokemonLeagueText:
	text "You've earned eight"
	line "BADGES? You're mak-"
	cont "ing me feel young"
	
	para "again!"

	para "… …"

	para "… …"

	para "You're challenging"
	line "the #MON LEAGUE?"
	
	para "Here. Take this."
	done

PokeBallCollectionText:
	text "It's a MASTER BALL"
	line "from my # BALL"
	cont "collection."

	para "It's never been"
	line "used!"
	done

GrampsPokemonText:
	text "#MON realy are"
	line "amazing creatures."

	para "My wife's ESPEON"
	line "is good evidence"

	para "of that."
	done
	
GrowUpProfText:
	text "When I grow up,"
	line "I'm gonna be a"

	para "#MON PROFESSOR"
	line "just like my"

	para "grandpa used to"
	line "be!"
	done

NeighborsEspeonText:
	text "ESPEON is looking"
	line "intently into your"
	cont "eyes."

	para "ESPEON: Oouoo! Ou…"
	done
