BEGIN ~MASAL01~

IF ~True()
~ THEN BEGIN 0 
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 
  SAY @4 
  IF ~~ THEN DO ~ActionOverride("masal2",Enemy())
Enemy()
~ EXIT
END
