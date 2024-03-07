BEGIN ~MATHOREN~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 
  SAY @3
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 
  SAY @8
  IF ~~ THEN DO ~StartStore("mathoren",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 4 
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5 
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 
  SAY @13
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7 
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 3
  IF ~PartyHasItem("misc98")
~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 8 
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 DO ~~ EXIT
END

IF ~~ THEN BEGIN 9 
  SAY @22
  IF ~~ THEN DO ~TakePartyItem("MISC98")
GiveGoldForce(9000)
~ EXIT
END

IF ~~ THEN BEGIN 10 
  SAY @23
  IF ~PartyHasItem("misc1b")
~ THEN REPLY @24 GOTO 11
  IF ~PartyHasItem("sw2h06")
~ THEN REPLY @25 GOTO 12
  IF ~PartyHasItem("sw1h24")
~ THEN REPLY @26 GOTO 13
  IF ~PartyHasItem("sw1h23")
~ THEN REPLY @27 GOTO 14
  IF ~PartyHasItem("ring02")
~ THEN REPLY @28 GOTO 15
  IF ~PartyHasItem("helm07")
~ THEN REPLY @29 GOTO 16
  IF ~PartyHasItem("chan03")
~ THEN REPLY @30 GOTO 17
  IF ~PartyHasItem("bow04")
~ THEN REPLY @31 GOTO 18
  IF ~PartyHasItem("bow08")
~ THEN REPLY @32 GOTO 19
  IF ~PartyHasItem("belt04")
~ THEN REPLY @33 GOTO 20
  IF ~PartyHasItem("ax1h03")
~ THEN REPLY @34 GOTO 21
  IF ~PartyHasItem("misc52")
~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 5
END

IF ~~ THEN BEGIN 11 
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("misc1b")
PartyHasItem("dagg01")
PartyGoldGT(4999)
~ THEN REPLY @39 DO ~TakePartyGold(5000)
TakePartyItem("misc1b")
DestroyItem("misc1b")
TakePartyItem("dagg01")
DestroyItem("dagg01")
GiveItemCreate("maforg01",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 12 
  SAY @40
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("sw2h06")
PartyHasItem("misc60")
PartyGoldGT(4999)
~ THEN REPLY @39 DO ~TakePartyGold(5000)
TakePartyItem("sw2h06")
DestroyItem("sw2h06")
TakePartyItem("misc60")
DestroyItem("misc60")
GiveItemCreate("maforg02",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 13 
  SAY @41
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("sw1h24")
PartyHasItem("potn13")
PartyGoldGT(6999)
~ THEN REPLY @39 DO ~TakePartyGold(7000)
TakePartyItem("sw1h24")
DestroyItem("sw1h24")
TakePartyItem("potn13")
DestroyItem("potn13")
GiveItemCreate("maforg03",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 14 
  SAY @42
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("sw1h23")
PartyHasItem("boot01")
PartyGoldGT(4999)
~ THEN REPLY @39 DO ~TakePartyGold(5000)
TakePartyItem("sw1h23")
DestroyItem("sw1h23")
TakePartyItem("boot01")
DestroyItem("boot01")
GiveItemCreate("maforg04",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 15 
  SAY @43
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("ring02")
PartyHasItem("scrl06")
PartyHasItem("potn02")
PartyGoldGT(7999)
~ THEN REPLY @39 DO ~TakePartyGold(8000)
TakePartyItem("ring02")
DestroyItem("ring02")
TakePartyItem("scrl06")
DestroyItem("scrl06")
TakePartyItem("potn02")
DestroyItem("potn02")
GiveItemCreate("maforg05",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 16 
  SAY @44
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("helm07")
PartyHasItem("misc2o")
PartyGoldGT(1999)
~ THEN REPLY @39 DO ~TakePartyGold(2000)
TakePartyItem("helm07")
DestroyItem("helm07")
TakePartyItem("misc2o")
DestroyItem("misc2o")
GiveItemCreate("maforg06",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 17 
  SAY @45
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("chan03")
PartyHasItem("misc42")
PartyHasItem("potn24")
PartyGoldGT(3999)
~ THEN REPLY @39 DO ~TakePartyGold(4000)
TakePartyItem("chan03")
DestroyItem("chan03")
TakePartyItem("misc42")
DestroyItem("misc42")
TakePartyItem("potn24")
DestroyItem("potn24")
GiveItemCreate("maforg07",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 18 
  SAY @46
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("bow04")
PartyHasItem("brac07")
PartyGoldGT(2999)
~ THEN REPLY @39 DO ~TakePartyGold(3000)
TakePartyItem("bow04")
DestroyItem("bow04")
TakePartyItem("brac07")
DestroyItem("brac07")
GiveItemCreate("maforg08",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 19 
  SAY @47
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("bow08")
PartyHasItem("brac07")
PartyGoldGT(2999)
~ THEN REPLY @39 DO ~TakePartyGold(3000)
TakePartyItem("bow08")
DestroyItem("bow08")
TakePartyItem("brac07")
DestroyItem("brac07")
GiveItemCreate("maforg09",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 20 
  SAY @48
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("belt04")
PartyHasItem("potn05")
PartyGoldGT(9999)
~ THEN REPLY @39 DO ~TakePartyGold(10000)
TakePartyItem("belt04")
DestroyItem("belt04")
TakePartyItem("potn05")
DestroyItem("potn05")
GiveItemCreate("maforg10",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 21 
  SAY @49
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("ax1h03")
PartyHasItem("helm14")
PartyHasItem("misc2d")
PartyGoldGT(999)
~ THEN REPLY @50 DO ~TakePartyGold(1000)
TakePartyItem("ax1h03")
DestroyItem("ax1h03")
TakePartyItem("helm14")
DestroyItem("helm14")
TakePartyItem("misc2d")
DestroyItem("misc2d")
GiveItemCreate("maforg11",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 22 
  SAY @51
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("misc52")
PartyGoldGT(5999)
~ THEN REPLY @39 DO ~TakePartyGold(6000)
TakePartyItem("misc52")
DestroyItem("misc52")
GiveItemCreate("macmhe01",Player1,1,1,1)
~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 23 
  SAY @52
  IF ~~ THEN DO ~~ EXIT
END
