BEGIN ~CMTMORW~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN greeting
  SAY @0 /* Hello there, stranger. I haven't seen you in here before. Wow, by the looks of you, I would hazard a guess you're an adventurer. Are you here to seek out the ruins of Ulcaster's School, or perhaps you're going to hunt down the riches of Durlag's Tower? Mayhaps you're going to do something else? Is that it? Do tell! */
  ++ @1 /* I might be doing one or all of the things you mentioned. But before I answer anything else, who are you? */ + begin1
  ++ @2 /* Who are you to ask me all of these questions? */ + begin1
  ++ @3 /* You sure are nosey, asking strangers their business. */ + begin2
END

IF ~~ begin1
 SAY @4 /* Oh, sorry about that. Where are my manners? I wasn't raised in a barn after all. My name is, Morwen Alanadel from Neverwinter. I'm a traveling bard who's looking for adventure and adventurers! I love to sing epic tales to a crowd at the pub or recite poetry at the local city center. So... what are you doing in Beregost? */
 ++ @5 /* I'm on my way to the Nashkel Mines. I may help out with this "iron crisis" problem if the price is right. */ + begin3
 ++ @6 /* I'm going to Nashkel to see if I can help them out with this "iron crisis". */ + begin4
 ++ @7 /* I hear there is coin to be made by solving the so called "iron crisis" in Nashkel. Where there is coin to be made, that is where I go. */ + begin3
 ++ @8 /* Well, I thought I would kick back and drink down a few pints and after that, who knows where my feet will take me. */ + begin5
END

IF ~~ begin2
 SAY @9 /* Am I? I'm sorry about that, where are my manners? Introductions are in order. My name is, Morwen Alanadel from Neverwinter. I'm a traveling bard who's looking for adventure and amazingly enough, adventurers! I love to sing epic tales to a crowd at the pub or recite poetry at the local city center. So... what are you doing in Beregost? */
 ++ @5 /* I'm on my way to the Nashkel Mines. I may help out with this "iron crisis" problem if the price is right. */ + begin3
 ++ @6 /* I'm going to Nashkel to see if I can help them out with this "iron crisis". */ + begin4
 ++ @7 /* I hear there is coin to be made by solving the so called "iron crisis" in Nashkel. Where there is coin to be made, that is where I go. */ + begin3
 ++ @8 /* Well, I thought I would kick back and drink down a few pints and after that, who knows where my feet will take me. */ + begin5
END

IF ~~ begin3
 SAY @10 /* Oh, a mercenary? Sounds interesting. Could I join you? I am a bard who is good with her voice when the situation demands it and I am very handy with a bow! So, so how about it? */
 ++ @11 /* I really don't need your help. */ + letdown1
 ++ @12 /* Very well, I could use someone with your skills. Welcome to my little party of adventurers. */ + joined1
 ++ @13 /* A bard who is good with her voice and a bow? How can I say no? You may come with me. */ + joined1
END

IF ~~ begin4
 SAY @14 /* That sounds so noble, doing a good deed to help out total strangers. That may have the makings of an epic poem! Could I join you? I am a bard who is good with her voice when the situation demands it and I am very handy with a bow! So, so how about it? */
 ++ @15 /* I really don't need your help, Morwen. */ + letdown1
 ++ @12 /* Very well, I could use someone with your skills. Welcome to my little party of adventurers. */ + joined1
 ++ @13 /* A bard who is good with her voice and a bow? How can I say no? You may come with me. */ + joined1
END

IF ~~ begin5
 SAY @16 /* How spontaneous! I was wondering if you could use a partner in your spontaneous, unknown, in the dark adventures? Could I join you, please? I'm a capable bard who is good with her voice when the situation demands it and I am very handy with a bow! So, so how about it? */
 ++ @15 /* I really don't need your help, Morwen. */ + letdown1
 ++ @12 /* Very well, I could use someone with your skills. Welcome to my little party of adventurers. */ + joined1
 ++ @13 /* A bard who is good with her voice and a bow? How can I say no? You may come with me. */ + joined1
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN greeting
  SAY @17 /* Hello, <CHARNAME>. Have you reconsidered in letting me join you? Do say yes, please! */
  ++ @18 /* I thought it over and would like you to join up with us. */ + joined1
  ++ @11 /* I really don't need your help. */ + letdown1
END

IF ~~ joined1
 SAY @19 /* Oh thank you! */
  IF ~~ THEN DO ~AddexperienceParty(1500)
SetGlobal("CmTMorwenJoin","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ letdown1
SAY @20 /* Very well, I will be here if you change your mind though. */ IF ~~ THEN EXIT
END

BEGIN ~CMTMORWP~

IF ~Global("CmTMorwenJoin","GLOBAL",1)~ pt1
 SAY @21 /* You truly wish to part company? */
 ++ @22 /* For the moment, yes. */ + pt2
 ++ @23 /* Sorry, no. I'd rather not. */ + pt3
END
 
IF ~~ pt2
 SAY @24 /* I see. Should you change your mind, you may find me at the Jovial Juggler for the time being. */
IF ~~ DO ~SetGlobal("CmTMorwenJoin","GLOBAL",0) EscapeAreaMove("%Beregost_JovialJuggler_L1%",394,934,3)~ EXIT
END

IF ~~ pt3
 SAY @25 /* Very well. I am pleased to hear it. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("CmTMorwenJoin","GLOBAL",0)
~ THEN BEGIN greeting
  SAY @26 /* Hello. Have you reconsidered in letting me join you? */
  ++ @18 /* I thought it over and would like you to join up with us. */ + joined2
  ++ @11 /* I really don't need your help. */ + letdown2
END

IF ~~ joined2
 SAY @27 /* Thank you. */
  IF ~~ THEN DO ~SetGlobal("CmTMorwenJoin","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ letdown2
SAY @20 /* Very well, I will be here if you change your mind though. */ IF ~~ THEN EXIT
END


BEGIN ~BCMTMORW~


BEGIN ~CMTMORWJ~


BEGIN ~CMTMORWD~