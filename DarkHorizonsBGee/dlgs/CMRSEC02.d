BEGIN ~CMRSEC02~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN greeting
  SAY @0
  ++ @1 + begin1
  ++ @2 + begin2
  ++ @3 + begin3
END

IF ~~ begin1
 SAY @4
 ++ @5 + begin3
 ++ @6 + begin2
 ++ @7 + begin3
END

IF ~~ begin2
 SAY @8
 ++ @5 + begin3
 ++ @7 + begin3
END

IF ~~ begin3
 SAY @9
 ++ @10 + begin3a
 ++ @11 DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
 ++ @12 DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
END

IF ~~ begin3a
 SAY @13
 ++ @14 DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
 ++ @15 DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
END

IF ~~ begin3b
 SAY @16
  IF ~~ THEN DO ~GiveItem("SCRSEC6",LastTalkedToBy)
AddexperienceParty(1500)
EscapeArea() 
ActionOverride("cmrsec04",EscapeArea())
~ JOURNAL @17 EXIT
END