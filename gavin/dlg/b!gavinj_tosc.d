// Durlyle (TSC)

ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 35 END BEGIN 3 END
~SetGlobal("B!DurlyleInterest","GLOBAL",1)~

ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 37 END BEGIN 0 END
~SetGlobal("B!DurlyleInterest","GLOBAL",1)~

ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 40 END BEGIN 1 END
~SetGlobal("B!DurlyleInterest","GLOBAL",1)~

ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 43 END BEGIN 1 END
~SetGlobal("B!DurlyleInterest","GLOBAL",1)~

ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 58 END BEGIN END
~SetGlobal("B!DurlyleKiss","GLOBAL",1)~

ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 59 END BEGIN END
~SetGlobal("B!DurlyleKiss","GLOBAL",1)~

ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 60 END BEGIN END
~SetGlobal("B!DurlyleKiss","GLOBAL",1)~


APPEND ~B!GAVINJ~

IF ~Global("B!GavinUlgothBeard","GLOBAL",1)~ THEN BEGIN BWelcomeToUlgothsBeard
SAY @0
= @1
++ @2 DO ~SetGlobal("B!GavinUlgothBeard","GLOBAL",2) IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BWhereDoTheyLive
++ @3DO ~SetGlobal("B!GavinUlgothBeard","GLOBAL",2)~ + BYourParentsNotThisTrip
+ ~GlobalGT("B!GavinLove","GLOBAL",10)~ + @4 DO ~SetGlobal("B!GavinUlgothBeard","GLOBAL",2)~ + BYourParentsHellsNo
+ ~GlobalLT("B!GavinLove","GLOBAL",11)~ + @4 DO ~SetGlobal("B!GavinUlgothBeard","GLOBAL",2) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BYourParentsHellsNo
END

IF ~~ THEN BEGIN BWhereDoTheyLive
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BYourParentsNotThisTrip
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BYourParentsHellsNo
SAY @7
IF ~~ THEN EXIT
END

/* Durlyle */

IF ~Global("B!DurlyleInterest","GLOBAL",2)~ THEN BInterestedInDurlyle
SAY @8
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @9 + BInterest1
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @9 + BInterest2
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @9 + BInterest3
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @9 + BInterest4
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @9 + BInterest5
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @9 + BInterest6
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @10 + BInterest7
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @10 + BInterest8
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @10 + BInterest9
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @10 + BInterest10
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @10 + BInterest11
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @10 + BInterest12
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @11 + BInterest13
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @11 + BInterest14
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @11 + BInterest15
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @11 + BInterest16
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @11 + BInterest17
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @11 + BInterest18
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @12 + BInterest13
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @12 + BInterest14
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @13 + BInterest15
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @12 + BInterest16
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @12 + BInterest17
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @12 + BInterest18
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @14 + BInterest1
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @14 + BInterest2
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @14 + BInterest3
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @14 + BInterest4
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @14 + BInterest5
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @14 + BInterest6
++ @15 + BInterest19
END

IF ~~ THEN BEGIN BInterest19
SAY @16
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest1
SAY @17
++ @18 + BInterest1a
++ @19 + BInterest1b
END

IF ~~ THEN BEGIN BInterest1a
SAY @20
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest1b
SAY @21
++ @22 + BInterest1b1
++ @23 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest1b2
END

IF ~~ THEN BEGIN BInterest1b1
SAY @24
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest1b2
SAY @25
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest2
SAY @26
++ @18 + BInterest2a
++ @19 + BInterest2b
END

IF ~~ THEN BEGIN BInterest2a
SAY @27
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest2b
SAY @21
++ @22 + BInterest2b1
++ @23  DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest1b2
END

IF ~~ THEN BEGIN BInterest2b1
SAY @28
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest3
SAY @29
++ @18 + BInterest3a
++ @19 + BInterest3b
END

IF ~~ THEN BEGIN BInterest3a
SAY @30
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest3b
SAY @21
++ @22 + BInterest3b1
++ @31 + BInterest3b2
END

