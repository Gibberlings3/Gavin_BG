//////// Gavin responds to PC's needs /////////////


APPEND ~B!GAVINJ~

/* At an inn */
IF ~Global("B!Inn","GLOBAL",1)~ THEN BEGIN BInn
SAY @0
+ ~RandomNum(5,1)~ + @1 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.1a
+ ~RandomNum(5,2)~ + @1 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.1b
+ ~RandomNum(5,3)~ + @1 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.1c
+ ~RandomNum(5,4)~ + @1 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.1d
+ ~RandomNum(5,5)~ + @1 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.1e
+ ~RandomNum(5,1)~ + @2 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.2a
+ ~RandomNum(5,2)~ + @2 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.2b
+ ~RandomNum(5,3)~ + @2 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.2c
+ ~RandomNum(5,4)~ + @2 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.2d
+ ~RandomNum(5,5)~ + @2 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.2e
+ ~RandomNum(5,1)~ + @3 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.3a
+ ~RandomNum(5,2)~ + @3 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.3b
+ ~RandomNum(5,3)~ + @3 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.3c
+ ~RandomNum(5,4)~ + @3 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.3d
+ ~RandomNum(5,5)~ + @3 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.3e
+ ~RandomNum(5,1)~ + @4 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.4a
+ ~RandomNum(5,2)~ + @4 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.4b
+ ~RandomNum(5,3)~ + @4 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.4c
+ ~RandomNum(5,4)~ + @4 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.4d
+ ~RandomNum(5,5)~ + @4 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.4e
+ ~RandomNum(3,1)~ + @5  DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.5a
+ ~RandomNum(3,2)~ + @5  DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.5b
+ ~RandomNum(3,3)~ + @5  DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Inn","GLOBAL",0)~ + BInn.5c
END

IF ~~ THEN BEGIN BInn.1a
SAY @6
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.1b
SAY @7
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.1c
SAY @8
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.1d
SAY @9
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.1e
SAY @10
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.2a
SAY @11
= @12
= @13
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.2b
SAY @14
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.2c
SAY @15
= @16
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.2d
SAY @17
= @18
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.2e
SAY @19
= @20
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.3a
SAY @21
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.3b
SAY @22
= @23
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.3c
SAY @24
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.3d
SAY @25
= @26
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.3e
SAY @27
= @28
= @29
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.4a
SAY @30
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.4b
SAY @31
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.4c
SAY @32
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.4d
SAY @33
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.4e
SAY @34
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.5a
SAY @35
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.5b
SAY @36
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BInn.5c
SAY @37
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Outdoors */
IF ~Global("B!Outside","GLOBAL",1)~ THEN BEGIN BOut
SAY @38
+ ~RandomNum(5,1)~ + @39 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.1a
+ ~RandomNum(5,2)~ + @39 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.1b
+ ~RandomNum(5,3)~ + @39 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.1c
+ ~RandomNum(5,4)~ + @39 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.1d
+ ~RandomNum(5,5)~ + @39 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.1e
+ ~RandomNum(5,1)~ + @40 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.2a
+ ~RandomNum(5,2)~ + @40 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.2b
+ ~RandomNum(5,3)~ + @40 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.2c
+ ~RandomNum(5,4)~ + @40 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.2d
+ ~RandomNum(5,5)~ + @40 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.2e
+ ~RandomNum(5,1)~ + @41 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.3a
+ ~RandomNum(5,2)~ + @41 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.3b
+ ~RandomNum(5,3)~ + @41 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.3c
+ ~RandomNum(5,4)~ + @41 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.3d
+ ~RandomNum(5,5)~ + @41 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.3e
+ ~RandomNum(5,1)~ + @42 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.4a
+ ~RandomNum(5,2)~ + @42 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.4b
+ ~RandomNum(5,3)~ + @42 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.4c
+ ~RandomNum(5,4)~ + @42 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.4d
+ ~RandomNum(5,5)~ + @42 DO ~SetGlobal("B!PCWantsSex","GLOBAL",0) SetGlobal("B!Outside","GLOBAL",0)~ + BOut.4e
END

IF ~~ THEN BEGIN BOut.1a
SAY @43
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.1b
SAY @44
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.1c
SAY @45
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.1d
SAY @46
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.1e
SAY @47
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.2a
SAY @48
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.2b
SAY @49
= @50
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.2c
SAY @51
= @52
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.2d
SAY @53
= @54
= @55
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.2e
SAY @56
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.3a
SAY @57
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.3b
SAY @58
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.3c
SAY @59
= @60
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.3d
SAY @61
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.3e
SAY @62
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.4a
SAY @63
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.4b
SAY @64
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.4c
SAY @65
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.4d
SAY @66
= @67
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOut.4e
SAY @68
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Other */
IF ~Global("B!Other","GLOBAL",1)~ THEN BEGIN BOther
SAY @69
++ @70 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.1
++ @71 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.2
++ @72 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.3
++ @73 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.4
+ ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ + @74 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.5
+ ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ + @75 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.6
+ ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ + @76 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.7
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ + @77 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.8
+ ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ + @78 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.9
+ ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ + @79 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.10
+ ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ + @80 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.11
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @81 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.12
+ ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ + @82 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.13
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @83 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.14
+ ~InParty("jaheira") InParty("khalid") !Dead("khalid") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @84 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.15
+ ~InParty("jaheira") Dead("khalid") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @85 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.16
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @86 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.17
+ ~InParty("khalid") InParty("jaheira") !Dead("jaheira") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @87 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.18
+ ~InParty("khalid") Dead("jaheira") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @88 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.19
+ ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ + @89 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.20
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @90 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.21
+ ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ + @91 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.22
+ ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ + @92 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.23
+ ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ + @93 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.24
+ ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ + @94 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.25
+ ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ + @95 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.26
+ ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ + @96 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.27
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @97 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.28
+ ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ + @98 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.29
+ ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ + @99 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.30
+ ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ + @100 DO ~SetGlobal("B!Other","GLOBAL",0) SetGlobal("B!PCWantsSex","GLOBAL",0)~ + BOther.31
END

IF ~~ THEN BEGIN BOther.1
SAY @101
= @102
= @103
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.2
SAY @104
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.3
SAY @105
= @106
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.4
SAY @107
= @108
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.5
SAY @109
= @110
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.6
SAY @111
= @112
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.7
SAY @113
= @114
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.8
SAY @115
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.9
SAY @116
= @117
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.10
SAY @118
= @119
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.11
SAY @120
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.12
SAY @121
= @122
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.13
SAY @123
= @124
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.14
SAY @125
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.15
SAY @126
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.16
SAY @127
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.17
SAY @128
= @129
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.18
SAY @130
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.19
SAY @131
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.20
SAY @132
= @133
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.21
SAY @134
= @135
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.22
SAY @136
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.23
SAY @137
= @138
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.24
SAY @139
= @140
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.25
SAY @141
= @142
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.26
SAY @143
= @144
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.27
SAY @145
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.28
SAY @146
= @147
= @148
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.29
SAY @149
= @150
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.30
SAY @151
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BOther.31
SAY @152
IF ~~ THEN DO ~RestParty()~ EXIT
END
END