BEGIN ~CMTNIK~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN greeting
  SAY @0 /* Hello, <CHARNAME>, may I have a word with you? */
  ++ @1 /* You? Didn't I kill you back at your headquarters? */ + begin1
  ++ @2 /* You survived I see, looks like I need to finish what I started. */ + begin2
  ++ @3 /* Nikita is it? What do you want? */ + begin3
END

IF ~~ begin1
 SAY @4 /* No, I left before the fighting started. I mean you no harm, I want to help you. */
 ++ @5 /* So what is this message of yours? */ + begin3
 ++ @6 /* Well it looks like I need to finish what I started. */ + begin2
 ++ @7 /* So, what is this message you wish to pass on to me? */ + begin3
END

IF ~~ begin2
 SAY @8 /* Hold your sword, <CHARNAME>, I come in peace. */
 ++ @5 /* So what is this message of yours? */ + begin3
 ++ @7 /* So, what is this message you wish to pass on to me? */ + begin3
END

IF ~~ begin3
 SAY @9 /* I would like to thank you for destroying Section and freeing those of us who opposed the evil rule of Paul. But your task is incomplete if you really wish to end the entire organization. I can help you if you wish it. */
 ++ @10 /* Why would you wish to help us? */ + begin3a
 ++ @11 /* I will accept your help. Where are they located at? */ DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
 ++ @12 /* So you wish to help us aye? Very well I accept your offer. */ DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
END

IF ~~ begin3a
 SAY @13 /* As I have said you freed us from their opression and another reason is because they have lost their way. You see they were not always like this. In the beginning they were a force for good and right but some how they became corrupt and evil. That evil is at Oversight and I am afraid they must all be taken out of play. */
 ++ @14 /* Very well I will accept your help. Where are they located at? */ DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
 ++ @15 /* So you wish us to destroy this evil? Very well I accept your offer. */ DO ~SetGlobal("AcceptNikitaAid","GLOBAL",1)~ + begin3b
END

IF ~~ begin3b
 SAY @16 /* Excellent. I was hoping you would say yes, this greater evil must be destroyed. They are located in the southeast location of Central Baldur's Gate in a three story building. Here you will need this scroll to get past the guards. Do not lose it. Another thing, <CHARNAME>, I would like to join with you if I may. */
 ++ @17 /* Why would you want to join me? */ + join1
 ++ @18 /* Join me? Are you leading me into a trap? */ + join2
 ++ @19 /* I really don't need your help. */ + letdown
END

IF ~~ join1
 SAY @20 /* I wish to repay you by helping you out. I also have a lot to atone for. Some of the missions I was forced to take part in, it was not for the greater good. */
 ++ @19 /* I really don't need your help. */ + letdown
 ++ @21 /* Very well, I could use someone with your skill. Welcome to my club. */ + joined
 ++ @22 /* An assassin with your skills is something I could use, especially against this Oversight group. You may come with me. */ + joined
END

IF ~~ join2
 SAY @23 /* No, of course not. I wish to repay you by helping you out. I also have a lot to atone for. Some of the missions I was forced to take part in, it was not for the greater good. */
 ++ @19 /* I really don't need your help. */ + letdown
 ++ @21 /* Very well, I could use someone with your skill. Welcome to my club. */ + joined
 ++ @22 /* An assassin with your skills is something I could use, especially against this Oversight group. You may come with me. */ + joined
END

IF ~~ joined
 SAY @24 /* Thank you. */
  IF ~~ THEN DO ~GiveItem("SCRSEC6",LastTalkedToBy)
AddexperienceParty(1500)
SetGlobal("CmTNikJoin","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ letdown
 SAY @25 /* If that is what you wish. I will be at the Friendly Arm Inn if you change you mind. */
  IF ~~ THEN DO ~GiveItem("SCRSEC6",LastTalkedToBy)
AddexperienceParty(1500)
EscapeAreaMove("%FriendlyArmInn_L1%",580,396,3)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("AcceptNikitaAid","GLOBAL",1)
~ THEN BEGIN greeting
  SAY @26 /* Hello. Have you reconsidered in letting me join you? */
  ++ @27 /* I thought it over and would like you to join up with us. */ + joined2
  ++ @19 /* I really don't need your help. */ + letdown2
END

IF ~~ joined2
 SAY @24 /* Thank you. */
  IF ~~ THEN DO ~AddexperienceParty(1500)
SetGlobal("CmTNikJoin","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ letdown2
SAY @28 /* Very well, I will be here if you change your mind though. */ IF ~~ THEN EXIT
END

BEGIN ~CMTNIKP~


IF ~Global("CmTNikJoin","GLOBAL",1)~ pt1
 SAY @29 /* You truly wish to part company? */
 ++ @30 /* For the moment, yes. */ + pt2
 ++ @31 /* Sorry, no. I'd rather not. */ + pt3
END
 
IF ~~ pt2
 SAY @32 /* I see. Should you change your mind, you may yet be able to find me at the Friendly Arm Inn for the time being. */
IF ~~ DO ~SetGlobal("CmTNikJoin","GLOBAL",0) EscapeAreaMove("%FriendlyArmInn_L1%",580,396,3)~ EXIT
END

IF ~~ pt3
 SAY @33 /* Very well. I am pleased to hear it. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("CmTNikJoin","GLOBAL",0)
~ THEN BEGIN greeting
  SAY @26 /* Hello. Have you reconsidered in letting me join you? */
  ++ @27 /* I thought it over and would like you to join up with us. */ + joined2
  ++ @19 /* I really don't need your help. */ + letdown2
END

IF ~~ joined2
 SAY @24 /* Thank you. */
  IF ~~ THEN DO ~SetGlobal("CmTNikJoin","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ letdown2
SAY @28 /* Very well, I will be here if you change your mind though. */ IF ~~ THEN EXIT
END

BEGIN ~CMTNIKJ~

BEGIN ~BCMTNIK~

BEGIN ~CMTNIKD~