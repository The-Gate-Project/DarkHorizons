BEGIN ~CMMERC03~

IF ~True()
~ THEN BEGIN 0
  SAY @0 /* ~If you've gold in your purse you are a welcome sight in mine eyes.  What do you need?~ */
  IF ~~ THEN REPLY @1 /* ~Let's see what you have to offer.~ */ DO ~StartStore("CMMERC03",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 /* ~I need nothing as of now.  Perhaps I shall return later.~ */ DO ~~ EXIT
END
