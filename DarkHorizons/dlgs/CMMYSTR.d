BEGIN ~CMMYSTR~
IF ~True()
~ THEN BEGIN 0 
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("cmmystr",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY @2 DO ~~ EXIT
END
