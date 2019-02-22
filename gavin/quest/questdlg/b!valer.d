
BEGIN ~B!VALER~
/////////////////////////////////
// Valeria
/////////////////////////////////
APPEND ~B!VALER~
IF ~NumTimesTalkedTo(0)~ THEN BEGIN BHelloValeria
SAY @0
+ ~Global("B!QuestAttack1Floor","GLOBAL",0)~ + @1 + BLaxSecurity
+ ~Global("B!QuestAttack1Floor","GLOBAL",1)~ + @1 + BLiar
+ ~Global("B!QuestAttack1Floor","GLOBAL",0)~ + @2 + BLaxSecurity
+ ~Global("B!QuestAttack1Floor","GLOBAL",1)~ + @2 + BWeShallSeeAboutThat
++ @3 + BWhatAPity
END

IF ~~ THEN BEGIN BLaxSecurity
SAY @4
+ ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @5 + BGuessedSecret
+ ~Global("B!KnowValeria","GLOBAL",1)~ + @6 + BGuessedSecret
++ @7 + BGoIfYouKnowWhatsGoodForYou
++ @8 + BGoIfYouKnowWhatsGoodForYou
END

IF ~~ THEN BEGIN BGoIfYouKnowWhatsGoodForYou
SAY @9
+ ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @10 + BGuessedSecret
+ ~Global("B!KnowValeria","GLOBAL",1)~ + @11 + BGuessedSecret
++ @12 DO ~SetGlobal("B!WhyAreYouStillHere","GLOBAL",1)~ EXIT
++ @13 + BDeterminedToProvoke
END

IF ~~ THEN BEGIN BDeterminedToProvoke
SAY @14
IF ~~ THEN DO ~SetGlobal("B!LeavingValeria","GLOBAL",1)~ EXIT
END

IF ~Global("B!WhyAreYouStillHere","GLOBAL",1)~ THEN BEGIN BWhyAreYouStillHere
SAY @15
IF ~~ THEN + BWeShallSeeAboutThat
END

IF ~~ THEN BEGIN BGuessedSecret
SAY @16
IF ~~ THEN GOTO BValeriaTruth
END

IF ~~ THEN BEGIN BLiar
SAY @17
++ @18 + BReconsiderValeria
++ @19 + BValeriaMisunderstood
+ ~OR(2) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~ + @20 + BValeriaMisunderstood
+ ~Class(Player1,CLERIC_ALL) Alignment(Player1,MASK_GOOD)~ + @20 + BValeriaMisunderstood
+ ~Global("B!QuestAttack1Floor","GLOBAL",1)~ + @21 + BValeriaSpeaks
+ ~Global("B!QuestAttack1Floor","GLOBAL",0)~ + @21 + BValeriaSpeaks2
END

IF ~~ THEN BWeShallSeeAboutThat
SAY @22
++ @18 + BReconsiderValeria
++ @19 + BValeriaMisunderstood
+ ~OR(2) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~ + @20 + BValeriaMisunderstood
+ ~Class(Player1,CLERIC_ALL) Alignment(Player1,MASK_GOOD)~ + @20 + BValeriaMisunderstood
+ ~Global("B!QuestAttack1Floor","GLOBAL",1)~ + @21 + BValeriaSpeaks
+ ~Global("B!QuestAttack1Floor","GLOBAL",0)~ + @21 + BValeriaSpeaks2
END

IF ~~ THEN BEGIN BWhatAPity
SAY @23
++ @18 + BReconsiderValeria
++ @19 + BValeriaMisunderstood
+ ~OR(2) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) !Class(Player1,CLERIC)~ + @20 + BValeriaMisunderstood
+ ~Class(Player1,CLERIC_ALL) Alignment(Player1,MASK_GOOD)~ + @20 + BValeriaMisunderstood
+ ~Global("B!QuestAttack1Floor","GLOBAL",1)~ + @21 + BValeriaSpeaks
+ ~Global("B!QuestAttack1Floor","GLOBAL",0)~ + @21 + BValeriaSpeaks2
END

