
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////* FLIRT DIALOG FILE *////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//////////////////////////
// Time of day flirts
//////////////////////////

/* Early Romance */

CHAIN
IF
~Global("B!GavinDuskFlirt","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinDuskFlirt
@0
= @1
DO ~SetGlobal("B!GavinDuskFlirt","GLOBAL",2)~
EXIT

CHAIN
IF
~Global("B!GavinDayFlirt","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinDayFlirt
@2
DO ~SetGlobal("B!GavinDayFlirt","GLOBAL",2)~
EXIT

CHAIN
IF
~Global("B!GavinSunriseFlirt","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinSunriseFlirt
@3
DO ~SetGlobal("B!GavinSunriseFlirt","GLOBAL",2)~
EXIT

CHAIN
IF
~Global("B!GavinDarknessFlirt","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinDarknessFlirt
@4
DO ~SetGlobal("B!GavinDarknessFlirt","GLOBAL",2)~
EXIT

//////////////////////////////////
// Timer Flirts
//////////////////////////////////

APPEND ~B!GAVINJ~

IF
~Global("B!GavinFlirt","GLOBAL",1)~ THEN BEGIN BGavinFlirt
SAY @5
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLovetalk","GLOBAL",10) RandomNum(6,1)~ THEN GOTO BGavinFlirtEarly1
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLovetalk","GLOBAL",10) RandomNum(6,2)~ THEN GOTO BGavinFlirtEarly2
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLovetalk","GLOBAL",10) RandomNum(6,3)~ THEN GOTO BGavinFlirtEarly3
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLovetalk","GLOBAL",10) RandomNum(6,4)~ THEN GOTO BGavinFlirtEarly4
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLovetalk","GLOBAL",10) RandomNum(6,5)~ THEN GOTO BGavinFlirtEarly5
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLovetalk","GLOBAL",10) RandomNum(6,6)~ THEN GOTO BGavinFlirtEarly6
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",9) GlobalLT("B!GavinLovetalk","GLOBAL",24) RandomNum(7,1)~ THEN GOTO BGavinFlirtMiddle1
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",9) GlobalLT("B!GavinLovetalk","GLOBAL",24) RandomNum(7,2)~ THEN GOTO BGavinFlirtMiddle2
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",9) GlobalLT("B!GavinLovetalk","GLOBAL",24) RandomNum(7,3)~ THEN GOTO BGavinFlirtMiddle3
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",9) GlobalLT("B!GavinLovetalk","GLOBAL",24) RandomNum(7,4)~ THEN GOTO BGavinFlirtMiddle4
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",9) GlobalLT("B!GavinLovetalk","GLOBAL",24) RandomNum(7,5)~ THEN GOTO BGavinFlirtMiddle5
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",9) GlobalLT("B!GavinLovetalk","GLOBAL",24) RandomNum(7,6)~ THEN GOTO BGavinFlirtMiddle6
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",9) GlobalLT("B!GavinLovetalk","GLOBAL",24) RandomNum(7,7)~ THEN GOTO BGavinFlirtMiddle8
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",23) GlobalLT("B!GavinLovetalk","GLOBAL",34) RandomNum(7,1)~ THEN GOTO BGavinFlirtMiddle7 /* reclassified due to adult content */
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",23) GlobalLT("B!GavinLovetalk","GLOBAL",34) RandomNum(7,2)~ THEN GOTO BGavinFlirtLate1
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",23) GlobalLT("B!GavinLovetalk","GLOBAL",34) RandomNum(7,3)~ THEN GOTO BGavinFlirtLate2
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",23) GlobalLT("B!GavinLovetalk","GLOBAL",34) RandomNum(7,4)~ THEN GOTO BGavinFlirtLate3
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",23) GlobalLT("B!GavinLovetalk","GLOBAL",34) RandomNum(7,5)~ THEN GOTO BGavinFlirtLate4
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",23) GlobalLT("B!GavinLovetalk","GLOBAL",34) RandomNum(7,6)~ THEN GOTO BGavinFlirtLate5
IF ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLovetalk","GLOBAL",23) GlobalLT("B!GavinLovetalk","GLOBAL",34) RandomNum(7,7)~ THEN GOTO BGavinFlirtLate6
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinSex","GLOBAL",0) RandomNum(4,1)~ THEN GOTO BGavinFlirtCommit1
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinSex","GLOBAL",0) RandomNum(4,2)~ THEN GOTO BGavinFlirtCommit2
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinSex","GLOBAL",0) RandomNum(4,3)~ THEN GOTO BGavinFlirtCommit3
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinSex","GLOBAL",0) RandomNum(4,4)~ THEN GOTO BGavinFlirtCommit4
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,1)~ THEN GOTO BGavinFlirtCommit1
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,2)~ THEN GOTO BGavinFlirtCommit2
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,3)~ THEN GOTO BGavinFlirtCommit3
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,4)~ THEN GOTO BGavinFlirtCommit4
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,5)~ THEN GOTO BGavinFlirtSexy1
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,6)~ THEN GOTO BGavinFlirtSexy2
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,7)~ THEN GOTO BGavinFlirtSexy3
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,8)~ THEN GOTO BGavinFlirtSexy4
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,9)~ THEN GOTO BGavinFlirtSexy5
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(10,10)~ THEN GOTO BGavinFlirtSexy6
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) !Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,1)~ THEN GOTO BGavinFlirtCommit1
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) !Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,2)~ THEN GOTO BGavinFlirtCommit2
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) !Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,3)~ THEN GOTO BGavinFlirtCommit3
IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",33) !Global("B!GavinPCLikedSex","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,4)~ THEN GOTO BGavinFlirtCommit4
END

IF ~~ THEN BEGIN BGavinFlirtEarly1
SAY @6
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly2
SAY @7
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly3
SAY @8
++ @9 + BGavinFlirtEarly3.1
++ @10 + BGavinFlirtEarly3.2
++ @11 + BGavinFlirtEarly3.1
++ @12 + BGavinFlirtEarly3.3
++ @13 + BGavinFlirtEarly3.4
END

IF ~~ THEN BEGIN BGavinFlirtEarly3.1
SAY @14
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly3.2
SAY @15
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly3.3
SAY @16
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly3.4
SAY @17
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly4
SAY @18
++ @19 DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
++ @20 + BGavinFlirtEarly4.1
++ @21 + BGavinFlirtEarly4.2
END

