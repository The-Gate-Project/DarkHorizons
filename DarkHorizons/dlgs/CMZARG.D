BEGIN ~CMZARG~

IF ~True()
~ THEN BEGIN Bounty1
SAY @0
++ @1 + Zargos1
++ @2 + Zargos2
++ @3 + Zargos3
END

IF ~~ Zargos1
  SAY @4
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ Zargos2
  SAY @6
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ Zargos3
  SAY @7
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
