BEGIN ~CMMIKE~
BEGIN ~CMNIKITA~
BEGIN ~CMMADEL~
BEGIN ~CMPAUL~

CHAIN
IF ~NumTimesTalkedTo(0)
Global("CmSectionBossGreet","GLOBAL",0)~ THEN CMPAUL Confrontion
@0 /* Never again will you breach the walls of this fortress. So the mighty adventurer has made their presence known in Section One headquarters finally. A fatal mistake in itself if you did not already have a cancellation order on your head. */  DO ~SetGlobal("CmSectionBossGreet","GLOBAL",1)~
== CMMADEL @1 /* Yes, indeed the subject must be terminated at once. <CHARNAME> is a danger to all that is good. Before that happens, can I use them for my experiments? */
== CMPAUL @2 /* No, you may not. They are far too dangerous to be kept alive for long. */
== CMMADEL @3 /* Perhaps we can prolong their deaths then? I really wish to try my death experiments. I really need to study how long they can endure pain before they finally die. */
== CMPAUL @4 /* Cold as always, Madeline, that's what I like about you. Logical, without morals and to the point. */
== CMMADEL @5 /* Morals are illogical. They are an emotion and emotions are a flaw that clouds logic. Right, Nikita? */
== CMNIKITA @6 /* But, Madeline, its emotions that make us rational thinking beings. Even if they are your enemy you still have to feel for them. They could always be turned to the lightness of good and... */
== CMMADEL @7 /* Yes, yes we are well aware of your weak sympathy for others, Nikita. I wonder why you are still with us. */
== CMNIKITA @8 /* Its because I still complete the job that is assigned to me even if I disagree with it. At least I am not a yes man like Michael. */
== CMMIKE @9 /* Of course, Nikita. */
== CMPAUL @10 /* Enough! Now back to you, <CHARNAME>. Too bad you are evil, you would have made a fine operative. Not just anyone can defeat some of our top operatives, they are the best trained individuals in the Sword Coast region. */
END
++ @11 /* Why do you keep calling me evil? What have I've ever done to you? What is going on? If anyone around here is evil, its you and your group. */ + C0
++ @12 /* What is going on? I demand answers you evil bastards! */ + C1
++ @13 /* Evil? I think you and your group of misfits are a lame representation of evil. I'll show you evil, the likes that you have never seen before! */ + C2
++ @14 /* Your people have tried to kill me, you call me evil, I want to know what is going on! */ + C0

CHAIN CMPAUL C0
@15 /* You're an evil dangerous entity that can not be allowed to exist any further. We would cancel you even if we had not been contacted by a certain group to deal with you. */
== CMNIKITA @16 /* I don't think they are evil, Operations. */
== CMPAUL @17 /* I didn't ask for your opinion, Nikita. Keep quiet! As for your question, <CHARNAME>, we are not evil, we will do whatever it takes to accomplish our goals. If we have to kill a hundred innocents to get to one evil being that will in turn save millions, then that's what we will do. */
END
++ @18 /* Your moral ethics are staggering. Forgive me if I do not hand you a medal for your "noble" work. */ + C10
++ @19 /* You would do that and yet, you call me evil? I think someone's moral compass is a little off today. */ + C10

CHAIN CMPAUL C1
@20 /* Demanding little thing aren't you? Very well, you're an evil dangerous entity that can not be allowed to exist any further. We would cancel you even if we had not been contacted by a certain group to deal with you. */
== CMNIKITA @16 /* I don't think they are evil, Operations. */
== CMPAUL @21 /* I didn't ask for your opinion, Nikita. Keep quiet! As for your flawed statement, <CHARNAME>, we are not "evil bastards". We will do whatever it takes to accomplish our goals. If we have to kill a hundred innocents to get to one evil being that will in turn save millions, then that's what we will do. */
END
++ @18 /* Your moral ethics are staggering. Forgive me if I do not hand you a medal for your "noble" work. */ + C10
++ @19 /* You would do that and yet, you call me evil? I think someone's moral compass is a little off today. */ + C10

CHAIN CMPAUL C2
@22 /* Indeed. You're an evil dangerous entity, as your boisterous statement just declared, that can not be allowed to exist any further. We would cancel you even if we had not been contacted by a certain group to deal with you. */
== CMNIKITA @23 /* They may be evil, Operations, but I think we could turn them to the light of goodness. */
== CMPAUL @24 /* I didn't ask for your opinion, Nikita. Keep quiet! As for your flawed statement, <CHARNAME>, we are not evil, we do whatever it takes to accomplish our goals. If we have to kill a hundred innocents to get to one evil being that will in turn save millions, then that's what we will do. */
END
++ @18 /* Your moral ethics are staggering. Forgive me if I do not hand you a medal for your "noble" work. */ + C10
++ @19 /* You would do that and yet, you call me evil? I think someone's moral compass is a little off today. */ + C10

CHAIN CMPAUL C10
@25 /* Indeed. I will teach you much in pain. */
== CMNIKITA @26 /* This is going too far! I will have nothing to do with this! */
== CMMADEL @27 /* You will do as we command, Nikita! */
== CMMIKE @28 /* Nikita, don't do this. */
== CMNIKITA @29 /* This is wrong! I will no longer be part of this masquerade for goodness! Hunt me down if you will, I am gone! */ DO ~ActionOverride("cmnikita1",EscapeArea())~
== CMMADEL @30 /* Guards, secure Nikita at once! */
== CMPAUL @31 /* Belay that order. We'll deal with her in good time. Guards, kill <CHARNAME>! */
DO ~SetGlobal("CMSectionEndGame","GLOBAL",1)
Enemy()
ActionOverride("cmmadeline",Enemy())
ActionOverride("cmmichael",Enemy())~
EXIT


