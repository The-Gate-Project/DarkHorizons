BEGIN CMANDREA

IF 
~NumTimesTalkedTo(0)
~ THEN BEGIN  AndreaGreet
SAY @0
++ @1 + InGoodTime
++ @2 + PatheticThreat
++ @3 + InGoodTime
END

IF ~~ InGoodTime
SAY @4
++ @5 + YouAreThere
++ @6 + YouAreThere
END

IF ~~ PatheticThreat
SAY @7
 IF ~~ THEN DO ~SetGlobal("MeetingOperations","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("CM3376","",[757.1226],6))
ActionOverride(Player1,LeaveAreaLUA("CM3376","",[757.1226],6))
ActionOverride(Player2,LeaveAreaLUA("CM3376","",[813.1185],6))
ActionOverride(Player3,LeaveAreaLUA("CM3376","",[861.1180],6))
ActionOverride(Player4,LeaveAreaLUA("CM3376","",[837.1143],6))
ActionOverride(Player5,LeaveAreaLUA("CM3376","",[828.1118],6))
ActionOverride(Player6,LeaveAreaLUA("CM3376","",[906.1152],6))
~ EXIT
END

IF ~~ YouAreThere
SAY @8
 IF ~~ THEN DO ~SetGlobal("MeetingOperations","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("CM3376","",[757.1226],6))
ActionOverride(Player1,LeaveAreaLUA("CM3376","",[757.1226],6))
ActionOverride(Player2,LeaveAreaLUA("CM3376","",[813.1185],6))
ActionOverride(Player3,LeaveAreaLUA("CM3376","",[861.1180],6))
ActionOverride(Player4,LeaveAreaLUA("CM3376","",[837.1143],6))
ActionOverride(Player5,LeaveAreaLUA("CM3376","",[828.1118],6))
ActionOverride(Player6,LeaveAreaLUA("CM3376","",[906.1152],6))
~ EXIT
END

