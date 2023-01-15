BEGIN CMGHST01

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN greeting 
  SAY @0
  ++ @1 + treasure
  ++ @2 + fight
  ++ @3 + whyhere
END

IF ~~ treasure
 SAY @4 
 IF ~~ THEN DO ~SetGlobal("CmUlcastorGhostsHostile","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ fight
 SAY @5
 IF ~~ THEN DO ~SetGlobal("CmUlcastorGhostsHostile","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ whyhere
 SAY @6
  IF ~~ THEN DO ~SetGlobal("CmUlcastorGhostsHostile","GLOBAL",1)
Enemy()
~ EXIT
END