BEGIN ~CMGEORG1~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN greeting 
  SAY @0
  ++ @1 + threat
  ++ @2 + contract
END

IF ~~ threat
 SAY @3 IF ~~ THEN DO ~SetGlobal("CMGeorgeEndGame","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ contract
 SAY @4 
 IF ~~ THEN DO ~SetGlobal("CMGeorgeEndGame","GLOBAL",1)
Enemy()
~ EXIT
END