IF ~~ THEN BEGIN BInterest3b1
SAY @32
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest3b2
SAY @33
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest4
SAY @29
++ @18 + BInterest4a
++ @19 + BInterest4b
END

IF ~~ THEN BEGIN BInterest4a
SAY @34
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest4b
SAY @21
++ @22 + BInterest4b1
++ @23 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest6b2
END

IF ~~ THEN BEGIN BInterest4b1
SAY @35
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest5
SAY @36
++ @18 + BInterest5a
++ @19 + BInterest5b
END

IF ~~ THEN BEGIN BInterest5a
SAY @37
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest5b
SAY @21
++ @22 + BInterest5b1
++ @23 + BInterest6b2
END

IF ~~ THEN BEGIN BInterest5b1
SAY @38
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest6
SAY @39
++ @40 + BInterest6a
++ @19 + BInterest6b
END

IF ~~ THEN BEGIN BInterest6a
SAY @41
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest6b
SAY @21
++ @22 + BInterest6b1
++ @23 + BInterest6b2
END

IF ~~ THEN BEGIN BInterest6b1
SAY @42
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest6b2
SAY @43
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END


IF ~~ THEN BEGIN BInterest7
SAY @44
++ @45 + BInterest7a
++ @46 + BInterest7b
END

IF ~~ THEN BEGIN BInterest7a
SAY @47
++ @48 + BInterest7a1
++ @49 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest7a2
END

IF ~~ THEN BEGIN BInterest7a1
SAY @36
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest7a2
SAY @50
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest7b
SAY @51
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest8
SAY @52
++ @45 + BInterest8a
++ @46 + BInterest8b
END

IF ~~ THEN BEGIN BInterest8a
SAY @47
++ @48 + BInterest8a1
++ @49 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest8a2
END

IF ~~ THEN BEGIN BInterest8a1
SAY @53
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest8a2
SAY @54
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest8b
SAY @55
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest9
SAY @52
++ @45 + BInterest9a
++ @46 + BInterest9b
END

IF ~~ THEN BEGIN BInterest9a
SAY @47
++ @48 + BInterest9a1
++ @49 + BInterest9a2
END

IF ~~ THEN BEGIN BInterest9a1
SAY @56
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest9a2
SAY @57
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest9b
SAY @58
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest10
SAY @44
++ @45 + BInterest10a
++ @46 + BInterest10b
END

IF ~~ THEN BEGIN BInterest10a
SAY @47
++ @48 + BInterest10a1
++ @49 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest10a2
END

IF ~~ THEN BEGIN BInterest10a1
SAY @59
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest10a2
SAY @60
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest10b
SAY @61
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest11
SAY @44
++ @45 + BInterest11a
++ @46 + BInterest10b
END

IF ~~ THEN BEGIN BInterest11a
SAY @47
++ @48 + BInterest10a1
++ @49 + BInterest10a2
END

IF ~~ THEN BEGIN BInterest12
SAY @44
++ @45 + BInterest12a
++ @46 + BInterest12b
END

IF ~~ THEN BEGIN BInterest12a
SAY @62
++ @48 + BInterest12a1
++ @49 + BInterest12a2
END

IF ~~ THEN BEGIN BInterest12a1
SAY @63
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest12a2
SAY @64
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest12b
SAY @65
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest13
SAY @66
++ @67 + BInterest13a
++ @68 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest13c
++ @69  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest13d
++ @70 + BInterest13b
END

IF ~~ THEN BEGIN BInterest13a
SAY @62
++ @48 + BInterest13a1
++ @49  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest13a2
END

IF ~~ THEN BEGIN BInterest13a1
SAY @71
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest13a2
SAY @72
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest13b
SAY @73
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest13c
SAY @74
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest13d
SAY @75
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest14
SAY @76
++ @77 + BInterest14a
++ @78 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest14c
++ @69  DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest14d
++ @79 + BInterest14b
END