IF ~~ THEN BEGIN BGavinFlirtEarly4.1
SAY @22
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly4.2
SAY @23
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly5
SAY @24
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtEarly6
SAY @25
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle1
SAY @26
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle2
SAY @27
= @28
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle3
SAY @29
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle4
SAY @30
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle5
SAY @31
= @32
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle6
SAY @33
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle8
SAY @34
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN BGavinFlirtMiddle7
SAY @35
++ @36 + BGavinFlirtMiddle7.1
++ @37 + BGavinFlirtMiddle7.2
++ @38 + BGavinFlirtMiddle7.3
+ ~Global("B!PCWantsRose","GLOBAL",0)~ + @39 DO ~SetGlobal("B!PCWantsRose","GLOBAL",1)~ + BGavinFlirtMiddle7.4
+ ~Global("B!PCWantsDaisy","GLOBAL",0)~ + @40  DO ~SetGlobal("B!PCWantsDaisy","GLOBAL",1)~ + BGavinFlirtMiddle7.4
+ ~OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC)~ + @41 + BGavinFlirtMiddle7.5a
+ ~OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + @41 + BGavinFlirtMiddle7.5b
++ @42 + BGavinFlirtMiddle7.6
++ @43 + BGavinFlirtMiddle7.7
++ @44 + BGavinFlirtMiddle7.8
++ @45 + BGavinFlirtMiddle7.9
++ @46  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinFlirtMiddle7.10
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.1
SAY @47
++ @48 + BGavinFlirtMiddle7.1a
++ @49 + BGavinFlirtMiddle7.1b
++ @50 + BGavinFlirtMiddle7.1c
++ @51 + BGavinFlirtMiddle7.1d
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.1a
SAY @52
++ @49 + BGavinFlirtMiddle7.1b
++ @50 + BGavinFlirtMiddle7.1c
++ @51 + BGavinFlirtMiddle7.1d
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.1b
SAY @53
= @54
++ @55 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @56 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.1c
SAY @57
= @58
++ @59 + BGavinFlirtMiddle7.1c.1
++ @60 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.1c.2
++ @61 + BGavinFlirtMiddle7.1c.1
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.1c.1
SAY @62
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.1c.2
SAY @63
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.1d
SAY @64
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.2
SAY @65
++ @66 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @67 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.3
SAY @68
IF ~~ THEN DO ~GiveItemCreate("%tutu_var%MISC18",Player1,0,0,0)~ GOTO BGavinFlirtMiddle7.3A
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.3A
SAY @69
++ @55 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @56 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.content
SAY @70
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.unhappy
SAY @71
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.4
SAY @72
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~Global("B!PCWantsRose","GLOBAL",3)~ THEN BEGIN BGavinFlirtMiddle7.4A
SAY @73
++ @55 DO ~SetGlobal("B!PCWantsRose","GLOBAL",4)~ + BGavinFlirtMiddle7.content
++ @56 DO ~SetGlobal("B!PCWantsRose","GLOBAL",4)~ + BGavinFlirtMiddle7.unhappy
END

