
// b!rumor.d - adds some rumors to the Beregost taverns

APPEND %tutu_var%RBEREG 

IF ~GlobalGT("B!GavinBodyThiefQuest","GLOBAL",0) !Global("B!GavinBodyThiefQuest","GLOBAL",5)~ THEN BEGIN r1 
SAY @0 
IF ~~ THEN UNSOLVED_JOURNAL @3007 EXIT 
END 

IF ~GlobalGT("B!GavinBodyThiefQuest","GLOBAL",0) !Global("B!GavinBodyThiefQuest","GLOBAL",5)~ THEN BEGIN r2 
SAY @2 
IF ~~ THEN UNSOLVED_JOURNAL @3008 EXIT 
END 

IF ~GlobalGT("B!GavinBodyThiefQuest","GLOBAL",0) !Global("B!GavinBodyThiefQuest","GLOBAL",5)~ THEN BEGIN r3 
SAY @4 
IF ~~ THEN UNSOLVED_JOURNAL @3009 EXIT 
END 

IF ~GlobalGT("B!GavinBodyThiefQuest","GLOBAL",0) !Global("B!GavinBodyThiefQuest","GLOBAL",5)~ THEN BEGIN r4 
SAY @6 
IF ~~ THEN UNSOLVED_JOURNAL @3010 EXIT 
END 

IF ~GlobalGT("B!GavinBodyThiefQuest","GLOBAL",0) !Global("B!GavinBodyThiefQuest","GLOBAL",5)~ THEN BEGIN r5 
SAY @8 
IF ~~ THEN UNSOLVED_JOURNAL @3011 EXIT 
END 
END 