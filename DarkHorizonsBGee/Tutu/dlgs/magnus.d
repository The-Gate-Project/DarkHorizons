BEGIN ~MAGNUS~

IF
~NumTimesTalkedTo(0)
!PartyHasItem("_MISC01") // Winter Wolf Pelt ~ THEN BEGIN 0 
SAY @0
IF ~~ THEN REPLY @1 DO ~StartStore("magnus01",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @2 DO ~~ EXIT
END

IF 
~NumTimesTalkedToGT(0)
!PartyHasItem("_MISC01") // Winter Wolf Pelt~ THEN BEGIN 1
SAY @3

IF ~~ THEN REPLY @1 DO ~StartStore("magnus01",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @2 DO ~~ EXIT
END

IF ~PartyHasItem("_MISC01")
~ THEN BEGIN 2 
  SAY @4 
  IF ~~ THEN DO ~TakePartyItem("_MISC01")
GiveGoldForce(450)
~ EXIT
END