IF ~~ THEN BEGIN BInterest14a
SAY @62
++ @48 + BInterest14a1
++ @49  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BInterest14a2
END

IF ~~ THEN BEGIN BInterest14a1
SAY @80
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest14a2
SAY @72
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest14b
SAY @73
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest14c
SAY @81
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest14d
SAY @75
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest15
SAY @76
++ @77 + BInterest15a
++ @78 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest15c
++ @69 + BInterest15d
++ @79 + BInterest15b
END

IF ~~ THEN BEGIN BInterest15a
SAY @62
++ @48 + BInterest15a1
++ @49 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest15a2
END

IF ~~ THEN BEGIN BInterest15a1
SAY @82
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest15a2
SAY @83
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest15b
SAY @84
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest15c
SAY @85
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest15d
SAY @75
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest16
SAY @76
++ @77 + BInterest16a
++ @78 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest16c
++ @69 + BInterest16d
++ @86 + BInterest16b
END

IF ~~ THEN BEGIN BInterest16a
SAY @47
++ @48 + BInterest16a1
++ @49 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest16a2
END

IF ~~ THEN BEGIN BInterest16a1
SAY @87
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest16a2
SAY @88
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest16b
SAY @89
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest16c
SAY @85
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest16d
SAY @75
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest17
SAY @76
++ @77 + BInterest17a
++ @78 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest17c
++ @69 + BInterest17d
++ @86 + BInterest17b
END

IF ~~ THEN BEGIN BInterest17a
SAY @47
++ @48 + BInterest17a1
++ @49 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BInterest17a2
END

IF ~~ THEN BEGIN BInterest17a1
SAY @90
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest17a2
SAY @83
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest17b
SAY @89
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest17c
SAY @85
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest17d
SAY @75
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest18
SAY @76
++ @77 + BInterest18a
++ @91 + BInterest18c
++ @69 + BInterest18d
++ @86 + BInterest18b
END

IF ~~ THEN BEGIN BInterest18a
SAY @47
++ @48 + BInterest18a1
++ @49 + BInterest18a2
END

IF ~~ THEN BEGIN BInterest18a1
SAY @90
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest18a2
SAY @92
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest18b
SAY @93
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest18c
SAY @94
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BInterest18d
SAY @75
IF ~~ THEN DO ~SetGlobal("B!DurlyleInterest","GLOBAL",3)~ EXIT
END

IF ~Global("B!DurlyleKiss","GLOBAL",2)~ THEN BKissDurlyle
SAY @95
++ @96 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle0
+ ~Global("B!GavinRomanceActive","GLOBAL",2) !Global("B!GavinRomCutByOther","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",1)~ + @97 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle1
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @98 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle2
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @98 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle3
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @98 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle4
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @98 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle5
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @98 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle6
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @98 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle7
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @99 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BKissDurlyle8
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @99 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle9
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @99 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle10
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @99 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BKissDurlyle11
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @99 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle12
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @99 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle13
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @100 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle14
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @100 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle15
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @100 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle16
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @100 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle17
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @100 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle18
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @100 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle19
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalLT("B!GavinLove","GLOBAL",10)~ + @101 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle20
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",9) GlobalLT("B!GavinLove","GLOBAL",20)~ + @101 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle21
+ ~Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",19)~ + @101 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle22
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLove","GLOBAL",15)~ + @101 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle23
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",14) GlobalLT("B!GavinLove","GLOBAL",25)~ + @101 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BKissDurlyle24
+ ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24)~ + @101 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BKissDurlyle25
+ ~Global("B!RomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",24) Global("B!GavinSex","GLOBAL",1)~ + @102 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle1c
++ @12 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle26
++ @103 DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ + BKissDurlyle27
END

