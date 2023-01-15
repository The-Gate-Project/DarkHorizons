BEGIN ~CMMERC06~
IF ~True()
~ THEN BEGIN 0 
  SAY @0 /* ~Greetings to you. Are you here to see my wonderful potions and bags? You won't find a cheaper price any where at the Friendly Arm.~ */
  IF ~~ THEN REPLY @1 /* ~Sure, let me see what you have to offer.~ */DO ~StartStore("cmmerc06",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY @2 /* ~Not right now, perhaps another time.~ */DO ~~ EXIT
END
