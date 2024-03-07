
BEGIN ~CMELF01~
BEGIN ~CMELF02~

CHAIN
IF ~NumTimesTalkedTo(0)
Global("CmTalkToElves","GLOBAL",0)~ THEN CMELF01 Confront
@0 /* ~Ygrainne, do you see who is approaching us? It looks like that <CHARNAME> person we are looking for.~ */DO ~SetGlobal("CmTalkToElves","GLOBAL",1)~
== CMELF02 @1 /* ~I believe so judging by their appreance. They look worse than the beggers on the streets.~ */
== CMELF01 @2 /* ~Probably not much of a challenge either. I was so hoping to put my fighting skills to the test.~ */
== CMELF02 @3 /* ~Perhaps have your guards dispatch them? Even they could handle this riff raff.~ */
== CMELF01 @4 /* ~I suppose I could do that, but I would have to give them the reward money.~ */
== CMELF02 @5 /* ~As if you need more coin, my dear. Being of royalty has its privileges like wealth and allowing others to get their hands dirty instead of you.~ */
== CMELF01 @6 /* ~Quite right about that, my love. Men, kill this person of evil intent and take their head, you will need it as proof for the reward.~ */ DO ~SetGlobal("CmElfFight","GLOBAL",1) Enemy() ActionOverride("cmelf02",Enemy())
ActionOverride("cmelf03",Enemy())
ActionOverride("cmelf04",Enemy())
ActionOverride("cmelf05",Enemy())~
EXIT