/* Cross-platform variables */
///* %tutu_var% add a "_" before the resource */
///* areas */

/* CONTENTS */
/* REMINDERS */
/* Bassilus */
///* Gavin reminds PC about Bassilus quest */
///* PC has delayed Bassilus quest */
///* PC has asked Gavin to forget about the Bassilus quest */
/* Mutamin */
///* Gavin reminds PC about Mutamin quest */
///* PC has delayed Mutamin quest */
///* PC has asked Gavin to forget about the Mutamin quest */
/* Body Thief */
///* Gavin reminds PC about Body Thief quest */
///* PC has delayed Body Thief quest */
///* PC has asked Gavin to forget about the Body Thief quest */
/* Gavin is betrayed */
/* Gavin rejoining over quest stuff */
/* MESSENGER */
///* Messenger - Bassilus Quest */
///* Messenger - Mutamin Quest */
///* Messenger - Body Thief Quest */
/* KELDDATH */
///* Kelddath - Bassilus Quest */
///* Kelddath - Mutamin Quest */
////* Kelddath - Mutamin Quest - gives quest */
////* Gavin - Mutamin Quest - discussion */
////* Kelddath - Mutamin Quest - reward */
///* Kelddath - Body Thief Quest */
////* Kelddath - Body Thief Quest - gives quest */
////* Kelddath - Body Thief Quest - reward */

APPEND ~B!GAVINJ~

/* REMINDERS */
/* Bassilus */
///* Gavin reminds PC about Bassilus quest */

IF WEIGHT #-1
~Global("B!GavinBassilusQuestAgree","GLOBAL",2)~ THEN BEGIN BBassilusQuestReminder1
SAY @0
++ @1 DO ~SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",3)~ + BBassilusQuestReminder1.1
++ @2 + BBassilusQuestReminder1.2
++ @3 DO ~SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",1)~ + BBassilusQuestReminder1.3
END

IF ~~ THEN BEGIN BBassilusQuestReminder1.1
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BBassilusQuestReminder1.2
SAY @5 
IF ~~ THEN DO ~ SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBassilusQuestReminder1.3
SAY @6
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("B!GavinBassilusQuestAgree","GLOBAL",5)~ THEN BEGIN BBassilusQuestReminder2
SAY @7
++ @8 DO ~SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",6)~ + BBassilusQuestReminder2.1
++ @9 + BBassilusQuestReminder2.2
+ ~GlobalGT("B!GavinRomanceActive","GLOBAL",0) !Global("B!GavinRomanceActive","GLOBAL",3)~ + @10 DO ~SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",1)~ + BBassilusQuestReminder2.3
+ ~OR(2) !GlobalGT("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3)~ + @10 DO ~SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",1)~ + BBassilusQuestReminder2.3
END

IF ~~ THEN BEGIN BBassilusQuestReminder2.1
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BBassilusQuestReminder2.2
SAY @12 
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBassilusQuestReminder2.3
SAY @13
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF WEIGHT #-1
~Global("B!GavinBassilusQuestAgree","GLOBAL",8)~ THEN BEGIN BBassilusQuestReminder2
SAY @14
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",9) SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

///* PC has delayed Bassilus quest */

IF WEIGHT #-1
~Global("B!GavinDelayBassilusQuest","GLOBAL",3)~ THEN BEGIN BBassilusQuestDelay1
SAY @15
++ @1 DO ~SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayBassilusQuest","GLOBAL",4)~ + BBassilusQuestReminder1.1
++ @2 DO ~SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayBassilusQuest","GLOBAL",4)~ + BBassilusQuestReminder1.2
++ @3 DO ~SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",1) SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayBassilusQuest","GLOBAL",4)~ + BBassilusQuestReminder1.3
END

///* PC has asked Gavin to forget about the Bassilus quest */

