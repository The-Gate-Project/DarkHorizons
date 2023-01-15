BEGIN ~CMNAJAR~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN greeting 
  SAY @0
IF ~~ THEN REPLY @1 GOTO accuse
END

IF ~~ THEN BEGIN accuse
  SAY @2
IF ~~ THEN REPLY @3 GOTO fight
END

IF ~~ THEN BEGIN fight
  SAY @4 IF ~~ THEN DO ~SetGlobal("CmNajaraHostile","GLOBAL",1)
Enemy()
~ EXIT
END
