MoonflowerGangApartment1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  2,  7, MOONFLOWER_CITY, 7
	warp_event  3,  7, MOONFLOWER_CITY, 7
	warp_event  4,  1, MOONFLOWER_GANG_APARTMENT_2F, 1
    
    def_coord_events

    def_bg_events

    db 4 ; object_events
	person_event SPRITE_FAT_GUY,  3,  9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, GangApartment1FFatGuyText, -1
	person_event SPRITE_BIKER,  5,  6, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GangApartment1FBikerText, -1
	person_event SPRITE_COSPLAYER,  4,  3, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GangApartment1FCosplayerText, -1
    pokemon_event  9,  4, TYPHLOSION, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_RED, GangApartment1FTyphlosionText, -1

GangApartment1FFatGuyText:
    text "We're the"
    line "TYPHLOSIONS!"

    para "We're a brutal"
    line "gang and kids like"
    cont "you…"

    para "Are not allowed!"

    para "Scram!"
    done

GangApartment1FBikerText:
    text "ROOOOAR!"

    para "I'm a"
    line "TYPHLOSION!"
    done

GangApartment1FCosplayerText:
    text "What am I doing"
    line "here?"

    para "I'm dressed up"
    line "as a TYPHLOSION"
    cont "to boost morale!"

    para "ROOOOOAR!"
    done

GangApartment1FTyphlosionText:
    text "TYPHLOSION: Ra…"
    line "GROOOOAARGH!"

    para "…"

    para "Wow! It has a"
    line "loud roar!"

    para "Wait…"

    para "It's snoring!"
    done
