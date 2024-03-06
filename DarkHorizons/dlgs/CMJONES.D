// creator  : weidu (version 154)
// argument : CMJONES.DLG
// game     : .
// source   : ./override/CMJONES.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogF.tlk

BEGIN ~CMJONES~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Well what do we have here? Common vagabonds have infiltrated our estate. This is quite troubling. May I have your name before we have you eliminated?~ */
  IF ~~ THEN REPLY @1 /* ~My name is <CHARNAME>. I am here to put an end to this.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~"This"? And what pray tell is "this" you are babbling on about? It is bad enough you even made it to the third floor and graced our presence but do be more explanative in your statements. By the by I do not recognize you nor your name.~ */
  IF ~~ THEN REPLY @3 /* ~Your group Section has been hunting me down like a common animal and I want it to stop! I've done nothing to any of you so why treat me like this?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4 /* ~Indeed Section is a group that is under *our* control. We do not keep track of their daily affairs like hunting down rabid dogs and putting them out of their misery thus keeping the world safe from those who are evil. "Treat you like this"? They should have treated you to a nice bloody death. So wills the Great Torm.~ */
  IF ~~ THEN DO ~~ EXTERN ~CMGEORGE~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~Destroyed Section?!? I was not informed of this! Why was I not informed of this George?~ */
  IF ~~ THEN DO ~~ EXTERN ~CMGEORGE~ 2
END

IF ~~ THEN BEGIN 4 // from: CMGEORGE:0.0
  SAY @6 /* ~Indeed Tildus will be paying a visit to the twins when I see him next. Now to the business at hand. I would surmise <CHARNAME> that you and your little band of misfits must be exterminated post haste. One we always uphold our contracts and two you destroyed Section which I take personally not that I will miss Paul but none of the less.~ */
  IF ~~ THEN REPLY @7 /* ~So you uphold contracts even if they are wrong?~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: CMGEORGE:1.0 4.0
  SAY @8 /* ~Why would this contract be wrong? You must be an evil being otherwise Section would have never taken the contract in the first place. We do what is right and smite evil.~ */
  IF ~~ THEN REPLY @9 /* ~I am not evil. Has it ever occurred to you that the Iron Throne may be using you and your group? From what I heard and seen the Iron Throne is not so honorable and just as you may think they are.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @10 /* ~Why would they manipulate us like you claim? To what end would that serve them?~ */
  IF ~~ THEN DO ~~ EXTERN ~CMGEORGE~ 3
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~K-killed... Najara? BY THE GRACE OF TORM I WILL DRIVE THE KILLING BLOW MYSELF!!~ */
  IF ~~ THEN DO ~~ EXTERN ~CMGEORGE~ 5
END
