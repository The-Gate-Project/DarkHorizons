BEGIN CMSEC06

IF ~NumTimesTalkedTo(0)~ THEN BEGIN DavenportGreet
  SAY @0
  ++ @1 + SayHi
  ++ @2 + NotFriendly
  ++ @3 + SayHi
END

IF ~~ SayHi
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CmDavenportFight","GLOBAL",1)
  ActionOverride("cmsec25",Enemy())
Enemy()
~ EXIT
END

IF ~~ NotFriendly
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CmDavenportFight","GLOBAL",1)
  ActionOverride("cmsec25",Enemy())
Enemy()
~ EXIT
END