IF WEIGHT #-1
~Global("B!GavinForgetBassilusQuest","GLOBAL",3)~ THEN BEGIN BBassilusQuestForget1
SAY @16
++ @17 DO ~SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",3) SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",4)~ + BBassilusQuestReminder1.1
++ @2 DO ~SetGlobal("B!GavinBassilusQuestAgree","GLOBAL",3) SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",4)~ + BBassilusQuestReminder1.2
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",4) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BBassilusQuestForgetIt1
+ ~Global("B!GavinRomanceActive","GLOBAL",0)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",4)~ + BBassilusQuestForgetIt2
+ ~Global("B!GavinRomanceActive","GLOBAL",3)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",4) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BBassilusQuestForgetIt3
+ ~Global("B!GavinRomanceActive","GLOBAL",2)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",4)~ + BBassilusQuestForgetIt4
END

IF ~~ THEN BEGIN BBassilusQuestForgetIt1
SAY @19
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBassilusQuestForgetIt2
SAY @20
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBassilusQuestForgetIt3
SAY @21
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBassilusQuestForgetIt4
SAY @22
IF ~~ THEN EXIT
END
END

/* MUTAMIN QUEST */

I_C_T ~%tutu_var%MUTAMI~ 0 BGavinMutamin1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinMessenger2","GLOBAL",2) GlobalGT("B!GavinMutaminQuest","GLOBAL",1)~ THEN @23
== ~%tutu_var%MUTAMI~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinMessenger2","GLOBAL",2) GlobalGT("B!GavinMutaminQuest","GLOBAL",1)~ THEN @104
END

APPEND ~B!GAVINJ~
/* Mutamin */
///* Gavin reminds PC about Mutamin quest */

IF WEIGHT #-1
~Global("B!GavinMutaminQuestAgree","GLOBAL",2)~ THEN BEGIN BMutaminQuestReminder1
SAY @0
++ @1 DO ~SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",3)~ + BMutaminQuestReminder1.1
++ @2 + BMutaminQuestReminder1.2
++ @3 DO ~SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",1)~ + BMutaminQuestReminder1.3
END

IF ~~ THEN BEGIN BMutaminQuestReminder1.1
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BMutaminQuestReminder1.2
SAY @5 
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BMutaminQuestReminder1.3
SAY @6
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("B!GavinMutaminQuestAgree","GLOBAL",5)~ THEN BEGIN BMutaminQuestReminder2
SAY @7
++ @8 DO ~SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",6)~ + BMutaminQuestReminder2.1
++ @9 + BMutaminQuestReminder2.2
+ ~GlobalGT("B!GavinRomanceActive","GLOBAL",0) !Global("B!GavinRomanceActive","GLOBAL",3)~ + @10 DO ~SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",1)~ + BMutaminQuestReminder2.3
+ ~OR(2) !GlobalGT("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3)~ + @10 DO ~SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",1)~ + BMutaminQuestReminder2.3
END

IF ~~ THEN BEGIN BMutaminQuestReminder2.1
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BMutaminQuestReminder2.2
SAY @12 
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BMutaminQuestReminder2.3
SAY @13
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF WEIGHT #-1
~Global("B!GavinMutaminQuestAgree","GLOBAL",8)~ THEN BEGIN BMutaminQuestReminder2
SAY @14
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",9) SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

///* PC has delayed Mutamin quest */

IF WEIGHT #-1
~Global("B!GavinDelayMutaminQuest","GLOBAL",3)~ THEN BEGIN BMutaminQuestDelay1
SAY @15
++ @1 DO ~SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayMutaminQuest","GLOBAL",4)~ + BMutaminQuestReminder1.1
++ @2 DO ~SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayMutaminQuest","GLOBAL",4)~ + BMutaminQuestReminder1.2
++ @3 DO ~SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",1) SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayMutaminQuest","GLOBAL",4)~ + BMutaminQuestReminder1.3
END

///* PC has asked Gavin to forget about the Mutamin quest */

IF WEIGHT #-1
~Global("B!GavinForgetMutaminQuest","GLOBAL",3)~ THEN BEGIN BMutaminQuestForget1
SAY @16
++ @17 DO ~SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",3) SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",4)~ + BMutaminQuestReminder1.1
++ @2 DO ~SetGlobal("B!GavinMutaminQuestAgree","GLOBAL",3) SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",4)~ + BMutaminQuestReminder1.2
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",4) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BMutaminQuestForgetIt1
+ ~Global("B!GavinRomanceActive","GLOBAL",0)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",4)~ + BMutaminQuestForgetIt2
+ ~Global("B!GavinRomanceActive","GLOBAL",3)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",4) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BMutaminQuestForgetIt3
+ ~Global("B!GavinRomanceActive","GLOBAL",2)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",4)~ + BMutaminQuestForgetIt4
END

