    db  90,  60,  80,  60,  90, 110 ; 490 bst
;       hp, atk, def, spe, sat, sdf

    db NORMAL, PSYCHIC ; type
    db 45 ; catch rate
    db 172 ; base exp
    db NO_ITEM, NO_ITEM
    dn GENDER_F50, HATCH_MEDIUM_SLOW
    
    abilities_for ORANGURU, INNER_FOCUS, LEAF_GUARD, OWN_TEMPO ; different abilities because Telepathy and Symbiosis are for double battles.
    db GROWTH_SLOW ; growth rate
    dn EGG_GROUND, EGG_GROUND ; egg groups (EGG_GROUND = field group)

    ev_yield 2 SDf

    ; tm/hm learnset
    tmhm PROTECT, FACADE, BULLDOZE, SWIFT, ENDURE, SUNNY_DAY, RAIN_DANCE, ZEN_HEADBUTT, BODY_SLAM, SLEEP_TALK, REFLECT, LIGHT_SCREEN, REST, ROCK_SLIDE, SKILL_SWAP, SUBSTITUTE, TRICK, SHADOW_BALL, HYPER_VOICE, ENERGY_BALL, PSYCHIC, THUNDERBOLT, CALM_MIND, EARTHQUAKE, GIGA_IMPACT, FOCUS_BLAST, TRICK_ROOM, HYPER_BEAM, THUNDER, KNOCK_OFF
    ; end