IF ~NumTimesTalkedToGT(0) !GlobalGT("B!LeavingValeria","GLOBAL",0) !Dead("B!GAVIN")~ THEN BEGIN BValeriaTheClericLives
SAY @24
IF ~~ THEN DO ~SetGlobal("B!GavinBodyThiefQuest","GLOBAL",4) SetGlobal("B!QuestAttack2Floor","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0) GlobalGT("B!LeavingValeria","GLOBAL",0) !Dead("B!GAVIN")~ THEN BEGIN BValeriaTheClericLives2
SAY @25
IF ~~ THEN + BWeShallSeeAboutThat
END


IF ~NumTimesTalkedToGT(0) Dead("B!Gavin")~ THEN BEGIN BValeriaGavinDead
SAY @26
++ @27 + BValeriaReward
++ @28 + BValeriaDismissed
++ @29 + BValeriaUngratefulWretch
END

IF ~~ THEN BEGIN BValeriaReward
SAY @30
= @31
++ @32 + BValeriaWhatIsTrust
++ @33 + BValeriaDoGoAway
END

IF ~~ THEN BEGIN BValeriaDismissed
SAY @34
IF ~~ THEN DO ~SetGlobal("B!ValeriaDramaticExit","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BValeriaUngratefulWretch
SAY @35
IF ~~ THEN DO ~SetGlobal("B!ValeriaDramaticExit","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BValeriaWhatIsTrust
SAY @36
IF ~~ THEN DO ~SetGlobal("B!ValeriaDramaticExit","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BValeriaDoGoAway
SAY @37
IF ~~ THEN DO ~SetGlobal("B!ValeriaDramaticExit","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BReconsiderValeria
SAY @38
++ @39 + BValeriaSaysDie
+ ~Global("B!QuestAttack1Floor","GLOBAL",1)~ + @40 + BValeriaSpeaks
+ ~Global("B!QuestAttack1Floor","GLOBAL",0)~ + @40 + BValeriaSpeaks2
END

IF ~~ THEN BEGIN BValeriaMisunderstood
SAY @41
++ @39 + BValeriaSaysDie
+ ~Global("B!QuestAttack1Floor","GLOBAL",1)~ + @40 + BValeriaSpeaks
+ ~Global("B!QuestAttack1Floor","GLOBAL",0)~ + @40 + BValeriaSpeaks2
END

IF ~~ THEN BEGIN BValeriaSaysDie
SAY @42
IF ~~ THEN  DO ~SetGlobal("B!GavinBodyThiefQuest","GLOBAL",4) SetGlobal("B!QuestAttack2Floor","GLOBAL",1)~ EXIT
END
END

CHAIN
IF ~~ THEN ~B!VALER~ BValeriaSpeaks
@43
= @44
EXTERN ~B!VALER~ BValeriaTruth

CHAIN
IF ~~ THEN ~B!VALER~ BValeriaSpeaks2
@78
EXTERN ~B!VALER~ BValeriaTruth

CHAIN
IF ~~ THEN ~B!VALER~ BValeriaTruth
@45
= @46
= @47
= @48
= @49
= @50
= @51
= @52
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @53
END
++ @54 + BValeriaWelcomesDeath
++ @55 + BValeriaWelcomesDeath
++ @56 + BValeriaKnowTooMuch
++ @57 + BValeriaTempting
++ @58 + BValeriaWelcomesDeath

APPEND ~B!VALER~

IF ~~ THEN BEGIN BValeriaWelcomesDeath
SAY @59
IF ~~ THEN  DO ~SetGlobal("B!GavinBodyThiefQuest","GLOBAL",4) SetGlobal("B!QuestAttack2Floor","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BValeriaKnowTooMuch
SAY @60
IF ~~ THEN  DO ~SetGlobal("B!GavinBodyThiefQuest","GLOBAL",4) SetGlobal("B!QuestAttack2Floor","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BValeriaTempting
SAY @61
++ @62 + BValeriaKnowTooMuch
++ @63 + BValeriaKnowTooMuch
+ ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ + @64 + BValeriaHowProve
END

IF ~~ THEN BEGIN BValeriaHowProve
SAY @65
++ @66 + BValeriaNo
++ @67 + BValeriaWelcomesDeath
++ @68 + BValeriaWelcomesDeath
++ @69 + BValeriaWellDone
END

IF ~~ THEN BEGIN BValeriaNo
SAY @70
++ @71 + BValeriaWouldHe
++ @72 + BValeriaWelcomesDeath
++ @73 + BValeriaWellDone
END
END

CHAIN
IF ~~ THEN ~B!VALER~ BValeriaWouldHe
@74
== ~B!GAVINJ~ @75
== ~B!VALER~ @76
DO ~SetGlobal("B!GavinBodyThiefQuest","GLOBAL",4) SetGlobal("B!QuestAttack2Floor","GLOBAL",1)~ 
EXIT

CHAIN
IF ~~ THEN ~B!VALER~ BValeriaWellDone
@77
DO ~SetGlobal("B!GavinBetrayed","GLOBAL",1)~
EXIT

