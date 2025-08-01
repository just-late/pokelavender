ManiasHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, radio2
	bg_event  7,  1, BGEVENT_JUMPSTD, picturebookshelf

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ManiaScript, -1

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftruefwd .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftruefwd .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterShuckie
	yesorno
	iffalsefwd .refusetotakeshuckie
	givepoke SHUCKLE, MALE | PLAIN_FORM, 25, BERRY_JUICE, NET_BALL, POISON_JAB, ShuckieName, ShuckieOTName, KIRK_SHUCKIE_ID
	iffalse_jumpopenedtext ManiaText_PartyAndBoxFull
	writetext ManiaText_TakeCareOfShuckie
	promptbutton
	waitsfx
	writetext ManiaText_GotShuckie
	playsound SFX_KEY_ITEM
	waitsfx
	ifequalfwd 1, .shuckieinparty
	special Special_CurBoxFullCheck
	iffalsefwd .BoxNotFull
	farwritetext _CurBoxFullText
.BoxNotFull
	special GetCurBoxName
	writetext ManiaText_ShuckieSentToPC
	promptbutton
.shuckieinparty
	closetext
	setevent EVENT_GOT_SHUCKIE
	setflag ENGINE_GOT_SHUCKIE_TODAY
	end

.alreadyhaveshuckie
	checkflag ENGINE_GOT_SHUCKIE_TODAY
	iffalsefwd .returnshuckie
	jumpopenedtext ManiaText_TakeCareOfShuckie

.refusetotakeshuckie
	jumpopenedtext ManiaText_IfHeComesBack

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalsefwd .refused
	special ReturnShuckie
	ifequalfwd $0, .wrong
	ifequalfwd $1, .refused
	ifequalfwd $3, .superhappy
	ifequalfwd $4, .default_postevent
	writetext ManiaText_ThankYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.wrong
	jumpopenedtext ManiaText_ShuckieNotThere

.superhappy
	writetext ManiaText_ShuckieLikesYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.refused
	jumpopenedtext ManiaText_SameAsBeingRobbed

.nothingleft
	jumpopenedtext ManiaText_ShuckieIsYourLastMon

.default_postevent
	jumpopenedtext ManiaText_HappinessSpeech

ShuckieName:
	rawchar "Shuckie@"

ShuckieOTName:
	rawchar "Kirk@"

ManiaText_AskLookAfterShuckie:
	text "I, I'm in shock!"

	para "A guy about your"
	line "age with piercing"

	para "eyes and long hair"
	line "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized #MON!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"

	para "after my #MON"
	line "for a while?"
	done

ManiaText_TakeCareOfShuckie:
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done

ManiaText_GotShuckie:
	text "<PLAYER> received a"
	line "#MON."
	done

ManiaText_ShuckieSentToPC:
	text "The #MON was"
	line "sent to "
	text_ram wStringBuffer1
	text "."
	done

ManiaText_PartyAndBoxFull:
	text "Your #MON party"
	line "and Box are full."
	done

ManiaText_IfHeComesBack:
	text "Oh, no… What'll"
	line "I do if he comes"
	cont "back?"
	done

ManiaText_CanIHaveMyMonBack:
	text "Hi! How's my #-"
	line "mon?"

	para "I think I'm safe"
	line "now, so may I have"
	cont "it back?"
	done

ManiaText_ThankYou:
	text "Thank you!"
	done

ManiaText_ShuckieNotThere:
	text "Hey, you don't"
	line "have my #MON"
	cont "with you."
	done

ManiaText_ShuckieLikesYou:
	text "My #MON has"
	line "come to like you."

	para "All right, you"
	line "should keep it."

	para "But promise to"
	line "be good to it!"
	done

ManiaText_SameAsBeingRobbed:
	text "Oh, no, no… That's"
	line "the same as being"
	cont "robbed."
	done

ManiaText_HappinessSpeech:
	text "For #MON, hap-"
	line "piness is being"

	para "with a person who"
	line "treats them well."
	done

ManiaText_ShuckieIsYourLastMon:
	text "If I take my #-"
	line "mon back, what are"

	para "you going to use"
	line "in battle?"
	done
