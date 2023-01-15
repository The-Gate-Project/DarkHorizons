BEGIN ~CMWENDEL~

IF ~NumTimesTalkedTo(0) ~ THEN BEGIN 0 
 SAY @0 
IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
 SAY @2 
IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4 IF ~~ THEN DO ~SetGlobal("CmDruidHostile2","GLOBAL",1)
  ActionOverride("cmdru06",Enemy())
Enemy()
~ EXIT
END
