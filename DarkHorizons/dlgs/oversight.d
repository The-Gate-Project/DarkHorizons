
BEGIN ~CMGEORGE~

BEGIN ~CMJONES~

CHAIN
IF ~NumTimesTalkedTo(0)
Global("CmTalkToJones","GLOBAL",0)~ THEN CMJONES Confront
@0 DO ~SetGlobal("CmTalkToJones","GLOBAL",1)~
== CMGEORGE @1
== CMJONES @2
== CMGEORGE @3
== CMJONES @4
== CMGEORGE @5
== CMJONES @6
== CMGEORGE @7 DO ~SetGlobal("CMOversightEndGame","GLOBAL",1) ReallyForceSpell(Myself,DRYAD_TELEPORT)~
== CMJONES @8  DO ~Enemy()~
EXIT