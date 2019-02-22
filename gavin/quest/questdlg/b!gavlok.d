
// b!gavlok.d - Locksmith dialogue

BEGIN ~B!GAVLOK~ 

IF ~True()~ THEN BEGIN s0 
SAY @0 
+ ~Global("B!GavinMakeKey","GLOBAL",1) GlobalTimerExpired("B!GavinKeyTime","GLOBAL")~ + @1 + s6 
+ ~Global("B!GavinMakeKey","GLOBAL",1) ! GlobalTimerExpired("B!GavinKeyTime","GLOBAL")~ + @1 + s7 
+ ~Global("B!GavinMakeKey","GLOBAL",0)~ + @2 + s1 
+ ~Global("B!GavinMakeKey","GLOBAL",0)~ + @3 + s2 
++ @4 + s3 
++ @5 + s4 
END 

IF ~~ s1 
SAY @6 
++ @7 + s13 
END 

IF ~~ s2 
SAY @8 
++ @9 + s8 
++ @10 + s9 
++ @11 + s10 
END 

IF ~~ s3 
SAY @12 
IF ~~ THEN EXIT 
END 

IF ~~ s4 
SAY @13 
IF ~~ THEN EXIT 
END 

IF ~~ s5 
SAY @14 
++ @15 + s11 
++ @16 + s12 
++ @17 EXIT 
END 

IF ~~ s6 
SAY @18 
IF ~~ THEN DO ~SetGlobal("B!GavinMakeKey","GLOBAL",2) GiveItemCreate("b!key01",Player1,0,0,0)~ EXIT 
END 

IF ~~ s7 
SAY @19 
IF ~~ THEN EXIT 
END 

IF ~~ s8 
SAY @20 
+ ~PartyGoldGT(1500)~ + @21 + s14 
++ @22 + s15 
++ @23 + s15 
++ @24 + s16 
END 

IF ~~ s9 
SAY @25 
IF ~~ THEN EXIT 
END 

IF ~~ s10 
SAY @26 
IF ~~ THEN EXIT 
END 

IF ~~ s11 
SAY @27 
IF ~~ THEN + s8 
END 

IF ~~ s12 
SAY @28 
IF ~~ THEN + s8 
END 

IF ~~ s13 
SAY @29 
IF ~~ THEN + s2 
END 

IF ~~ s14 
SAY @30 
IF ~~ THEN DO ~SetGlobal("B!GavinMakeKey","GLOBAL",1) SetGlobalTimer("B!GavinKeyTime","GLOBAL",ONE_DAY)~ EXIT 
END 

IF ~~ s15 
SAY @31 
+ ~PartyGoldGT(1500)~ + @21 + s14 
++ @24 + s16 
END 

IF ~~ s16 
SAY @32 
IF ~~ THEN EXIT 
END 
