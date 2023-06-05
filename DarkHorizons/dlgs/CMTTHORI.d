BEGIN ~CMTTHOR~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN greeting
  SAY @0 /* Hail friend, you are <CHARNAME>, correct? */
  ++ @1 /* That I am. Do you need something from me? */ + G1
  ++ @2 /* That depends. What do you want? */ + G1
  ++ @3 /* Who? Never heard of that person. */ + G2
END

IF ~~ G1
 SAY @4 /* My name is Thorin Stoneblade of the Stoneblade Clan. I heard you may be traveling to Durlag's Tower. I would like to accompany you there. */
 ++ @5 /* I may go there if time permits me. Why would you want to go? */ + history
 ++ @6 /* Word gets around fast. I just got done talking to Hurgan about Durlag's Tower. Is there a reason why you would want to go there? */ + history
 ++ @7 /* I have no desire to go to such a place. */ + G2
END

IF ~~ G2
SAY @8 /* Sorry to trouble you. */ 
IF ~~ THEN EXIT
END

IF ~~ history
  SAY @9 /* Well my family name is Stoneblade and my decendents were in the service of Durlag. My grandad was Durlag's captian of the guard. I would like to see what happen to my kin on their last days there. All my clan hears about is rumors. I want to know the facts of what happened to them. Could I join you? I am a capable fighter who is well skilled with warhammers and axes. */
IF ~~ THEN REPLY @10 /* Sure you can join us good dwarf. Hopefully we will survive the tower. */ + Join
IF ~~ THEN REPLY @11 /* No, we do not have the room for you at the moment. */ + NoJoin
END

IF ~~ THEN BEGIN  Join
  SAY @12 /* We shall survive and find out what happen to them on their last days. */ 
  IF ~~ DO ~SetGlobal("CmTThorinJoined","GLOBAL",1)
  JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN NoJoin
  SAY @13 /* Very well but if change your mind I'll be at Ulgoth's Beard Inn. */
IF ~~ DO ~EscapeAreaMove("%UlgothsBeard_Inn%",892,314,6)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Greet
  SAY @14 /* You have come back. Do you want me to join? */
  ++ @15 /* Sure you may join us. */ + Join
  ++ @16 /* No, I can not have you join right now. */ + NoJoin2
END

IF ~~ NoJoin2
SAY @17 /* Very well. */ 
IF ~~ THEN EXIT
END

BEGIN ~CMTTHORP~

IF ~Global("CmTThorinJoined","GLOBAL",1)~ pt1
 SAY @18 /* You wish to part company, <CHARNAME>? */
 ++ @19 /* For the moment, yes. */ + pt2
 ++ @20 /* Sorry, no. I'd rather not. */ + pt3
END
 
IF ~~ pt2
 SAY @21 /* Very well, then. Should you change your mind, you may find me downing some ale at Ulgoth's Beard Inn. */
IF ~~ DO ~SetGlobal("CmTThorinJoined","GLOBAL",0) EscapeAreaMove("%UlgothsBeard_Inn%",892,314,6)~ EXIT
END

IF ~~ pt3
 SAY @22 /* Very well. I'm pleased to hear it. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("CmTThorinJoined","GLOBAL",0)~ pt4
 SAY @23 /* Hello, <CHARNAME>. Truly, 'tis a pleasure to see you again. */
  ++ @24 /* Would you care to join up with me again? */ + pt5
  ++ @25 /* Hello, Thorin. I was just checking to see how you were. */ + pt6
END

IF ~~ pt5
 SAY @26 /* Certainly, me <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("CmTThorinJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ pt6
 SAY @27 /* Quite well, thank you, though I mean to head south as soon as possible. */
IF ~~ EXIT
END

BEGIN ~CMTTHORJ~

BEGIN ~BCMTTHOR~

CHAIN
IF ~CombatCounter(0) 
InParty("imoen")
See("imoen")
!StateCheck("imoen",STATE_SLEEPING)
Global("ThorImoenB1","GLOBAL",0)~ THEN BCMTTHOR ThorImBanter
@28 /* Imoen, must you always be doing pranks? I grow tired of your foolishness, child. */ DO ~SetGlobal("ThorImoenB1","GLOBAL",1)~
== BIMOEN @29 /* Me? What did I do this time? */
== BCMTTHOR @30 /* You know bloody well what you did! My hand ax has molasses all over it! */
== BIMOEN @31 /* Well maybe you had the top on loose when you placed the jar in your back pack. */
== BCMTTHOR @32 /* I don't like molasses! Why would I have molasses in my backpack when I don't like it? And there was no jar either. It looked like someone poured it on. */
== BIMOEN @33 /* Why blame me? <CHARNAME> is known as a prankster, maybe <PRO_HESHE> did it. */
== BCMTTHOR @34 /* Because <CHARNAME> wasn't around when it happened? But you were. I'll be watching you child. (Thorin turns and leaves.) */
== BIMOEN @35 /* Nah! (Imoen sticks her tongue out at Thorin.) */
= @36 /* (Whispering) Grumpy one he is. What can I do to him next? Hmmm? */
EXIT

BEGIN ~CMTTHORD~