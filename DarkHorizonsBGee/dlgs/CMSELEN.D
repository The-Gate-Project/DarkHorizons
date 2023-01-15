BEGIN ~CMSELEN~

IF ~NumTimesTalkedTo(0)
Global("HelpSelene","GLOBAL",0)
~ THEN BEGIN DragQuest
  SAY @0
  IF ~~ THEN DO ~SetGlobal("HelpSelene","GLOBAL",1)~ EXIT
END

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
PartyHasItem("CMISC01")
~ THEN BEGIN Return1
  SAY @2
  IF ~~ THEN DO ~GiveItem("RING07",LastTalkedToBy)
TakePartyItem("CMISC01")
AddexperienceParty(2300)
EscapeArea()
ActionOverride("CM1A2100",EscapeArea())
ActionOverride("CM2A2100",EscapeArea())
~ EXIT
END

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("CMISC01")
~ THEN BEGIN Return2
  SAY @4
  IF ~~ THEN DO ~GiveItem("RING07",LastTalkedToBy)
TakePartyItem("CMISC01")
AddexperienceParty(2300)
EscapeArea()
ActionOverride("CM1A2100",EscapeArea())
ActionOverride("CM2A2100",EscapeArea())
~ EXIT
END



