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
  IF ~PartyHasItem("_misc98")
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
  IF ~~ THEN DO ~TakePartyItem("_MISC98")
GiveGoldForce(9000)
~ EXIT
END

IF ~~ THEN BEGIN 10 
  SAY @23
  IF ~PartyHasItem("_misc1b")
~ THEN REPLY @24 GOTO 11
  IF ~PartyHasItem("_sw2h06")
~ THEN REPLY @25 GOTO 12
  IF ~PartyHasItem("_sw1h24")
~ THEN REPLY @26 GOTO 13
  IF ~PartyHasItem("_sw1h23")
~ THEN REPLY @27 GOTO 14
  IF ~PartyHasItem("_ring02")
~ THEN REPLY @28 GOTO 15
  IF ~PartyHasItem("_helm07")
~ THEN REPLY @29 GOTO 16
  IF ~PartyHasItem("_chan03")
~ THEN REPLY @30 GOTO 17
  IF ~PartyHasItem("_bow04")
~ THEN REPLY @31 GOTO 18
  IF ~PartyHasItem("_bow08")
~ THEN REPLY @32 GOTO 19
  IF ~PartyHasItem("_belt04")
~ THEN REPLY @33 GOTO 20
  IF ~PartyHasItem("_ax1h03")
~ THEN REPLY @34 GOTO 21
  IF ~PartyHasItem("_misc52")
~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 5
END

IF ~~ THEN BEGIN 11 
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_misc1b")
PartyHasItem("_dagg01")
PartyGoldGT(4999)
~ THEN REPLY @39 DO ~TakePartyGold(5000)
TakePartyItem("_misc1b")
DestroyItem("_misc1b")
TakePartyItem("_dagg01")
DestroyItem("_dagg01")
GiveItemCreate("maforg01",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 12 
  SAY @40
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_sw2h06")
PartyHasItem("_misc60")
PartyGoldGT(4999)
~ THEN REPLY @39 DO ~TakePartyGold(5000)
TakePartyItem("_sw2h06")
DestroyItem("_sw2h06")
TakePartyItem("_misc60")
DestroyItem("_misc60")
GiveItemCreate("maforg02",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 13 
  SAY @41
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_sw1h24")
PartyHasItem("_potn13")
PartyGoldGT(6999)
~ THEN REPLY @39 DO ~TakePartyGold(7000)
TakePartyItem("_sw1h24")
DestroyItem("_sw1h24")
TakePartyItem("_potn13")
DestroyItem("_potn13")
GiveItemCreate("maforg03",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 14 
  SAY @42
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_sw1h23")
PartyHasItem("_boot01")
PartyGoldGT(4999)
~ THEN REPLY @39 DO ~TakePartyGold(5000)
TakePartyItem("_sw1h23")
DestroyItem("_sw1h23")
TakePartyItem("_boot01")
DestroyItem("_boot01")
GiveItemCreate("maforg04",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 15 
  SAY @43
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_ring02")
PartyHasItem("_scrl06")
PartyHasItem("_potn02")
PartyGoldGT(7999)
~ THEN REPLY @39 DO ~TakePartyGold(8000)
TakePartyItem("_ring02")
DestroyItem("_ring02")
TakePartyItem("_scrl06")
DestroyItem("_scrl06")
TakePartyItem("_potn02")
DestroyItem("_potn02")
GiveItemCreate("maforg05",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 16 
  SAY @44
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_helm07")
PartyHasItem("_misc2o")
PartyGoldGT(1999)
~ THEN REPLY @39 DO ~TakePartyGold(2000)
TakePartyItem("_helm07")
DestroyItem("_helm07")
TakePartyItem("_misc2o")
DestroyItem("_misc2o")
GiveItemCreate("maforg06",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 17 
  SAY @45
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_chan03")
PartyHasItem("_misc42")
PartyHasItem("_potn24")
PartyGoldGT(3999)
~ THEN REPLY @39 DO ~TakePartyGold(4000)
TakePartyItem("_chan03")
DestroyItem("_chan03")
TakePartyItem("_misc42")
DestroyItem("_misc42")
TakePartyItem("_potn24")
DestroyItem("_potn24")
GiveItemCreate("maforg07",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 18 
  SAY @46
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_bow04")
PartyHasItem("_brac07")
PartyGoldGT(2999)
~ THEN REPLY @39 DO ~TakePartyGold(3000)
TakePartyItem("_bow04")
DestroyItem("_bow04")
TakePartyItem("_brac07")
DestroyItem("_brac07")
GiveItemCreate("maforg08",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 19 
  SAY @47
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_bow08")
PartyHasItem("_brac07")
PartyGoldGT(2999)
~ THEN REPLY @39 DO ~TakePartyGold(3000)
TakePartyItem("_bow08")
DestroyItem("_bow08")
TakePartyItem("_brac07")
DestroyItem("_brac07")
GiveItemCreate("maforg09",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 20 
  SAY @48
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_belt04")
PartyHasItem("_potn05")
PartyGoldGT(9999)
~ THEN REPLY @39 DO ~TakePartyGold(10000)
TakePartyItem("_belt04")
DestroyItem("_belt04")
TakePartyItem("_potn05")
DestroyItem("_potn05")
GiveItemCreate("maforg10",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 21 
  SAY @49
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_ax1h03")
PartyHasItem("_helm14")
PartyHasItem("_misc2d")
PartyGoldGT(999)
~ THEN REPLY @50 DO ~TakePartyGold(1000)
TakePartyItem("_ax1h03")
DestroyItem("_ax1h03")
TakePartyItem("_helm14")
DestroyItem("_helm14")
TakePartyItem("_misc2d")
DestroyItem("_misc2d")
GiveItemCreate("maforg11",Player1,1,1,1)
~ EXIT
END

IF ~~ THEN BEGIN 22 
  SAY @51
  IF ~~ THEN REPLY @38 GOTO 5
  IF ~PartyHasItem("_misc52")
PartyGoldGT(5999)
~ THEN REPLY @39 DO ~TakePartyGold(6000)
TakePartyItem("_misc52")
DestroyItem("_misc52")
GiveItemCreate("macmhe01",Player1,1,1,1)
~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 23 
  SAY @52
  IF ~~ THEN DO ~~ EXIT
END
