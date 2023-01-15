BEGIN CMKIER1

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
IF ~~ THEN REPLY @1 GOTO 1
IF ~~ THEN REPLY @2 GOTO 2
IF ~PartyGoldGT(299)~ THEN REPLY @3 DO ~TakePartyGold(300) SetGlobal("GaveKeirangold", "GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4 IF ~~ THEN DO ~CreateCreature("cmwybi1",[1953.3192],4) CreateCreature("cmwybi2",[1984.2985],5) Enemy() SetGlobal("CmKeiranHostile","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
IF ~PartyGoldGT(199)~ THEN REPLY @6 DO ~TakePartyGold(200) SetGlobal("GaveKeirangold","GLOBAL",1)~ GOTO 3
IF ~~ THEN REPLY @7 GOTO 4
IF ~~ THEN REPLY @8 GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @9 IF ~~ THEN DO ~SetGlobal("TalkToKeiran","GLOBAL",1) AddexperienceParty(500)~ EXIT 
END

IF ~~ THEN BEGIN 4
  SAY @11
IF ~~ THEN REPLY @12 GOTO 3
END

IF ~Global("TalkToKeiran","GLOBAL",1)~ THEN BEGIN 5
  SAY @13
IF ~~ THEN REPLY @14 DO ~StartStore("cmkier",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15 DO ~~ EXIT
END
