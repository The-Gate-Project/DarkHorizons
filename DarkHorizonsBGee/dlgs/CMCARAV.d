BEGIN ~CMCARAV~

IF ~True()
~ THEN BEGIN 0 
  SAY @0 /* ~I'm just a guard for this caravan, go bother one of the merchants.~ */ 
  IF ~~ THEN DO ~
~ EXIT
END
