
//////////////////////////
// Penny
//////////////////////////

BEGIN ~B!PENNY~

IF ~NumTimesTalkedTo(0)~
THEN BEGIN HelloPenny
SAY @0
++ @1 + ByePenny
++ @2 + WhatUpPenny
+ ~Gender(Player1,MALE)~ + @3 + PickUpPennyStraight
+ ~Gender(Player1,FEMALE)~ + @3 + PickUpPennyGay
++ @4 + PennyNews
+ ~!Dead("B!VALER") Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @5 + PennyRealNews
END

IF ~~ THEN BEGIN ByePenny
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN WhatUpPenny
SAY @7
++ @8 + SpeakPenny
+ ~Gender(Player1,MALE)~ + @9 + PickUpPennyStraight
+ ~Gender(Player1,FEMALE)~ + @9 + PickUpPennyGay
++ @10 + ByePenny
++ @11 + PennyNews
END

IF ~~ THEN BEGIN SpeakPenny
SAY @12
IF ~~ THEN GOTO ByePenny
END

IF ~~ THEN BEGIN PickUpPennyStraight
SAY @13
++ @14 + TickOffPenny
++ @15 + ByePenny
++ @16 + PennyNotListening
END

IF ~~ THEN BEGIN TickOffPenny
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyNotListening
SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PickUpPennyGay
SAY @19
++ @20 + PennyToTheDense
++ @16 + ByePenny
++ @21 + PennyNews
END

IF ~~ THEN BEGIN PennyToTheDense
SAY @22
++ @23 + PennyNews
++ @24 + PennyDuh
++ @25 + ByePenny
END

IF ~~ THEN BEGIN PennyDuh
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyNews
SAY @27
IF ~Global("B!GavinBodyThiefQuest","GLOBAL",4)~ THEN GOTO PennyRealNews
IF ~!Global("B!GavinBodyThiefQuest","GLOBAL",4)~ THEN GOTO PennyBaffled
END

IF ~~ THEN BEGIN PennyBaffled
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyRealNews
SAY @29
+ ~PartyGoldGT(9)~ + @30 + PennySaysForgetIt
+ ~PartyGoldGT(49)~ + @31 DO ~TakePartyGold(50)~ + VaguePenny
+ ~PartyGoldGT(99)~ + @32 DO ~TakePartyGold(100)~ + SpecificPenny
+ ~PartyGoldGT(499)~ + @33 + SuspiciousPenny
++ @34 + PennyNotWorthIt
++ @35 + ByePenny
END

IF ~~ THEN BEGIN SuspiciousPenny
SAY @36
++ @37 DO ~TakePartyGold(500)~ + PennyNotHasty
++ @38 + PennyNotGoodEnough
+ ~CheckStatGT(Player1,14,CHR)~ + @39 DO ~TakePartyGold(500)~ + PennyGoodEnough
+ ~CheckStatLT(Player1,15,CHR)~ + @39 + PennyNotGoodEnough
END

IF ~~ THEN BEGIN PennyNotHasty
SAY @40
++ @41 DO ~TakePartyGold(500)~ + SpecificPenny
++ @42 + PennySaysGoodLuck
END

IF ~~ THEN BEGIN PennyNotGoodEnough
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyGoodEnough
SAY @44
= @45
IF ~~ THEN DO ~SetGlobal("B!KnowValeria","GLOBAL",1)
AddJournalEntry(@3001,QUEST)~
EXIT
END

IF ~~ THEN BEGIN PennySaysForgetIt
SAY @47
++ @48 + PennySaysGoodLuck
+ ~PartyGoldGT(49)~ + @49 + PennySaysMissedBoat
+ ~PartyGoldGT(99)~ + @50 DO ~TakePartyGold(100)~ + VaguePenny
+ ~PartyGoldGT(199)~ + @51 DO ~TakePartyGold(200)~ + SpecificPenny
++ @34 + PennyNotWorthIt
END

IF ~~ THEN BEGIN PennySaysMissedBoat
SAY @52
+ ~PartyGoldGT(99)~ + @53 DO ~TakePartyGold(100)~ + VaguePenny
+ ~PartyGoldGT(199)~ + @54 DO ~TakePartyGold(200)~ + SpecificPenny
++ @55 + PennyNotWorthIt
++ @35 + ByePenny
END

IF ~~ THEN BEGIN PennySaysGoodLuck
SAY @56
IF ~~ THEN DO ~SetGlobal("B!PennyFoolish","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN VaguePenny
SAY @57
++ @58 + ByePenny
++ @59 + PennySpecificCosts
+ ~Alignment(Player1,MASK_EVIL)~ + @60 + PennyNotWorthIt
++ @61 + NotNeedPenny
END

IF ~~ THEN BEGIN PennySpecificCosts
SAY @62
++ @63 + ByePenny
+ ~PartyGoldGT(49)~ + @64 DO ~TakePartyGold(50)~ + SpecificPenny
+ ~PartyGoldGT(99)~ + @65 DO ~TakePartyGold(100)~ + SpecificPenny
END

IF ~~ THEN BEGIN NotNeedPenny
SAY @66 
++ @63 + ByePenny
+ ~PartyGoldGT(49)~ + @64 DO ~TakePartyGold(50)~ + SpecificPenny
+ ~PartyGoldGT(99)~ + @65 DO ~TakePartyGold(100)~ + SpecificPenny
END

IF ~~ THEN BEGIN SpecificPenny
SAY @67
++ @68 + ByePenny
++ @69 DO ~SetGlobal("B!KnowValeria","GLOBAL",1)~ + PennyWhoIsValeria
END

IF ~~ THEN BEGIN PennyWhoIsValeria
SAY @70
= @71
IF ~~ THEN DO ~AddJournalEntry(@3001,QUEST)~ EXIT
END

IF ~~ THEN BEGIN PennyNotWorthIt
SAY @72
IF ~~ THEN EXIT
END

IF 
~NumTimesTalkedToGT(0) Global("B!PennyFoolish","GLOBAL",1)~
THEN BEGIN HelloPenny
SAY @73
++ @1 + ByePenny
++ @2 + WhatUpPenny
+ ~Gender(Player1,MALE)~ + @74 + PickUpPennyStraight
+ ~Gender(Player1,FEMALE)~ + @74 + PickUpPennyGay
++ @75 + PennyNews
+ ~!Dead("B!VALER") Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @5 + PennyRealNews
END

IF 
~NumTimesTalkedToGT(0) Global("B!PennyFoolish","GLOBAL",0)~
THEN BEGIN HelloPenny
SAY @76
++ @77 + ByePenny
++ @78 + WhatUpPenny
+ ~Gender(Player1,MALE)~ + @74 + PickUpPennyStraight
+ ~Gender(Player1,FEMALE)~ + @74 + PickUpPennyGay
++ @75 + PennyNews
+ ~!Dead("B!VALER") Global("B!GavinBodyThiefQuest","GLOBAL",4)~ + @5 + PennyRealNews
END
