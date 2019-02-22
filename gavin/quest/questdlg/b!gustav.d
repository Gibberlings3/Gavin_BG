
////////////////////////////
// Gustav
////////////////////////////

BEGIN ~B!GUSTAV~

APPEND ~B!GUSTAV~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN GusOhDoGoAway
SAY @0
++ @1 + GusButtler
+ ~Global("B!KnowValeria","GLOBAL",1)~ + @2 + GusValeriaHome
+ ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @3 + GusDeny
++ @4 + GusStrange
++ @5 + GusGood
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN GusNotYouAgain
SAY @6
++ @1 + GusButtler
+ ~Global("B!KnowValeria","GLOBAL",1)~ + @2 + GusValeriaHome
+ ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @3 + GusDeny
++ @4 + GusStrange
++ @5 + GusGood
END

IF ~~ THEN BEGIN GusStrange
SAY @7
++ @8 + GusGood
+ ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @9 + GusDeny
++ @10 + GusWhatDoesBertramThink
+ ~GlobalGT("B!KnowValeria","GLOBAL",0)~ + @11 + GusWhatDoesBertramThink
END


IF ~~ THEN BEGIN GusButtler
SAY @12
++ @13 + GusWhoIsValeria
++ @14 + GusWhatTapestries
++ @15 + GusWhatDoesBertramThink
++ @16 + GusValeriaHome
+ ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @17 + GusDeny
++ @18 + GusGood
END

IF ~~ THEN BEGIN GusWhatTapestries
SAY @19
++ @20 + GusThereAreTapestries
++ @21 + GusNoThanks
++ @22 + GusGood
END

IF ~~ THEN BEGIN GusNoThanks
SAY @23
IF ~~ THEN GOTO GusValeriaHome
END

IF ~~ THEN BEGIN GusThereAreTapestries
SAY @24
++ @25 DO ~SetGlobal("B!QuestAttack1Floor","GLOBAL",1)~ EXIT
++ @26 + GusValeriaHome
++ @27 + GusGood
END

IF ~~ THEN BEGIN GusGood
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GusWhoIsValeria
SAY @29
IF ~~ THEN GOTO GusValeriaHome
END

IF ~~ THEN BEGIN GusValeriaHome
SAY @30
++ @31 + GusWhatDoesBertramThink
++ @8 + GusGood
+ ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @32 + GusDeny
++ @10 + GusWhatDoesBertramThink
+ ~GlobalGT("B!KnowValeria","GLOBAL",0)~ + @11 + GusWhatDoesBertramThink
END

IF ~~ THEN BEGIN GusDeny
SAY @33
++ @34 + GusWhatDoesBertramThink
++ @35 + GusThatWontDo
++ @36 + GusGood
END

IF ~~ THEN BEGIN GusThatWontDo
SAY @37
IF ~~ THEN EXTERN ~B!BERTRA~ BertramPersuasion
END

IF ~~ THEN BEGIN GusWhatDoesBertramThink
SAY @38
IF ~~ THEN EXTERN ~B!BERTRA~ BertramGiveEmHells
END

IF ~~ THEN BEGIN GustavOutOfHere
SAY @39
IF ~~ THEN DO ~MoveToPoint([352.349]) DestroySelf()~ EXIT
END

END

BEGIN ~B!BERTRA~

APPEND ~B!BERTRA~

IF ~~ THEN BEGIN BertramPersuasion
SAY @40
++ @41 + BertramLeads
++ @42 DO ~SetGlobal("B!QuestAttack1Floor","GLOBAL",1)~ EXIT
++ @43 EXTERN ~B!GUSTAV~ GusWhatDoesBertramThink
END

IF ~~ THEN BEGIN BertramLeads
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BertramGiveEmHells
SAY @45
IF ~~ THEN  DO ~SetGlobal("B!QuestAttack1Floor","GLOBAL",1)~ EXTERN ~B!GUSTAV~ GustavOutOfHere
END
END