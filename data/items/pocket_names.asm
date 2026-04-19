ItemPocketNames:
	table_width 1, ItemPocketNames
	dr .Item
	dr .Medicine
	dr .Ball
	dr .TM ; impossible
	dr .Berry
	dr .Key ; impossible
	assert_table_length NUM_POCKETS

.Item:
	db "ITEM POCKET@"
.Medicine:
	db "MED.POCKET@"
.Ball:
	db "BALL POCKET@"
.TM:
	db "TM POCKET@"
.Berry:
	db "BERRY POCKET@"
.Key:
	db "KEY POCKET@"
