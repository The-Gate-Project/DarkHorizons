BEGIN ~CMWINTON~

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 0 
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 
  SAY @3 
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 2 
  SAY @4 
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 1
  
END

IF ~~ THEN BEGIN 3
  SAY @7 
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9 
  IF ~~ THEN DO ~SetGlobal("CmWintonHelp","GLOBAL",1)
~ JOURNAL @10 EXIT
END

IF ~!PartyHasItem("_MISC42")
~ THEN BEGIN 6 
  SAY @11 
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("_MISC42")
~ THEN BEGIN 7 
  SAY @12 
  IF ~~ THEN DO ~GiveGoldForce(3000)
TakePartyItem("_MISC42")
EscapeArea()
~ EXIT
END