IF ~Global("B!PCWantsDaisy","GLOBAL",3)~ THEN BEGIN BGavinFlirtMiddle7.4B
SAY @74
++ @75 DO ~SetGlobal("B!PCWantsDaisy","GLOBAL",4)~ + BGavinFlirtMiddle7.content
++ @76 DO ~SetGlobal("B!PCWantsDaisy","GLOBAL",4)~ + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.5a
SAY @77
= @78 
++ @55 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @56 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.5b
SAY @79
= @78 
++ @55 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @56 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6
SAY @80
+ ~OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC)~ + @41 + BGavinFlirtMiddle7.5a
+ ~OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + @41 + BGavinFlirtMiddle7.5b
++ @43 + BGavinFlirtMiddle7.7
+ ~Global("B!GetNaked","GLOBAL",0) !AreaType(CITY)~ + @81 DO ~SetGlobal("B!GetNaked","GLOBAL",1)~ + BGavinFlirtMiddle7.6a
++ @82 + BGavinFlirtMiddle7.6b
++ @83 + BGavinFlirtMiddle7.6c
++ @84 + BGavinFlirtMiddle7.9
++ @85 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinFlirtMiddle7.10
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6c
SAY @86
++ @87 + BGavinFlirtMiddle7.6c1
++ @88 + BGavinFlirtMiddle7.6c2
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6c2
SAY @89
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6c1
SAY @90
++ @55 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @56 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b
SAY @91
++ @92 + BGavinFlirtMiddle7.6b1
++ @93 + BGavinFlirtMiddle7.6b2
++ @94 + BGavinFlirtMiddle7.6b3
++ @95 + BGavinFlirtMiddle7.6b4
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b4
SAY @96
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b1
SAY @97
IF ~~ THEN GOTO BGavinFlirtMiddle7.7
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b2
SAY @98
IF ~~ THEN GOTO BGavinFlirtMiddle7.7
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3
SAY @99
++ @100 + BGavinFlirtMiddle7.6b3a
++ @101 + BGavinFlirtMiddle7.6b3b
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3a
SAY @102
IF ~~ THEN GOTO BGavinFlirtMiddle7.7
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3b
SAY @103
++ @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6b3b1
++ @105 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinFlirtMiddle7.6b3b2
++ @106 + BGavinFlirtMiddle7.7
++ @107 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinFlirtMiddle7.6b3b3
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3b1
SAY @108
IF ~OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC)~ THEN GOTO BGavinFlirtMiddle7.6b3b1A
IF ~OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ THEN GOTO BGavinFlirtMiddle7.6b3b1B
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3b1A
SAY @109
= @110 
++ @55 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @56 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3b1B
SAY @111
= @110 
++ @55 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @56 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3b2
SAY @112
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6b3b3
SAY @113
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a
SAY @114
++ @115 + BGavinFlirtMiddle7.6a1
++ @116 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a2
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a2
SAY @117
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1
SAY @118
++ @119 + BGavinFlirtMiddle7.6a1A
++ @120 DO ~SetGlobal("B!GavinStrips","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1B
++ @121 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a2
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1B
SAY @122
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~Global("B!GavinStrips","GLOBAL",2)~ THEN BEGIN BGavinFlirtMiddle7.6a1BX
SAY @123
++ @124 DO ~SetGlobal("B!GavinStrips","GLOBAL",3)~ + BGavinFlirtMiddle7.6a1A1
++ @125 DO ~SetGlobal("B!GavinStrips","GLOBAL",3)~ + BGavinFlirtMiddle7.6a1C
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A
SAY @126
++ @127 DO ~SetGlobal("B!GavinStrips","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1B
++ @128 + BGavinFlirtMiddle7.6a2
++ @129 + BGavinFlirtMiddle7.6a1A1
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1C
SAY @130
IF ~~ THEN DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A1
SAY @131
++ @132 + BGavinFlirtMiddle7.6a1A2
++ @133 + BGavinFlirtMiddle7.6a1C
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A2
SAY @134
++ @132 + BGavinFlirtMiddle7.6a1A3
++ @135 + BGavinFlirtMiddle7.6a1C
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A3
SAY @136
= @137
++ @132 + BGavinFlirtMiddle7.6a1A4
++ @138 + BGavinFlirtMiddle7.6a1C
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4
SAY @139
= @140
= @141
= @142
++ @143 + BGavinFlirtMiddle7.6a1A4a
++ @144 + BGavinFlirtMiddle7.6a1A4b
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4a
SAY @145
= @146
++ @147 + BGavinFlirtMiddle7.6a1A4a1
++ @148 + BGavinFlirtMiddle7.6a1A4a1
++ @149 + BGavinFlirtMiddle7.6a1A4a2
++ @150 + BGavinFlirtMiddle7.6a1A4a3
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4b
SAY @151
= @146
++ @147 + BGavinFlirtMiddle7.6a1A4a1
++ @148 + BGavinFlirtMiddle7.6a1A4a1
++ @149 + BGavinFlirtMiddle7.6a1A4a2
++ @150 + BGavinFlirtMiddle7.6a1A4a3
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4a1
SAY @152
++ @153 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1a
++ @154 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1a
++ @155 + BGavinFlirtMiddle7.6a1A4a1a
++ @156 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1b
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4a1a
SAY @157
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4a1b
SAY @158
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4a2
SAY @159
++ @153 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1a
++ @154 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1a
++ @155 + BGavinFlirtMiddle7.6a1A4a1a
++ @156 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1b
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.6a1A4a3
SAY @160
++ @153 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1a
++ @154 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1a
++ @155 + BGavinFlirtMiddle7.6a1A4a1a
++ @156 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinFlirtMiddle7.6a1A4a1b
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.7
SAY @161
++ @75 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinFlirtMiddle7.content
++ @76 + BGavinFlirtMiddle7.unhappy
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.8
SAY @162
= @163
= @164
= @165
++ @166 + BGavinFlirtMiddle7.8a
++ @167 + BGavinFlirtMiddle7.8a
++ @168 + BGavinFlirtMiddle7.8a
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.8a
SAY @169
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.9
SAY @170
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtMiddle7.10
SAY @171
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtLate1
SAY @172
= @173
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtLate2
SAY @174
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtLate3
SAY @175
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtLate4
SAY @176
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtLate5
SAY @177
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtLate6
SAY @178
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtCommit1
SAY @179
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtCommit2
SAY @180
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtCommit3
SAY @181
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtCommit4
SAY @182
++ @183 + BGavinFlirtCommit4.1
++ @184 + BGavinFlirtCommit4.2
++ @185 + BGavinFlirtCommit4.3
++ @186 + BGavinFlirtCommit4.4
END

IF ~~ THEN BEGIN BGavinFlirtCommit4.1
SAY @187
= @188
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtCommit4.2
SAY @189
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtCommit4.3
SAY @190
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtCommit4.4
SAY @191
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtSexy1
SAY @192
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtSexy2
SAY @193
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtSexy3
SAY @194
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtSexy4
SAY @195
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtSexy5
SAY @196
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFlirtSexy6
SAY @197
IF ~~ THEN DO ~SetGlobal("B!GavinFlirt","GLOBAL",0)~ EXIT
END

END

////////////////////////////////////////////* Frequent Flirter Flirts *///////////////////////////////////////////////

///////////////////////
// Friendship Only
///////////////////////

CHAIN
IF WEIGHT #-1 ~Global("B!GavinFriendFlirt1","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavFF1
@198
DO ~SetGlobal("B!GavinFriendFlirt1","GLOBAL",3)~
END
++ @199 EXTERN ~B!GAVINJ~ BGavFF1.1
++ @200 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavFF1.2
++ @201 EXTERN ~B!GAVINJ~ BGavFF1.3
++ @202 EXTERN ~B!GAVINJ~ BGavFF1.4
++ @203 EXTERN ~B!GAVINJ~ BGavFF1.5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavFF1.1
SAY @204
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF1.2
SAY @205
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF1.3
SAY @206
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF1.4
SAY @207
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF1.5
SAY @208
++ @209 + BGavFF1.5a
++ @210 + BGavFF1.5b
END

IF ~~ THEN BEGIN BGavFF1.5a
SAY @211
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF1.5b
SAY @212
IF ~~ THEN EXIT
END
END

CHAIN
IF ~Global("B!GavinFriendFlirt2","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavFF2
@213
DO ~SetGlobal("B!GavinFriendFlirt2","GLOBAL",3)~
END
++ @214 EXTERN ~B!GAVINJ~ BGavFF2.1
++ @215 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ BGavFF2.2
++ @216 EXTERN ~B!GAVINJ~ BGavFF2.3
++ @217 EXTERN ~B!GAVINJ~ BGavFF2.4
++ @218 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavFF2.5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavFF2.1
SAY @219
++ @220 + BGavFF2.6
++ @221 + BGavFF2.7
++ @217 + BGavFF2.4
END

IF ~~ THEN BEGIN BGavFF2.2
SAY @222
++ @220 + BGavFF2.6
++ @221 + BGavFF2.7
++ @217 + BGavFF2.4
END

IF ~~ THEN BEGIN BGavFF2.3
SAY @223
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF2.4
SAY @224
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF2.5
SAY @225
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF2.6
SAY @226
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF2.7
SAY @227
IF ~~ THEN EXIT
END
END

CHAIN
IF ~Global("B!GavinFriendFlirt3","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavFF3
@228
= @229
DO ~SetGlobal("B!GavinFriendFlirt3","GLOBAL",3)~
END
++ @230 EXTERN ~B!GAVINJ~ BGavFF3.1
++ @231 EXTERN ~B!GAVINJ~ BGavFF3.2
++ @232 EXTERN ~B!GAVINJ~ BGavFF3.3
++ @233 EXTERN ~B!GAVINJ~ BGavFF3.4
++ @234 EXTERN ~B!GAVINJ~ BGavFF3.5
++ @235 EXTERN ~B!GAVINJ~ BGavFF3.6

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavFF3.1
SAY @236
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF3.2
SAY @237
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF3.3
SAY @238
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF3.4
SAY @239
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF3.5
SAY @240
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF3.6
SAY @241
IF ~~ THEN EXIT
END
END

CHAIN
IF ~Global("B!GavinFriendFlirt4","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavFF4
@242
DO ~SetGlobal("B!GavinFriendFlirt4","GLOBAL",2)~
END
++ @243 EXTERN ~B!GAVINJ~ BGavFF4.0
++ @244 EXTERN ~B!GAVINJ~ BGavFF4.1
++ @245 EXTERN ~B!GAVINJ~ BGavFF4.2
++ @246 EXTERN ~B!GAVINJ~ BGavFF4.3
++ @247 EXTERN ~B!GAVINJ~ BGavFF4.4
++ @248 EXTERN ~B!GAVINJ~ BGavFF4.5
++ @249 EXTERN ~B!GAVINJ~ BGavFF4.15
+ ~GlobalGT("B!KnowBhaal","GLOBAL",0)~ + @250 EXTERN ~B!GAVINJ~ BGavFF4.16

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavFF4.0
SAY @251
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF4.1
SAY @252
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF4.2
SAY @253
IF ~Gender(Player1,FEMALE)
  ReputationGT(Player1,10)
  CheckStatGT(Player1,12,CHR)
  CheckStatGT(Player1,9,WIS)
  Alignment(Player1,MASK_GOOD)
  !Kit(Player1,ASSASIN)
  !Kit(Player1,BOUNTYHUNTER)
  !Kit(Player1,MAGESCHOOL_NECROMANCER)~ THEN GOTO BGavFF4.6
IF ~Gender(Player1,MALE)~ THEN GOTO BGavFF4.7
IF ~ReputationLT(Player1,11)~ THEN GOTO BGavFF4.8
IF ~CheckStatLT(Player1,13,CHR)~ THEN GOTO BGavFF4.9
IF ~CheckStatLT(Player1,10,WIS)~ THEN GOTO BGavFF4.10
IF ~!Alignment(Player1,MASK_GOOD)~ THEN GOTO BGavFF4.11
IF ~Kit(Player1,ASSASIN)~ THEN GOTO BGavFF4.12
IF ~Kit(Player1,BOUNTYHUNTER)~ THEN GOTO BGavFF4.13
IF ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ THEN GOTO BGavFF4.14
END

IF ~~ THEN BEGIN BGavFF4.6
SAY @254
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceMatch","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",1) SetGlobal("B!GavinFriendOnly","GLOBAL",0) SetGlobal("B!GavinReevaluate","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.7
SAY @255
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.8
SAY @256
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.9
SAY @257
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.10
SAY @258
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.11
SAY @259
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.12
SAY @260
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.13
SAY @261
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavFF4.14
SAY @262
IF ~~ THEN DO ~SetGlobal("B!GavinReevaluate","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN BGavFF4.3
SAY @263
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF4.4
SAY @264
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF4.5
SAY @265
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF4.15
SAY @266
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFF4.16
SAY @267
IF ~~ THEN EXIT
END
END

///////////////////////
// Early Pre-Commitment
///////////////////////

CHAIN
IF ~Global("B!GavinEarlyFlirt1","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavEF1
@268
DO ~SetGlobal("B!GavinEarlyFlirt1","GLOBAL",3)~
END
++ @10 EXTERN ~B!GAVINJ~ BGavEF1.1
++ @269 EXTERN ~B!GAVINJ~ BGavEF1.2
++ @270 EXTERN ~B!GAVINJ~ BGavEF1.3
++ @271 EXTERN ~B!GAVINJ~ BGavEF1.4
++ @272 EXTERN ~B!GAVINJ~ BGavEF1.5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavEF1.1
SAY @273
= @274
= @275
++ @276 + BGavEF1.6
++ @277 + BGavEF1.7
++ @278 + BGavEF1.8
++ @279 + BGavEF1.9
END

IF ~~ THEN BEGIN BGavEF1.2
SAY @280
= @274
= @275
++ @276 + BGavEF1.6
++ @277 + BGavEF1.7
++ @278 + BGavEF1.8
++ @279 + BGavEF1.9
END

IF ~~ THEN BEGIN BGavEF1.3
SAY @281
= @274
= @275
++ @276 + BGavEF1.6
++ @277 + BGavEF1.7
++ @278 + BGavEF1.8
++ @279 + BGavEF1.9
END

IF ~~ THEN BEGIN BGavEF1.4
SAY @282
= @274
= @275
++ @276 + BGavEF1.6
++ @277 + BGavEF1.7
++ @278 + BGavEF1.8
++ @279 + BGavEF1.9
END

IF ~~ THEN BEGIN BGavEF1.5
SAY @283
= @274
= @275
++ @276 + BGavEF1.6
++ @277 + BGavEF1.7
++ @278 + BGavEF1.8
++ @279 + BGavEF1.9
END

IF ~~ THEN BEGIN BGavEF1.6
SAY @235
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavEF1.7
SAY @284
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavEF1.8
SAY @285
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavEF1.9
SAY @286
IF ~~ THEN EXIT
END
END

CHAIN
IF ~Global("B!GavinEarlyFlirt2","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavEF2
@287
DO ~SetGlobal("B!GavinEarlyFlirt2","GLOBAL",3)~
= @288
END
++ @289 + BGavEF2.3
++ @290 + BGavEF2.2
++ @291 + BGavEF2.1
++ @292 + BGavEF2.1

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavEF2.1
SAY @293
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavEF2.2
SAY @294
++ @295 + BGavEF2.4
++ @296 + BGavEF2.5
++ @297 + BGavEF2.6
++ @298 + BGavEF2.7
END

IF ~~ THEN BEGIN BGavEF2.3
SAY @299
++ @295 + BGavEF2.4
++ @296 + BGavEF2.5
++ @297 + BGavEF2.6
++ @298 + BGavEF2.7
END

IF ~~ THEN BEGIN BGavEF2.4
SAY @300
++ @301 + BGavEF2.5
++ @297 + BGavEF2.6
++ @298 + BGavEF2.7
END

IF ~~ THEN BEGIN BGavEF2.5
SAY @302
= @303
= @304
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavEF2.6
SAY @305
= @306
++ @307 + BGavEF2.5
++ @308 + BGavEF2.7
END

IF ~~ THEN BEGIN BGavEF2.7
SAY @309
IF ~~ THEN EXIT
END
END

CHAIN
IF ~Global("B!GavinPillow","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavEF3
@310
DO ~SetGlobal("B!GavinPillow","GLOBAL",2)~
END
++ @311 EXTERN ~B!GAVINJ~ BGavEF3.3
++ @312 EXTERN ~B!GAVINJ~ BGavEF3.2
++ @313 EXTERN ~B!GAVINJ~ BGavEF3.1

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavEF3.1
SAY @314
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavEF3.2
SAY @315
++ @316 + BGavEF3.4
++ @317 + BGavEF3.5
++ @318 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinFriendOnly","GLOBAL",1)~ + BGavEF3.6
END

IF ~~ THEN BEGIN BGavEF3.3
SAY @319
++ @316 + BGavEF3.4
++ @317 + BGavEF3.5
++ @318 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinFriendOnly","GLOBAL",1)~ + BGavEF3.6
END

IF ~~ THEN BEGIN BGavEF3.4
SAY @320
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavEF3.5
SAY @321
= @322
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavEF3.6
SAY @323
IF ~~ THEN DO ~RestParty()~ EXIT
END
END

///////////////////////////////////
// Late Pre-Commitment
///////////////////////////////////

/* Gavin's Laundry */

CHAIN
IF
~Global("B!GavinLaundry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinLaundry
@324
DO ~SetGlobal("B!GavinLaundry","GLOBAL",2)~
END
++ @325 EXTERN ~B!GAVINJ~ BGavinLaundry1
++ @326 EXTERN ~B!GAVINJ~ BGavinLaundry2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinLaundry1
SAY @327
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2
SAY @328
++ @329 + BGavinLaundry2a
++ @330 + BGavinLaundry2b
++ @331 + BGavinLaundry2c
END

IF ~~ THEN BEGIN BGavinLaundry2a
SAY @332
++ @333 + BGavinLaundry2a.1
++ @334 + BGavinLaundry2a.1b
++ @335 DO ~SetGlobal("B!Laundry","GLOBAL",1)~ + BGavinLaundry2a.1a
END

IF ~~ THEN BEGIN BGavinLaundry2a.1
SAY @336
++ @337 DO ~SetGlobal("B!Laundry","GLOBAL",1)~ + BGavinLaundry2a.1a
++ @338 + BGavinLaundry2a.1b
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a
SAY @339
= @340
= @341
= @342
++ @343 + BGavinLaundry2a.1a.1
++ @344 + BGavinLaundry2a.1a.2
++ @345 + BGavinLaundry2a.1a.3
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a.1
SAY @346
= @347
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a.2
SAY @348
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a.3
SAY @349
++ @350 + BGavinLaundry2a.1a.3a
++ @351 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinLaundry2a.1a.3b
++ @352 + BGavinLaundry2a.1a.3c
++ @353 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinLaundry2a.1a.3d
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a.3a
SAY @354
= @347
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a.3b
SAY @355
= @347
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a.3c
SAY @356
= @357
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2a.1a.3d
SAY @358
= @347
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2a.1b
SAY @359
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN BGavinLaundry2b
SAY @360
++ @333 + BGavinLaundry2a.1
++ @334 + BGavinLaundry2a.1b
++ @335 DO ~SetGlobal("B!Laundry","GLOBAL",1)~ + BGavinLaundry2a.1a
END

IF ~~ THEN BEGIN BGavinLaundry2c
SAY @361
++ @333 + BGavinLaundry2a.1
++ @334 + BGavinLaundry2a.1b
++ @335 DO ~SetGlobal("B!Laundry","GLOBAL",1)~ + BGavinLaundry2a.1a
END

END

/* Gavin's Bath */

CHAIN
IF
~Global("B!GavinBath","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinBath
@362
DO ~SetGlobal("B!GavinBath","GLOBAL",2)~
END
++ @363 EXTERN ~B!GAVINJ~ BGavinBath1
++ @364 EXTERN ~B!GAVINJ~ BGavinBath2
++ @365 EXTERN ~B!GAVINJ~ BGavinBath3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinBath1
SAY @366
= @367
++ @368 + BGavinBath1a
++ @369 + BGavinBath1b
++ @370 + BGavinBath1c
++ @371 + BGavinBath4
END

IF ~~ THEN BEGIN BGavinBath1a
SAY @372
++ @373 + BGavinBath1a.1
++ @374 + BGavinBath1a.2
++ @375 + BGavinBath1a.3
END

IF ~~ THEN BEGIN BGavinBath1a.1
SAY @376
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath1a.2
SAY @377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath1a.3
SAY @378
= @379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath1b
SAY @380
++ @373 + BGavinBath1a.1
++ @374 + BGavinBath1a.2
++ @375 + BGavinBath1a.3
END

IF ~~ THEN BEGIN BGavinBath1c
SAY @381
++ @373 + BGavinBath1a.1
++ @374 + BGavinBath1a.2
++ @382 + BGavinBath1a.3
END

IF ~~ THEN BEGIN BGavinBath2
SAY @383
= @384
++ @385 + BGavinBath2a
++ @386 + BGavinBath2b
++ @387 + BGavinBath2c
++ @371 + BGavinBath4
END

IF ~~ THEN BEGIN BGavinBath2a
SAY @388
= @389
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath2b
SAY @390
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath2c
SAY @391
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath4
SAY @392
++ @393 + BGavinBath4a
++ @394 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavinBath4b
END

IF ~~ THEN BEGIN BGavinBath4a
SAY @395
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath4b
SAY @396
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3
SAY @397
++ @398 + BGavinBath1
++ @399 + BGavinBath2
++ @400 + BGavinBath3A
END

IF ~~ THEN BEGIN BGavinBath3A
SAY @401
= @402
++ @398 + BGavinBath1
++ @399 + BGavinBath2
++ @403 + BGavinBath3Aa
++ @404 + BGavinBath3Ab
++ @405 + BGavinBath3Ac
END

IF ~~ THEN BEGIN BGavinBath3Aa
SAY @406
+ ~OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF)~ + @407 + BGavinBath3Aa.1
+ ~OR(4) Race(Player1,HALFORC) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @407 + BGavinBath3Aa.2
++ @408 + BGavinBath3Aa.3
END

IF ~~ THEN BEGIN BGavinBath3Aa.1
SAY @409
= @410
++ @411 + BGavinBath3Aa.1a
++ @412 + BGavinBath3Aa.1b
+ ~Global("B!Laundry","GLOBAL",1)~ + @413 + BGavinBath3Aa.1a.3
+ ~Global("B!Laundry","GLOBAL",0)~ + @413 + BGavinBath3Aa.1c
++ @414 + BGavinBath3Aa.1d
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a
SAY @415
++ @416 + BGavinBath3Aa.1a.1
++ @417 + BGavinBath3Aa.1a.2
+ ~Global("B!Laundry","GLOBAL",1)~ + @418 + BGavinBath3Aa.1a.3
+ ~Global("B!Laundry","GLOBAL",0)~ + @418 + BGavinBath3Aa.1c
+ ~Global("B!Laundry","GLOBAL",1)~ + @413 + BGavinBath3Aa.1a.3
+ ~Global("B!Laundry","GLOBAL",0)~ + @413 + BGavinBath3Aa.1c
++ @414 + BGavinBath3Aa.1d
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.1
SAY @419
= @420
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.2
SAY @421
++ @422 + BGavinBath3Aa.1a.1
+ ~Global("B!Laundry","GLOBAL",1)~ + @423 + BGavinBath3Aa.1a.3
+ ~Global("B!Laundry","GLOBAL",0)~ + @423 + BGavinBath3Aa.1c
++ @424 + BGavinBath3Aa.1d
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3
SAY @425
++ @426 + BGavinBath3Aa.1a.3a
++ @427 + BGavinBath3Aa.1a.3b
++ @428 + BGavinBath3Aa.1a.3c
++ @429 + BGavinBath3Aa.1a.3a
++ @430 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3d
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a
SAY @431
= @432
++ @433 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1
++ @434 + BGavinBath3Aa.1a.3a.2
++ @435 + BGavinBath3Aa.1a.3a.3
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.3
SAY @436
++ @437 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.3a
++ @438 + BGavinBath3Aa.1a.3a.3b
++ @439 + BGavinBath3Aa.1a.3a.3c
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.3a
SAY @440
= @441
= @442
= @443
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.3b
SAY @444
= @441
= @442
= @443
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.3c
SAY @445
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.2
SAY @446
= @447
++ @448 + BGavinBath3Aa.1a.3a.2a
++ @449 + BGavinBath3Aa.1a.3a.2a
++ @450 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.2b
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.2a
SAY @451
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.2b
SAY @452
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1
SAY @453
= @454
= @455
= @456
= @457
++ @458 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a
++ @459 + BGavinBath3Aa.1a.3a.1b
++ @460 + BGavinBath3Aa.1a.3a.1c
++ @461 + BGavinBath3Aa.1a.3a.1d
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a
SAY @462
++ @463 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.1
++ @464  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4a
++ @465 + BGavinBath3Aa.1a.3a.1a.3
++ @466 + BGavinBath3Aa.1a.3a.1a.4
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a.4
SAY @467
= @468
= @469
++ @470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4a
++ @471 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4b
++ @472 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4c
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a.4a
SAY @473
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a.4b
SAY @474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a.4c
SAY @475
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a.3
SAY @476
= @477
= @469
++ @470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4a
++ @471 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4b
++ @478 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.3a
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a.3a
SAY @479
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1a.1
SAY @480
= @477
= @469
++ @470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4a
++ @471 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4b
++ @481 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.3a
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1b
SAY @482
= @483
++ @470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4a
++ @471 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4b
++ @478 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.3a
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1d
SAY @484
= @483
++ @470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4a
++ @471 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4b
++ @485 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.3a
END


IF ~~ THEN BEGIN BGavinBath3Aa.1a.3a.1c
SAY @486
= @469
++ @470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4a
++ @471 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.4b
++ @487 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1a.3a
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3b
SAY @488
++ @437 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.3a
++ @438 + BGavinBath3Aa.1a.3a.3b
++ @439 + BGavinBath3Aa.1a.3a.3c
END


IF ~~ THEN BEGIN BGavinBath3Aa.1a.3c
SAY @489
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1a.3d
SAY @490
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.1c
SAY @491
++ @492 + BGavinBath3Aa.1a.3a
++ @493 + BGavinBath3Aa.1a.3b
++ @494 + BGavinBath3Aa.1a.3c
++ @495 + BGavinBath3Aa.1a.3a
++ @430 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3d
END

IF ~~ THEN BEGIN BGavinBath3Aa.1d
SAY @496
++ @492 + BGavinBath3Aa.1a.3a
++ @493 + BGavinBath3Aa.1a.3b
++ @494 + BGavinBath3Aa.1a.3c
++ @495 + BGavinBath3Aa.1a.3a
++ @430 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3d
END

IF ~~ THEN BEGIN BGavinBath3Aa.1b
SAY @497
++ @422 + BGavinBath3Aa.1a.1
+ ~Global("B!Laundry","GLOBAL",1)~ + @423 + BGavinBath3Aa.1a.3
+ ~Global("B!Laundry","GLOBAL",0)~ + @423 + BGavinBath3Aa.1c
++ @424 + BGavinBath3Aa.1d
END

IF ~~ THEN BEGIN BGavinBath3Aa.2
SAY @498
= @410
++ @411 + BGavinBath3Aa.1a
++ @412 + BGavinBath3Aa.1b
+ ~Global("B!Laundry","GLOBAL",1)~ + @413 + BGavinBath3Aa.1a.3
+ ~Global("B!Laundry","GLOBAL",0)~ + @413 + BGavinBath3Aa.1c
++ @414 + BGavinBath3Aa.1d
END

IF ~~ THEN BGavinBath3Aa.3
SAY @499
= @500
= @501
= @502
= @503
++ @504 + BGavinBath3Aa.3a
++ @505 + BGavinBath3Aa.3b
++ @506 + BGavinBath3Aa.3c
++ @507 + BGavinBath3Aa.3d
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a
SAY @508
= @410
+ ~Global("B!Laundry","GLOBAL",1)~ + @509 + BGavinBath3Aa.3a.1
+ ~Global("B!Laundry","GLOBAL",0)~ + @509 + BGavinBath3Aa.3a.2
++ @510 + BGavinBath3Aa.3a.2
++ @511 + BGavinBath3Aa.3a.4
++ @512 + BGavinBath3Aa.3a.5
++ @513 + BGavinBath3Aa.3a.1a.1
++ @514 + BGavinBath3Aa.3a.1b.1
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1
SAY @515
++ @516 + BGavinBath3Aa.3a.1a
++ @517 + BGavinBath3Aa.3a.1b
++ @518 + BGavinBath3Aa.3a.1a.1
++ @519 + BGavinBath3Aa.3a.1a
++ @428 + BGavinBath3Aa.1a.3c
++ @520 + BGavinBath3Aa.3a.1a.1
++ @430 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.3a.1c
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1a
SAY @521
++ @522 + BGavinBath3Aa.3a.1a.1
++ @523 + BGavinBath3Aa.3a.1a.1
++ @524 + BGavinBath3Aa.3a.1a.2
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1a.1
SAY @431
= @432
++ @433 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.1
++ @434 + BGavinBath3Aa.3a.1a.1a
++ @435 + BGavinBath3Aa.1a.3a.3
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1a.1a
SAY @525
= @447
++ @448 + BGavinBath3Aa.1a.3a.2a
++ @449 + BGavinBath3Aa.1a.3a.2a
++ @450 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.1a.3a.2b
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1a.2
SAY @526
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1b
SAY @527
++ @528 + BGavinBath3Aa.3a.1a.1
++ @529 + BGavinBath3Aa.3a.1b.1
++ @530 + BGavinBath3Aa.3a.1b.2
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1b.1
SAY @531
= @532
= @533
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1b.2
SAY @534
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.1c
SAY @535
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.2
SAY @536
++ @537 + BGavinBath3Aa.3a.1a
++ @538 + BGavinBath3Aa.3a.1b
++ @539 + BGavinBath3Aa.3a.1a.1
++ @540 + BGavinBath3Aa.3a.1a
++ @541 + BGavinBath3Aa.1a.3c
++ @542 + BGavinBath3Aa.3a.1a.1
++ @430 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.3a.1c
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.4
SAY @497
++ @422 + BGavinBath3Aa.1a.1
+ ~Global("B!Laundry","GLOBAL",1)~ + @423 + BGavinBath3Aa.3a.1
+ ~Global("B!Laundry","GLOBAL",0)~ + @423 + BGavinBath3Aa.3a.2
++ @543 + BGavinBath3Aa.3a.4a
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.4a
SAY @544
++ @545 + BGavinBath3Aa.1a.3a
++ @546 + BGavinBath3Aa.3a.1a.1
++ @494 + BGavinBath3Aa.1a.3c
++ @547 + BGavinBath3Aa.3a.1a.1
++ @430 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavinBath3Aa.3a.1c
END

IF ~~ THEN BEGIN BGavinBath3Aa.3a.5
SAY @548
++ @522 + BGavinBath3Aa.3a.1a.1
++ @523 + BGavinBath3Aa.3a.1a.1
++ @524 + BGavinBath3Aa.3a.1a.2
END

IF ~~ THEN BEGIN BGavinBath3Aa.3b
SAY @549
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinBath3Aa.3c
SAY @550
= @410
+ ~Global("B!Laundry","GLOBAL",1)~ + @509 + BGavinBath3Aa.3a.1
+ ~Global("B!Laundry","GLOBAL",0)~ + @509 + BGavinBath3Aa.3a.2
++ @510 + BGavinBath3Aa.3a.2
++ @511 + BGavinBath3Aa.3a.4
++ @512 + BGavinBath3Aa.3a.5
++ @513 + BGavinBath3Aa.3a.1a.1
++ @514 + BGavinBath3Aa.3a.1b.1
END

IF ~~ THEN BEGIN BGavinBath3Aa.3d
SAY @551
= @552
+ ~Global("B!Laundry","GLOBAL",1)~ + @553 + BGavinBath3Aa.3a.1
+ ~Global("B!Laundry","GLOBAL",0)~ + @553 + BGavinBath3Aa.3a.2
++ @554 + BGavinBath3Aa.3a.2
++ @511 + BGavinBath3Aa.3a.4
++ @512 + BGavinBath3Aa.3a.5
++ @513 + BGavinBath3Aa.3a.1a.1
++ @555 + BGavinBath3Aa.3a.1b.1
END

IF ~~ THEN BGavinBath3Ab
SAY @556
= @557
= @558
= @559
= @503
++ @504 + BGavinBath3Aa.3a
++ @505 + BGavinBath3Aa.3b
++ @506 + BGavinBath3Aa.3c
++ @507 + BGavinBath3Aa.3d
END

IF ~~ THEN BGavinBath3Ac
SAY @556
= @557
= @558
= @559
= @560
++ @504 + BGavinBath3Aa.3a
++ @505 + BGavinBath3Aa.3b
++ @506 + BGavinBath3Aa.3c
++ @507 + BGavinBath3Aa.3d
END

END

CHAIN
IF
~Global("B!GavinLateFlirt1","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavLF1
@561
DO ~SetGlobal("B!GavinLateFlirt1","GLOBAL",3)~
END
++ @562 EXTERN ~B!GAVINJ~ BGavLF1.1
++ @563 EXTERN ~B!GAVINJ~ BGavLF1.2
++ @564 EXTERN ~B!GAVINJ~ BGavLF1.3
++ @565 EXTERN ~B!GAVINJ~ BGavLF1.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLF1.1
SAY @566 
++ @567 + BGavLF1.5
++ @568 + BGavLF1.6
++ @569 + BGavLF1.7
++ @570 + BGavLF1.8
END

IF ~~ THEN BEGIN BGavLF1.2
SAY @571 
++ @567 + BGavLF1.5
++ @568 + BGavLF1.6
++ @569 + BGavLF1.7
++ @570 + BGavLF1.8
END

IF ~~ THEN BEGIN BGavLF1.3
SAY @572 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF1.4
SAY @573 
++ @567 + BGavLF1.5
++ @568 + BGavLF1.6
++ @569 + BGavLF1.7
++ @570 + BGavLF1.8
END

IF ~~ THEN BEGIN BGavLF1.5
SAY @574 
= @575
++ @576 + BGavLF1.9
++ @577 + BGavLF1.10
++ @578 + BGavLF1.11
++ @579 + BGavLF1.12
END

IF ~~ THEN BEGIN BGavLF1.6
SAY @580
++ @576 + BGavLF1.9
++ @577 + BGavLF1.10
++ @578 + BGavLF1.11
++ @579 + BGavLF1.12
END

IF ~~ THEN BEGIN BGavLF1.7
SAY @581 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF1.8
SAY @582
++ @576 + BGavLF1.9
++ @577 + BGavLF1.10
++ @578 + BGavLF1.11
++ @579 + BGavLF1.12
END

IF ~~ THEN BEGIN BGavLF1.9
SAY @583
= @584
= @585 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF1.10
SAY @586 
++ @587 + BGavLF1.13
++ @588 + BGavLF1.14
++ @589 + BGavLF1.9
END

IF ~~ THEN BEGIN BGavLF1.11
SAY @590 
++ @587 + BGavLF1.13
++ @588 + BGavLF1.14
++ @589 + BGavLF1.9
END

IF ~~ THEN BEGIN BGavLF1.12
SAY @591 
++ @587 + BGavLF1.13
++ @588 + BGavLF1.14
++ @589 + BGavLF1.9
END

IF ~~ THEN BEGIN BGavLF1.13
SAY @592 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF1.14
SAY @593 
= @594
= @595
IF ~~ THEN EXIT
END
END

CHAIN
IF
~Global("B!GavinLateFlirt2","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavLF2
@596
DO ~SetGlobal("B!GavinLateFlirt2","GLOBAL",3)~
END
++ @597 EXTERN ~B!GAVINJ~ BGavLF2.1
++ @598 EXTERN ~B!GAVINJ~ BGavLF2.2
++ @599 EXTERN ~B!GAVINJ~ BGavLF2.3
++ @600 EXTERN ~B!GAVINJ~ BGavLF2.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLF2.1
SAY @601
++ @602 + BGavLF2.5
++ @603 + BGavLF2.6
+ ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ + @604 + BGavLF2.7
+ ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ + @605 + BGavLF2.8
+ ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ + @606 + BGavLF2.9
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @607 + BGavLF2.10
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @608 + BGavLF2.7
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @609 + BGavLF2.11
+ ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ + @610 + BGavLF2.12
+ ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ + @611 + BGavLF2.8
+ ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ + @612 + BGavLF2.7
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @613 + BGavLF2.8
++ @614 + BGavLF2.13
END

IF ~~ THEN BEGIN BGavLF2.2
SAY @615
++ @602 + BGavLF2.5
++ @603 + BGavLF2.6
+ ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ + @604 + BGavLF2.7
+ ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ + @605 + BGavLF2.8
+ ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ + @606 + BGavLF2.9
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @607 + BGavLF2.10
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @608 + BGavLF2.7
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @609 + BGavLF2.11
+ ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ + @610 + BGavLF2.12
+ ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ + @611 + BGavLF2.8
+ ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ + @612 + BGavLF2.7
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @613 + BGavLF2.8
++ @614 + BGavLF2.13
END

IF ~~ THEN BEGIN BGavLF2.3
SAY @616
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.4
SAY @617
++ @602 + BGavLF2.5
++ @603 + BGavLF2.6
+ ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ + @604 + BGavLF2.7
+ ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ + @605 + BGavLF2.8
+ ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ + @606 + BGavLF2.9
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @607 + BGavLF2.10
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @608 + BGavLF2.7
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @609 + BGavLF2.11
+ ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ + @610 + BGavLF2.12
+ ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ + @611 + BGavLF2.8
+ ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ + @612 + BGavLF2.7
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @613 + BGavLF2.8
++ @614 + BGavLF2.13
END

IF ~~ THEN BEGIN BGavLF2.5
SAY @618
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.6
SAY @619
= @620
= @621
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.7
SAY @622
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.8
SAY @623
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.9
SAY @624
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.10
SAY @625
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.11
SAY @626
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.12
SAY @627
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLF2.13
SAY @628
IF ~~ THEN EXIT
END
END

CHAIN
IF
~Global("B!GavinCommitFlirt1","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavCF1
@629
DO ~SetGlobal("B!GavinCommitFlirt1","GLOBAL",3)~
END
++ @630 EXTERN ~B!GAVINJ~ BGavCF1.1
++ @631 EXTERN ~B!GAVINJ~ BGavCF1.2
++ @632 EXTERN ~B!GAVINJ~ BGavCF1.3
++ @633 EXTERN ~B!GAVINJ~ BGavCF1.2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavCF1.1
SAY @634
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavCF1.2
SAY @635
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavCF1.3
SAY @636
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavCF1.4
SAY ~~
IF ~~ THEN EXIT
END
END

CHAIN
IF
~Global("B!GavinCommitFlirt2","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavCF2
@638
DO ~SetGlobal("B!GavinCommitFlirt2","GLOBAL",2)~
END
++ @639  EXTERN ~B!GAVINJ~ BGavCF2.1
++ @640 EXTERN ~B!GAVINJ~ BGavCF2.2
++ @641 EXTERN ~B!GAVINJ~ BGavCF2.3
++ @642 EXTERN ~B!GAVINJ~ BGavCF2.4
++ @643 EXTERN ~B!GAVINJ~ BGavCF2.5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavCF2.1
SAY @644
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavCF2.2
SAY @645
++ @646 + BGavCF2.3a
++ @647 + BGavCF2.3b
END

IF ~~ THEN BEGIN BGavCF2.3
SAY @648
++ @649 + BGavCF2.3a
++ @647 + BGavCF2.3b
END

IF ~~ THEN BEGIN BGavCF2.3a
SAY @650
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavCF2.3b
SAY @651
= @652
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavCF2.4
SAY @653
++ @649 + BGavCF2.3a
++ @647 + BGavCF2.3b
END

IF ~~ THEN BEGIN BGavCF2.5
SAY @654
= @653
++ @649 + BGavCF2.3a
++ @647 + BGavCF2.3b
END
END

CHAIN
IF
~Global("B!GavinCommitFlirt3","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavCF3
@655
DO ~SetGlobal("B!GavinCommitFlirt3","GLOBAL",3)~
END
++ @656 EXTERN ~B!GAVINJ~ BGavCF3.1
++ @657 EXTERN ~B!GAVINJ~ BGavCF3.2
++ @658 EXTERN ~B!GAVINJ~ BGavCF3.3
++ @659 EXTERN ~B!GAVINJ~ BGavCF3.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavCF3.1
SAY @660
= @661
+ ~NumInPartyLT(3)~ + @662 + BGavCF3.5
+ ~!NumInPartyLT(3)~ + @662 + BGavCF3.6
++ @663 + BGavCF3.7
++ @664 + BGavCF3.8
++ @665 + BGavCF3.9
END

IF ~~ THEN BEGIN BGavCF3.2
SAY @666
= @661
+ ~NumInPartyLT(3)~ + @662 + BGavCF3.5
+ ~!NumInPartyLT(3)~ + @662 + BGavCF3.6
++ @663 + BGavCF3.7
++ @664 + BGavCF3.8
++ @665 + BGavCF3.9
END

IF ~~ THEN BEGIN BGavCF3.3
SAY @667
= @661
+ ~NumInPartyLT(3)~ + @662 + BGavCF3.5
+ ~!NumInPartyLT(3)~ + @662 + BGavCF3.6
++ @663 + BGavCF3.7
++ @664 + BGavCF3.8
++ @665 + BGavCF3.9
END

IF ~~ THEN BEGIN BGavCF3.4
SAY @668
= @661
+ ~NumInPartyLT(3)~ + @662 + BGavCF3.5
+ ~!NumInPartyLT(3)~ + @662 + BGavCF3.6
++ @663 + BGavCF3.7
++ @664 + BGavCF3.8
++ @665 + BGavCF3.9
END

IF ~~ THEN BEGIN BGavCF3.5
SAY @669
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavCF3.6
SAY @670
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavCF3.7
SAY @671
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavCF3.8
SAY @672
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavCF3.9
SAY @673
IF ~~ THEN EXIT
END
END