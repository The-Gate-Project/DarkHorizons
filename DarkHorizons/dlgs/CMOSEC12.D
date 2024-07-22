BEGIN ~CMOSEC12~

IF ~True()~ THEN BEGIN Talk
SAY @0
IF ~PartyHasItem("SCRSEC6")~ THEN REPLY @1 + GoIn
IF ~!PartyHasItem("SCRSEC6")~ THEN REPLY @2 + Stupid
END

IF ~~ GoIn
SAY @3 IF ~~ THEN DO ~TakePartyItem("SCRSEC6") EscapeArea()~ EXIT
END

IF ~~ Stupid
SAY @5 IF ~~ THEN DO ~SetGlobal("CMOversightEndGame","GLOBAL",1) Shout(1)
Enemy() EscapeArea()~ EXIT
END
