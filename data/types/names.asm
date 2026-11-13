TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 1, TypeNames
	dr Normal
	dr Fighting
	dr Flying
	dr Poison
	dr Ground
	dr Rock
	dr Bug
	dr Ghost
	dr Steel
	assert_table_length SPECIAL_TYPES
	dr Fire
	dr Water
	dr Grass
	dr Electric
	dr Psychic
	dr Ice
	dr Dragon
	dr Dark
	dr Fairy
	dr UnknownType
	assert_table_length NUM_TYPES

EggGroupNames:
; entries correspond to egg groups (see constants/pokemon_data_constants.asm)
; placed here because several egg groups use the same string as a type
	table_width 1, EggGroupNames
	dr Monster
	dr Water1
	dr Bug
	dr Flying
	dr Field
	dr Fairy
	dr Grass
	dr Humanlike
	dr Water3
	dr Mineral
	dr Amorphous
	dr Water2
	dr Ditto
	dr Dragon
	dr Undiscovered
	assert_table_length NUM_EGG_GROUPS

Normal:      db "NORMAL@"
Fighting:    db "FIGHTING@"
Flying:      db "FLYING@"
Poison:      db "POISON@"
Ground:      db "GROUND@"
Rock:        db "ROCK@"
Bug:         db "BUG@"
Ghost:       db "GHOST@"
Steel:       db "STEEL@"
Fire:        db "FIRE@"
Water:       db "WATER@"
Grass:       db "GRASS@"
Electric:    db "ELECTRIC@"
Psychic:     db "PSYCHIC@"
Ice:         db "ICE@"
Dragon:      db "DRAGON@"
Dark:        db "DARK@"
Fairy:       db "FAIRY@"
UnknownType: db "???@"

Monster:      db "MONSTER@"
Field:        db "FIELD@"
Humanlike:    db "HUMAN-LIKE@"
Mineral:      db "MINERAL@"
Amorphous:    db "AMORPHOUS@"
Ditto:        db "DITTO@"
Undiscovered: db "UNDISCOVERED@"
if !DEF(FAITHFUL)
Water1:       db "AMPHIBIAN@"
Water2:       db "FISH@"
Water3:       db "INVETERATE@"
else
Water1:       db "WATER 1@"
Water2:       db "WATER 2@"
Water3:       db "WATER 3@"
endc
