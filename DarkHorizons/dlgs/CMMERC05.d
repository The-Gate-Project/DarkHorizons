
BEGIN ~CMMERC05~

IF WEIGHT #1
~True()~ THEN BEGIN 0
  SAY @0 /* ~Alexia my niece is that you? Oh sorry and who might you be then? Hmmph? Come to check out the wares of ol' Sintara Al-Mustafa of Calimport? Well be quick about it! And mind you don't get fidgety when we talk payment. You knew when you came to me that my wares were magical; premium items demand a premium price.~ */
  IF ~~ THEN REPLY @1 /* ~Let's see what you have, then.~ */ DO ~StartStore("CMMERC05",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY @2 /* ~Perhaps another time.~ */ EXIT
END