IF ~~ THEN BEGIN BMutaminQuestForgetIt1
SAY @19
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BMutaminQuestForgetIt2
SAY @20
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BMutaminQuestForgetIt3
SAY @21
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BMutaminQuestForgetIt4
SAY @22
IF ~~ THEN EXIT
END



/* Body Thief */
///* Gavin reminds PC about Body Thief quest */

IF WEIGHT #-1
~Global("B!GavinBodyThiefQuestAgree","GLOBAL",2)~ THEN BEGIN BBodyThiefQuestReminder1
SAY @0
++ @1 DO ~SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",3)~ + BBodyThiefQuestReminder1.1
++ @2 + BBodyThiefQuestReminder1.2
++ @3 DO ~SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",1)~ + BBodyThiefQuestReminder1.3
END

IF ~~ THEN BEGIN BBodyThiefQuestReminder1.1
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BBodyThiefQuestReminder1.2
SAY @5 
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBodyThiefQuestReminder1.3
SAY @6
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("B!GavinBodyThiefQuestAgree","GLOBAL",5)~ THEN BEGIN BBodyThiefQuestReminder2
SAY @7
++ @8 DO ~SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",6)~ + BBodyThiefQuestReminder2.1
++ @9 + BBodyThiefQuestReminder2.2
+ ~GlobalGT("B!GavinRomanceActive","GLOBAL",0) !Global("B!GavinRomanceActive","GLOBAL",3)~ + @10 DO ~SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",1)~ + BBodyThiefQuestReminder2.3
+ ~OR(2) !GlobalGT("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3)~ + @10 DO ~SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",1)~ + BBodyThiefQuestReminder2.3
END

IF ~~ THEN BEGIN BBodyThiefQuestReminder2.1
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BBodyThiefQuestReminder2.2
SAY @12 
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBodyThiefQuestReminder2.3
SAY @13
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF WEIGHT #-1
~Global("B!GavinBodyThiefQuestAgree","GLOBAL",8)~ THEN BEGIN BBodyThiefQuestReminder2
SAY @14
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",9) SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

///* PC has delayed Body Thief quest */

IF WEIGHT #-1
~Global("B!GavinDelayBodyThiefQuest","GLOBAL",3)~ THEN BEGIN BBodyThiefQuestDelay1
SAY @15
++ @1 DO ~SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayBodyThiefQuest","GLOBAL",4)~ + BBodyThiefQuestReminder1.1
++ @2 DO ~SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayBodyThiefQuest","GLOBAL",4)~ + BBodyThiefQuestReminder1.2
++ @3 DO ~SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",1) SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",3) SetGlobal("B!GavinDelayBodyThiefQuest","GLOBAL",4)~ + BBodyThiefQuestReminder1.3
END

///* PC has asked Gavin to forget about the Body Thief quest */

IF WEIGHT #-1
~Global("B!GavinForgetBodyThiefQuest","GLOBAL",3)~ THEN BEGIN BBodyThiefQuestForget1
SAY @16
++ @17 DO ~SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",3) SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",4)~ + BBodyThiefQuestReminder1.1
++ @2 DO ~SetGlobal("B!GavinBodyThiefQuestAgree","GLOBAL",3) SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",4)~ + BBodyThiefQuestReminder1.2
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",4) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BBodyThiefQuestForgetIt1
+ ~Global("B!GavinRomanceActive","GLOBAL",0)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",4)~ + BBodyThiefQuestForgetIt2
+ ~Global("B!GavinRomanceActive","GLOBAL",3)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",4) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BBodyThiefQuestForgetIt3
+ ~Global("B!GavinRomanceActive","GLOBAL",2)~ + @18 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",4)~ + BBodyThiefQuestForgetIt4
END

IF ~~ THEN BEGIN BBodyThiefQuestForgetIt1
SAY @19
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBodyThiefQuestForgetIt2
SAY @20
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBodyThiefQuestForgetIt3
SAY @21
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BBodyThiefQuestForgetIt4
SAY @22
IF ~~ THEN EXIT
END

