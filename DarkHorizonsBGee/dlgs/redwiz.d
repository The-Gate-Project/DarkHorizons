
BEGIN ~CMRWIZ01~
BEGIN ~CMRWIZ02~
BEGIN ~CMRWIZ03~

CHAIN
IF ~NumTimesTalkedTo(0)
Global("CmRedWizsGreet","GLOBAL",0)~ THEN CMRWIZ01 Confront
@0 /*  ~Heh look at this party of apes approaching us friends. */ DO ~SetGlobal("CmRedWizsGreet","GLOBAL",1)~
== CMRWIZ02 @1 /* ~Hi there fellow. Those are some fine looking magical items you got there.~ */
== CMRWIZ03 @2 /*  ~That they are. Why don't you just hand them over.~ */
== CMRWIZ01 @3 /*  ~We would be able to put them to better use than you simians ever could.~  */
== CMRWIZ02 @4 /*  ~I like that necklace, it gives off a distinctive glow, I think it would look good with my outfit.~  */
== CMRWIZ03 @5 /*  ~It would look better on your bare skin while you are on my bed Erica.~  */
== CMRWIZ01 @6 /*  ~Ha! As if she would have anything to do with you.~ */
== CMRWIZ03 @7 /*  ~Well you weren't there a couple of nights ago were you. That's what happens when you drink too much ale my friend.~  */
== CMRWIZ01 @8 /*  ~What? Nonsense! She wouldn't have anything to do with a primate like you.~ */
== CMRWIZ03 @9 /* ~I got your primate right here pal!~ */
== CMRWIZ02 @10 /*  ~Enough already you two! Lets get these fine magical items and leave.~ */
== CMRWIZ03 @11 /*  ~I don't think they want to give us their loot.~ */
== CMRWIZ01 @12 /*  ~We didn't ask, we're telling you. Now hand over those items and you monkeys may survive this encounter.~ */
END
++ @13 /*  ~We're not giving you clowns anything. Why don't you beat it before we decide to take your magical items.~ */ + clown
++ @14 /*  ~You three stooges are funny! You should be in a comedy play because you sure don't cut it being the "mighty" Red Wizards.~ */ + stooges
++ @15 /*  ~I think a noose would look better around Erica's neck. Why don't you buffoons beat it before I get upset.~  */ + noose
++ @16 /*  ~Monkeys? As you can plainly see we are not monkeys. A monkey is any cercopithecoid or platyrrhine primate. All primates that are not prosimians or apes are monkeys. The 264 known extant monkey species represent two of the three groupings of simian primates, the third group being the 21 species of apes. Monkeys are usually smaller and/or longer-tailed than apes. Further more...~ */ + makeitstop

CHAIN CMRWIZ01 clown
@21
== CMRWIZ03 @17 /*  ~Clowns? We'll show you how funny we are. Attack!~   */
DO ~SetGlobal("CmRedWizFight","GLOBAL",1)
Enemy()
ActionOverride("cmrwiz02",Enemy())
ActionOverride("cmrwiz03",Enemy())~
EXIT

CHAIN CMRWIZ01 stooges
@21
== CMRWIZ03 @18 /*  ~Nyuk-nyuk-nyuk! Wise guy aye? We'll show you how mighty we are, attack them my friends!~  */
DO ~SetGlobal("CmRedWizFight","GLOBAL",1) 
Enemy()
ActionOverride("cmrwiz02",Enemy())
ActionOverride("cmrwiz03",Enemy())~
EXIT

CHAIN CMRWIZ01 noose
@21
== CMRWIZ02 @19 /*  ~I'm going to cut your head off and use it as a puppet that tells stupid jokes to bar flies and make good coin from it. Life is good you know?~ */
DO ~SetGlobal("CmRedWizFight","GLOBAL",1)
Enemy()
ActionOverride("cmrwiz02",Enemy())
ActionOverride("cmrwiz03",Enemy())~
EXIT


CHAIN CMRWIZ01 makeitstop
@20 /* ~Ack! It's enough to drive one mad... Make it stop, make it stop!~ */
DO ~SetGlobal("CmRedWizFight","GLOBAL",1) 
Enemy()
ActionOverride("cmrwiz02",Enemy())
ActionOverride("cmrwiz03",Enemy())~
EXIT