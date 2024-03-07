BEGIN ~CMQUEST1~

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 0 
  SAY @0 
  IF ~~ THEN JOURNAL @1 EXIT
END

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
PartyHasItem("_BOOK88")
~ THEN BEGIN 1 
  SAY @2 
  IF ~~ THEN DO ~GiveItem("_RING07",LastTalkedToBy)
TakePartyItem("_BOOK88")
AddexperienceParty(1500)
EscapeArea()
~ JOURNAL @3 EXIT
END

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("_BOOK88")
~ THEN BEGIN 2 
  SAY @4 
  IF ~~ THEN DO ~GiveItem("_RING07",LastTalkedToBy)
TakePartyItem("_BOOK88")
AddexperienceParty(1500)
EscapeArea()
~ JOURNAL @3 EXIT
END

IF ~False()
~ THEN BEGIN 3 
  SAY @5 
  IF ~~ THEN DO ~~ EXIT
END

IF ~True()
~ THEN BEGIN 4 
  SAY @6 
  IF ~~ THEN DO ~~ EXIT
END