/* Gavin is betrayed */

IF ~Global("B!GavinBetrayed","GLOBAL",2)~ THEN BEGIN BGavinBetrayed
SAY @24
IF ~OR(2) Global("B!GavinRomanceActive","GLOBAL",1) Global("B!GavinRomanceActive","GLOBAL",2)~ THEN GOTO BGavinBetrayed1
IF ~OR(2) Global("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3)~ THEN GOTO BGavinBetrayed2
END

IF ~~ THEN BEGIN BGavinBetrayed1
SAY @25
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinNoReturn","GLOBAL",1) SetGlobal("B!GavinOffend","GLOBAL",20) SetGlobal("B!GavinBetrayed","GLOBAL",3) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~ EXIT
END

IF ~~ THEN BEGIN BGavinBetrayed2
SAY @26
IF ~~ THEN DO ~SetGlobal("B!GavinOffend","GLOBAL",20) SetGlobal("B!GavinBetrayed","GLOBAL",3) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~ EXIT
END

/* Gavin rejoining over quest stuff */

IF ~Global("GavinJoined","GLOBAL",0) Global("B!GavinBassilusQuestAlone","GLOBAL",1) !Global("B!GavinMutaminQuestAlone","GLOBAL",1) !Global("B!GavinBodyThiefQuestAlone","GLOBAL",1)~ THEN BEGIN BGavinComeBackBassilus
SAY @27
+ ~Dead("bassilus") !HappinessLT("B!GAVIN",0)~ + @28 + BGavinComeBackBassilus1
+ ~Dead("bassilus") HappinessLT("B!GAVIN",0)~ + @28 + BGavinComeBackBassilus2
++ @29 DO ~SetGlobal("GavinJoined","GLOBAL",1) SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",2) JoinParty()~ EXIT
++ @30 DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BGavinComeBackBassilus1
SAY @31
++ @32 DO ~SetGlobal("GavinJoined","GLOBAL",1) SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",2) JoinParty()~ EXIT
++ @30 DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BGavinComeBackBassilus2
SAY @33
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",2) EscapeArea()~ EXIT
END

IF ~Global("GavinJoined","GLOBAL",0) !Global("B!GavinBassilusQuestAlone","GLOBAL",1) Global("B!GavinMutaminQuestAlone","GLOBAL",1) !Global("B!GavinBodyThiefQuestAlone","GLOBAL",1)~ THEN BEGIN BGavinComeBackMutamin
SAY @34
+ ~Dead("mutamin") !HappinessLT("B!GAVIN",0)~ + @35 + BGavinComeBackMutamin1
+ ~Dead("mutamin") HappinessLT("B!GAVIN",0)~ + @35 + BGavinComeBackMutamin2
++ @29 DO ~SetGlobal("GavinJoined","GLOBAL",1) SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",2) JoinParty()~ EXIT
++ @30 DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BGavinComeBackMutamin1
SAY @31
++ @32 DO ~SetGlobal("GavinJoined","GLOBAL",1) SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",2) JoinParty()~ EXIT
++ @30 DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BGavinComeBackMutamin2
SAY @33
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",2) EscapeArea()~ EXIT
END

IF ~Global("GavinJoined","GLOBAL",0) !Global("B!GavinBassilusQuestAlone","GLOBAL",1) !Global("B!GavinMutaminQuestAlone","GLOBAL",1) Global("B!GavinBodyThiefQuestAlone","GLOBAL",1)~ THEN BEGIN BGavinComeBackBodyThief
SAY @36
+ ~Dead("B!VALER") !HappinessLT("B!GAVIN",0)~ + @37 + BGavinComeBackBodyThief1
+ ~Dead("B!VALER") HappinessLT("B!GAVIN",0)~ + @37 + BGavinComeBackBodyThief2
++ @29 DO ~SetGlobal("GavinJoined","GLOBAL",1) SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",2) JoinParty()~ EXIT
++ @30 DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BGavinComeBackBodyThief1
SAY @31
++ @32 DO ~SetGlobal("GavinJoined","GLOBAL",1) SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",2) JoinParty()~ EXIT
++ @30 DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BGavinComeBackBodyThief2
SAY @33
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",2) EscapeArea()~ EXIT
END
END

/* MESSENGER */
BEGIN ~B!MESNGR~

///* Messenger - Bassilus Quest */

CHAIN
IF ~Global("B!GavinMessenger1","GLOBAL",1)~ THEN ~B!MESNGR~ BGavinMessenger1
@38
DO ~SetGlobal("B!GavinMessenger1","GLOBAL",2)~
== ~B!GAVINJ~ @39
== ~B!MESNGR~ @40
== ~B!GAVINJ~ @41
== ~B!MESNGR~ @42 DO ~EscapeArea()~
== ~B!GAVINJ~ @43
END
++ @44 DO ~SetGlobal("B!GavinBassilusQuest","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinGoToTemple1
++ @45 DO ~SetGlobal("B!GavinDelayBassilusQuest","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinGoToTemple2
++ @46 EXTERN ~B!GAVINJ~ BGavinGoToTemple3
++ @47 DO ~SetGlobal("B!GavinForgetBassilusQuest","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinGoToTemple4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinGoToTemple1
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinGoToTemple2
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinGoToTemple3
SAY @50 
IF ~~ THEN DO ~SetGlobal("B!GavinBassilusQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BGavinGoToTemple4
SAY @51
IF ~~ THEN EXIT
END
END

///* Messenger - Mutamin Quest */

CHAIN
IF ~Global("B!GavinMessenger2","GLOBAL",1)~ THEN ~B!MESNGR~ BGavinMessenger2
@52
DO ~SetGlobal("B!GavinMessenger2","GLOBAL",2)~
== ~B!GAVINJ~ @53
== ~B!MESNGR~ @40
== ~B!GAVINJ~ @54
== ~B!MESNGR~ @55 DO ~EscapeArea()~
== ~B!GAVINJ~ @56
END
++ @57 DO ~SetGlobal("B!GavinMutaminQuest","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinReturnTemple1
++ @58 DO ~SetGlobal("B!GavinDelayMutaminQuest","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinReturnTemple2
++ @59 EXTERN ~B!GAVINJ~ BGavinReturnTemple3
++ @60 DO ~SetGlobal("B!GavinForgetMutaminQuest","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinReturnTemple4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinReturnTemple1
SAY @61
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinReturnTemple2
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinReturnTemple3
SAY @50 
IF ~~ THEN DO ~SetGlobal("B!GavinMutaminQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BGavinReturnTemple4
SAY @51
IF ~~ THEN EXIT
END
END

///* Messenger - Body Thief Quest */

CHAIN
IF ~Global("B!GavinMessenger3","GLOBAL",1)~ THEN ~B!MESNGR~ BGavinMessenger3
@62
DO ~SetGlobal("B!GavinMessenger3","GLOBAL",2)~
== ~B!GAVINJ~ @63
== ~B!MESNGR~ @64
== ~B!GAVINJ~ @65
== ~B!MESNGR~ @66 DO ~EscapeArea()~
== ~B!GAVINJ~ @67
END
++ @68 DO ~SetGlobal("B!GavinBodyThiefQuest","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinThirdTemple1
++ @69  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) SetGlobal("B!GavinBodyThiefQuest","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinThirdTemple1
++ @45 DO ~SetGlobal("B!GavinDelayBodyThiefQuest","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinThirdTemple2
++ @46 EXTERN ~B!GAVINJ~ BGavinThirdTemple3
++ @47 DO ~SetGlobal("B!GavinForgetBodyThiefQuest","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinThirdTemple4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinThirdTemple1
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinThirdTemple2
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinThirdTemple3
SAY @71 
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuestAlone","GLOBAL",1) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END

IF ~~ THEN BEGIN BGavinThirdTemple4
SAY @51
IF ~~ THEN EXIT
END
END

/* KELDDATH */
///* Kelddath - Bassilus Quest */
I_C_T ~%tutu_var%KELDDA~ 0 BGavinKelddathBassilus
== ~%tutu_var%KELDDA~ IF ~!Dead("bassilus") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinMessenger1","GLOBAL",2)
// GlobalGT("B!GavinBassilusQuest","GLOBAL",1) //removed - Bassilus should always talk to Gavin if the messenger was there.
~
@72
DO ~SetGlobal("B!GavinBassilusQuest","GLOBAL",4) SetGlobal("B!GavinMessenger1","GLOBAL",3)~
END

ADD_TRANS_ACTION ~%tutu_var%KELDDA~ BEGIN 1 END BEGIN END
~SetGlobal("B!GavinBassilusQuest","GLOBAL",5)~

ADD_TRANS_ACTION ~%tutu_var%KELDDA~ BEGIN 2 END BEGIN END
~SetGlobal("B!GavinBassilusQuest","GLOBAL",5)~

/* no messenger for Gavin, if the PC already heard about Bassilus from Kelddath */
ADD_TRANS_ACTION ~%tutu_var%KELDDA~ BEGIN 8 END BEGIN END
~SetGlobal("B!GavinMessenger1","GLOBAL",3)~

/* in case the messenger came but Bassilus was killed before returning to the temple
- not if Mutamin messenger already arrived */

APPEND ~%tutu_var%KELDDA~

IF WEIGHT #-1
~Dead("bassilus")
InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinMessenger1","GLOBAL",2)
Global("B!GavinMessenger2","GLOBAL",0)
Global("B!GavinMessenger3","GLOBAL",0)~ THEN bassilus_dead
SAY @103
IF ~PartyHasItem("MISC04") !Global("BassilusDead","GLOBAL",2)~ THEN DO ~SetGlobal("B!GavinMessenger1","GLOBAL",3)~ + 1
IF ~!PartyHasItem("MISC04") !Global("BassilusDead","GLOBAL",2)~ THEN DO ~SetGlobal("B!GavinMessenger1","GLOBAL",3)~ + 2
IF ~Global("BassilusDead","GLOBAL",2)~ + bassilus_dead_01
END

IF ~~ THEN bassilus_dead_01
SAY @105
IF ~~ THEN DO ~SetGlobal("B!GavinMessenger1","GLOBAL",3)~ EXIT
END
END //APPEND


///* Kelddath - Mutamin Quest */
////* Kelddath - Mutamin Quest - gives quest */
I_C_T ~%tutu_var%KELDDA~ 0 BGavinKelddathMutamin
== ~%tutu_var%KELDDA~ IF ~!Dead("mutamin") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinMessenger2","GLOBAL",2) GlobalGT("B!GavinMutaminQuest","GLOBAL",1) Global("BassilusDead","GLOBAL",2)~ THEN @73
DO ~SetGlobal("B!GavinMutaminQuest","GLOBAL",4)~
= @74
== ~B!GAVINJ~ IF ~!Dead("mutamin") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @75
== ~%tutu_var%KELDDA~  IF ~!Dead("mutamin") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @76
DO ~GiveItemCreate("%tutu_var%POTN38",Player1,6,0,0)
AddJournalEntry(@3005,QUEST)~
END

APPEND ~B!GAVINJ~

////* Gavin - Mutamin Quest - discussion */
IF ~Global("B!DiscussMutamin","GLOBAL",1)~ THEN BGavPCMutamin
SAY @78
++ @79 DO ~SetGlobal("B!DiscussMutamin","GLOBAL",2)~ + BGavPCMutamin1
++ @80 DO ~SetGlobal("B!DiscussMutamin","GLOBAL",2)~ + BGavPCMutamin2
++ @81 DO ~SetGlobal("B!DiscussMutamin","GLOBAL",2)~ + BGavPCMutamin3
++ @82 DO ~SetGlobal("B!DiscussMutamin","GLOBAL",2)~ + BGavPCMutamin4
END

IF ~~ THEN BEGIN BGavPCMutamin1
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCMutamin2
SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCMutamin3
SAY @85
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCMutamin4
SAY @86
IF ~~ THEN EXIT
END
END

////* Kelddath - Mutamin Quest - reward */
I_C_T ~%tutu_var%KELDDA~ 0 BGavinKelddathMutaminReward
== ~%tutu_var%KELDDA~ IF ~Dead("mutamin") InParty("B!GAVIN") InMyArea("B!Gavin") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinMutaminQuest","GLOBAL",4)~ THEN @87
DO ~GiveGoldForce(2000)
SetGlobal("B!GavinMutaminQuest","GLOBAL",5)
AddexperienceParty(1000)
EraseJournalEntry(@3005)
AddJournalEntry(@3006,QUEST_DONE)~
END

///* Kelddath - Body Thief Quest */
////* Kelddath - Body Thief Quest - gives quest */
I_C_T ~%tutu_var%KELDDA~ 0 BGavinKeldathBodyThief
== ~%tutu_var%KELDDA~ IF ~!Dead("B!VALER") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) GlobalGT("B!GavinMessenger3","GLOBAL",1) GlobalGT("B!GavinBodyThiefQuest","GLOBAL",1) GlobalLT("B!GavinBodyThiefQuest","GLOBAL",4)~ THEN @89
== ~B!GAVINJ~ IF ~!Dead("B!VALER") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) GlobalGT("B!GavinMessenger3","GLOBAL",1) GlobalGT("B!GavinBodyThiefQuest","GLOBAL",1) GlobalLT("B!GavinBodyThiefQuest","GLOBAL",4)~ THEN @90
== ~%tutu_var%KELDDA~  IF ~!Dead("B!VALER") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) GlobalGT("B!GavinMessenger3","GLOBAL",1) GlobalGT("B!GavinBodyThiefQuest","GLOBAL",1) GlobalLT("B!GavinBodyThiefQuest","GLOBAL",4)~ THEN @91
DO ~SetGlobal("B!GavinBodyThiefQuest","GLOBAL",4)
AddJournalEntry(@3002,QUEST)~
END

APPEND ~B!GAVINJ~
////* Gavin - Body Thief Quest - discussion */
IF ~Global("B!DiscussBT","GLOBAL",1)~ THEN BGavPCBT
SAY @93
++ @94 DO ~SetGlobal("B!DiscussBT","GLOBAL",2)~ + BGavPCBT1
++ @95 DO ~SetGlobal("B!DiscussBT","GLOBAL",2)~ + BGavPCBT2
++ @81 DO ~SetGlobal("B!DiscussBT","GLOBAL",2)~ + BGavPCBT3
++ @96 DO ~SetGlobal("B!DiscussBT","GLOBAL",2)~ + BGavPCBT4
END

IF ~~ THEN BEGIN BGavPCBT1
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCBT2
SAY @98
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCBT3
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCBT4
SAY @100
IF ~~ THEN EXIT
END
END

////* Kelddath - Body Thief Quest - reward */
I_C_T ~%tutu_var%KELDDA~ 0 BGavinKelddathBodyThiefReward
== ~%tutu_var%KELDDA~ IF ~Dead("B!VALER") InParty("B!GAVIN") InMyArea("B!Gavin") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinBodyThiefQuest","GLOBAL",4)~ THEN @101
DO ~GiveGoldForce(2000)
ReputationInc(1)
// SetGlobal("ValeriaDead","GLOBAL",2) //not used anywhere?
SetGlobal("B!GavinBodyThiefQuest","GLOBAL",5)
AddexperienceParty(2000)
EraseJournalEntry(@3002)
EraseJournalEntry(@3001)
EraseJournalEntry(@3004)
AddJournalEntry(@3003,QUEST_DONE)~
END

/* Reward without Gavin */
I_C_T ~%tutu_var%KELDDA~ 0 BGavinKelddathBodyThiefReward
== ~%tutu_var%KELDDA~ IF ~Dead("B!VALER") !Dead("B!GAVIN") OR(3) !InParty("B!GAVIN") !InMyArea("B!Gavin") StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinBodyThiefQuest","GLOBAL",4)~ THEN @102
DO ~GiveGoldForce(2000)
ReputationInc(1)
// SetGlobal("ValeriaDead","GLOBAL",2) //not used anywhere?
SetGlobal("B!GavinBodyThiefQuest","GLOBAL",5)
AddexperienceParty(2000)
EraseJournalEntry(@3002)
EraseJournalEntry(@3001)
EraseJournalEntry(@3004)
AddJournalEntry(@3003,QUEST_DONE)~
END


