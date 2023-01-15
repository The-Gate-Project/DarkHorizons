BEGIN ~CMMERC04~

IF ~True()
~ THEN BEGIN 0 
  SAY @0 /* ~Show me a pretty bit of gold and you can have anything in the store.~ */
  IF ~~ THEN REPLY @1 /* ~I've got the gold, but have you anything I need?~ */ DO ~StartStore("CMMERC04",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY @2 /* ~Sorry, but I'm keeping my coins to myself today.~ */ DO ~~ EXIT
END
