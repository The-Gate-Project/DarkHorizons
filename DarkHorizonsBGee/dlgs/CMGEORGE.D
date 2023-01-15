// creator  : weidu (version 154)
// argument : CMGEORGE.DLG
// game     : .
// source   : ./override/CMGEORGE.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogF.tlk

BEGIN ~CMGEORGE~

IF ~~ THEN BEGIN 0 // from:
  SAY @0 /* ~If I may intrupt Sir Jones. This is <CHARNAME> and group, the one and only who destroyed Section.~ */
  IF ~~ THEN DO ~~ EXTERN ~CMJONES~ 4
END

IF ~~ THEN BEGIN 1 // from: CMJONES:2.0
  SAY @1 /* ~Sir your squire Tildus was suppose to have reported this information to you. Why he did not report this I do not know. Perhaps the last bringer of ill tidings met with a fatal ending and he did not want that to happen to him. We can deal with him latter Sir Jones, right now we have these foul evil doers in our midst and by the grace of Torm they must be cancelled. Our associates in the Iron Throne hired Section to deal with this monster.~ */
  IF ~~ THEN DO ~~ EXTERN ~CMJONES~ 5
END

IF ~~ THEN BEGIN 2 // from: CMJONES:3.0
  SAY @2 /* ~If I may say something about this Sir Jones, <CHARNAME> is the offspring of the dead *evil* god Bhaal, thus making it evil. Plus <CHARNAME> has been raiding and burning villages on <HISHER> way here. <HESHE> has been killing and slaughtering people including children who are sacrificed to Bhaal. <CHARNAME> has even killed your "friend" Najara.~ */
  IF ~~ THEN REPLY @3 /* ~Lies! I had to kill Najara in defense because she attacked me but I did none of the other things he says!~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 CMJONES:6.0
  SAY @4 /* ~Bleet on dead one because your end is at hand. Come Sir Jones we must put an end to this evil once and for all! <HESHE> killed Najara in cold blood. Revenge yes!~ */
  IF ~~ THEN DO ~~ EXTERN ~CMJONES~ 8
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Yes kill them all! I on the other hand will see to it our gold is well protected.~ */
  IF ~~ THEN DO ~SetGlobal("CmOsHostile","GLOBAL",1)
EscapeArea()
~ EXIT
END
