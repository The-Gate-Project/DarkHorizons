BEGIN ~CMGSMEAG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
IF ~~ THEN REPLY @1 GOTO 1
IF ~~ THEN REPLY @2 
DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
IF ~~ THEN REPLY @4 EXIT
IF ~~ THEN REPLY @6 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~!PartyHasItem("CMRING05")
~ THEN BEGIN 2 
  SAY @7 
  IF ~~ THEN DO ~~ EXIT
END

IF ~PartyHasItem("CMRING05")
~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~TakePartyItem("CMRING05")
GivePartyGold(500)
EscapeArea()~ EXIT
END