IF ~~ THEN BEGIN BKissDurlyle0
SAY @104
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @105 + BKissDurlyle0.1
+ ~Global("B!GavinRomanceActive","GLOBAL",2) Global("B!GavinSex","GLOBAL",0)~ + @105 + BKissDurlyle0.2
+ ~Global("B!GavinRomanceActive","GLOBAL",2) Global("B!GavinSex","GLOBAL",1)~ + @105 + BKissDurlyle0.3
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @103 + BKissDurlyle0.4
+ ~Global("B!GavinRomanceActive","GLOBAL",2)~ + @103 + BKissDurlyle0.5
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @106 + BKissDurlyle0.6
+ ~Global("B!GavinRomanceActive","GLOBAL",2)~ + @106 + BKissDurlyle0.7
END

IF ~~ THEN BKissDurlyle0.1
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BKissDurlyle0.2
SAY @108
IF ~~ THEN EXIT
END

IF ~~ THEN BKissDurlyle0.3
SAY @109
IF ~~ THEN EXIT
END

IF ~~ THEN BKissDurlyle0.4
SAY @110
IF ~~ THEN EXIT
END

IF ~~ THEN BKissDurlyle0.5
SAY @111
IF ~~ THEN EXIT
END

IF ~~ THEN BKissDurlyle0.6
SAY @112
IF ~~ THEN EXIT
END

IF ~~ THEN BKissDurlyle0.7
SAY @113
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BKissDurlyle1
SAY @114
++ @115 + BKissDurlyle1a
++ @116 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BKissDurlyle1b
++ @117 + BKissDurlyle1c
END

IF ~~ THEN BEGIN BKissDurlyle1a
SAY @118
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle1b
SAY @119
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle1c
SAY @120
++ @121 + BKissDurlyle1c1
++ @122 + BKissDurlyle1c2
++ @123 + BKissDurlyle1c3
END

IF ~~ THEN BEGIN BKissDurlyle1c3
SAY @124
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle1c1
SAY @125
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle1c2
SAY @126
++ @127 + BKissDurlyle1c2a
++ @128 + BKissDurlyle1c2b
END

IF ~~ THEN BEGIN BKissDurlyle1c2a
SAY @129
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle1c2b
SAY @130
= @125
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle2 /* loved kissing Durlyle */
SAY @131
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle3
SAY @132
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle4
SAY @133
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle5
SAY @134
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle6
SAY @135
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle7
SAY @136
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle8        /* don't know what came over me */
SAY @137
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle9      
SAY @138
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle10      
SAY @139
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle11     
SAY @140
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle12      
SAY @141
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle13      
SAY @142
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle14        /* wish it hadn't stopped there */
SAY @143
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle15      
SAY @144
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle16     
SAY @145
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle17     
SAY @146
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle18      
SAY @147
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle19    
SAY @148
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle20        /* it meant nothing to me */
SAY @149
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle21      
SAY @150
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle22    
SAY @151
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle23    
SAY @152
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle24     
SAY @153
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle25   
SAY @154
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle26 
SAY @155
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN BKissDurlyle27
SAY @156
IF ~~ THEN DO ~SetGlobal("B!DurlyleKiss","GLOBAL",3)~ EXIT
END

IF ~Global("B!DurlyleKissNoRom","GLOBAL",1)~ THEN BEGIN BKissNoRom
SAY @157
++ @158 DO ~SetGlobal("B!DurlyleKissNoRom","GLOBAL",2)~ + BKissNoRom1
++ @159 DO ~SetGlobal("B!DurlyleKissNoRom","GLOBAL",2)~ + BKissNoRom2
++ @160 DO ~SetGlobal("B!DurlyleKissNoRom","GLOBAL",2)~ + BKissNoRom3
++ @161 DO ~SetGlobal("B!DurlyleKissNoRom","GLOBAL",2)~ + BKissNoRom4
END

IF ~~ THEN BEGIN BKissNoRom1
SAY @162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BKissNoRom2
SAY @163
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BKissNoRom3
SAY @164
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BKissNoRom4
SAY @165
IF ~~ THEN EXIT
END

END
