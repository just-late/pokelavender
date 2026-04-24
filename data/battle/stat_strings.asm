StatStrings:
; entries correspond to stat constants
	table_width 1, StatStrings
	dr .health
	dr .attack
	dr .defense
	dr .speed
	dr .sp_atk
	dr .sp_def
	assert_table_length NUM_STATS

.health:  db "HEALTH@"
.attack:  db "ATTACK@"
.defense: db "DEFENSE@"
.speed:   db "SPEED@"
.sp_atk:  db "SP.ATK@"
.sp_def:  db "SP.DEF@"
