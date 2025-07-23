AriPhoneScript1:
    checktime 1 << MORN
    iftruefwd .morngreet
    checktime 1 << DAY
    iftruefwd .daygreet
    checktime 1 << EVE
    iftruefwd .evegreet
    farwritetext AriPhoneNiteGreetText
    sjumpfwd .main

.morngreet
    farwritetext AriPhoneMornGreetText
    sjumpfwd .main

.daygreet
    farwritetext AriPhoneDayGreetText
    sjumpfwd .main

.evegreet
    farwritetext AriPhoneEveGreetText
.main
    farwritetext AriPhoneGenericText
.hangup
    checktime 1 << MORN
    iftruefwd .mornbye
    checktime 1 << DAY
    iftruefwd .daybye
    checktime 1 << EVE
    iftruefwd .evebye
    farwritetext AriPhoneNiteByeText
    end

.mornbye
    farwritetext AriPhoneMornByeText
    end

.daybye
    farwritetext AriPhoneDayByeText
    end

.evebye
    farwritetext AriPhoneEveByeText
    end

AriPhoneScript2:
    random 3
	ifequal 0, .zero
	ifequal 1, .one
	ifequal 2, .two

.zero
	farwritetext AriPhoneCallerRandomText0
	end

.one
	farwritetext AriPhoneCallerRandomText1
	end

.two
	farwritetext AriPhoneCallerRandomText2
	end
