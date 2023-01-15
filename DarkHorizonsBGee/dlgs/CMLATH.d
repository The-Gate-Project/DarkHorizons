BEGIN ~CMLATH~

IF ~True()
~ THEN BEGIN 0 
  SAY @0 /* ~Move along citizen. I am on duty and can not talk right now.~ */
  IF ~~ THEN DO ~
~ EXIT
END
