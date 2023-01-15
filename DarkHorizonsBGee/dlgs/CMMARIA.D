BEGIN ~CMMARIA~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN greeting 
  SAY @0
IF ~~ THEN REPLY @1 GOTO greet
IF ~~ THEN REPLY @2 GOTO greet
END

IF ~~ THEN BEGIN greet
  SAY @3
IF ~~ THEN REPLY @4 GOTO fight
IF ~~ THEN REPLY @5 GOTO fight
END

IF ~~ THEN BEGIN fight
  SAY @6 IF ~~ THEN DO ~SetGlobal("CmMariaHostile","GLOBAL",1)
Enemy()
~ EXIT
END
