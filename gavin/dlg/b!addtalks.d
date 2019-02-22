/* ADDITIONAL FRIENDSHIP TALKS */
///* AddTalk 1 - Friends and family */
///* AddTalk 2 - What do you like to do? */
///* AddTalk 3 - Life and choices */
///* AddTalk 4 - Lanie */
///* AddTalk 5 - Fear */
///* AddTalk 6 - Going home */

/* ADDITIONAL FRIENDSHIP TALKS */
///* AddTalk 1 - Friends and family */
CHAIN
IF ~Global("B!GavAddTalk","GLOBAL",2)~ THEN ~B!GAVINJ~ BGA1.0
@0
DO ~SetGlobal("B!GavAddTalk","GLOBAL",3) RealSetGlobalTimer("B!GavAddTalkTimer","GLOBAL",7200)~
END
+ ~InParty("%IMOEN_DV%")~ + @1 EXTERN ~B!GAVINJ~ BGA1.1
+ ~!InParty("%IMOEN_DV%") !Dead("%IMOEN_DV%")~ + @2 EXTERN ~B!GAVINJ~ BGA1.2
+ ~Dead("%IMOEN_DV%")~ + @3 EXTERN ~B!GAVINJ~ BGA1.3
++ @4 EXTERN ~B!GAVINJ~ BGA1.1
++ @5 EXTERN ~B!GAVINJ~ BGA1.4
++ @6 EXTERN ~B!GAVINJ~ BGA1.4
++ @7 EXTERN ~B!GAVINJ~ BGA1.5

APPEND ~B!GAVINJ~

IF ~~ BGA1.1
SAY @8
++ @9 + BGA1.6
++ @10 + BGA1.7
++ @11 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.2
SAY @13
++ @14 + BGA1.6
++ @15 + BGA1.7
++ @16 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.3
SAY @17
++ @18 + BGA1.10
++ @15 + BGA1.7
++ @16 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.4
SAY @19
++ @20 + BGA1.11
++ @21 + BGA1.7
++ @22 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.5
SAY @23
+ ~NumInPartyLT(3)~ + @24 + BGA1.12
++ @25 + BGA1.13
++ @26 + BGA1.14
++ @12 + BGA1.9
END

IF ~~ BGA1.6
SAY @27
++ @28 + BGA1.15
++ @29 + BGA1.16
++ @30 + BGA1.17
++ @31 + BGA1.18
++ @32 + BGA1.19
END

IF ~~ BGA1.7
SAY @33
IF ~~ THEN + BGA1.24
END

IF ~~ BGA1.8
SAY @34
IF ~~ THEN + BGA1.24
END

IF ~~ BGA1.9
SAY @35
IF ~~ THEN EXIT
END

IF ~~ BGA1.10
SAY @36
++ @9 + BGA1.6
++ @10 + BGA1.7
++ @11 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.11
SAY @37
++ @9 + BGA1.6
++ @10 + BGA1.7
++ @11 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.12
SAY @38
++ @39 + BGA1.7
++ @11 + BGA1.8
++ @40 + BGA1.9
END

IF ~~ BGA1.13
SAY @41
++ @9 + BGA1.6
++ @39 + BGA1.7
++ @11 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.14
SAY @42
++ @9 + BGA1.6
++ @39 + BGA1.7
++ @11 + BGA1.8
++ @12 + BGA1.9
END

IF ~~ BGA1.15
SAY @43
IF ~~ THEN EXIT
END

IF ~~ BGA1.16
SAY @44
IF ~~ THEN EXIT
END

IF ~~ BGA1.17
SAY @45
IF ~~ THEN EXIT
END

IF ~~ BGA1.18
SAY @46
IF ~~ THEN EXIT
END

IF ~~ BGA1.19
SAY @47
IF ~~ THEN DO ~SetGlobal("B!GavinFriend","GLOBAL",3)~  EXIT
END

IF ~~ BGA1.20
SAY @48
IF ~~ THEN EXIT
END

IF ~~ BGA1.21
SAY @49
IF ~~ THEN EXIT
END

IF ~~ BGA1.22
SAY @50
IF ~~ THEN EXIT
END

IF ~~ BGA1.23
SAY @51
IF ~~ THEN EXIT
END

IF ~~ BGA1.24
SAY @52
++ @53 + BGA1.20
++ @54 + BGA1.21
++ @55 + BGA1.22
++ @56 + BGA1.23
END
END

///* AddTalk 2 - What do you like to do? */
CHAIN
IF ~Global("B!GavAddTalk","GLOBAL",4)~ THEN ~B!GAVINJ~ BGA2.0
@57
DO ~SetGlobal("B!GavAddTalk","GLOBAL",5) RealSetGlobalTimer("B!GavAddTalkTimer","GLOBAL",7200)~
END
+ ~Global("B!GavinRead","LOCALS",0)~ + @58 DO ~SetGlobal("B!GavinRead","LOCALS",1)~ EXTERN ~B!GAVINJ~ BGA2.1
+ ~Global("B!GavinDance","LOCALS",0)~ + @59 DO ~SetGlobal("B!GavinDance","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.2
+ ~Global("B!GavinWood","LOCALS",0)~ + @60 DO ~SetGlobal("B!GavinWood","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.3
+ ~Global("B!GavinNoHobby","LOCALS",0)~ + @61 DO ~SetGlobal("B!GavinNoHobby","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.4
+ ~Global("B!GavinGarden","LOCALS",0)~ + @62 DO ~SetGlobal("B!GavinGarden","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.4
+ ~Global("B!GavinDraw","LOCALS",0)~ + @63 DO ~SetGlobal("B!GavinDraw","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.6
+ ~Global("B!GavinSing","LOCALS",0)~ + @64 DO ~SetGlobal("B!GavinSing","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.7
+ ~Global("B!GavinPartner","LOCALS",0)~ + @65 DO ~SetGlobal("B!GavinPartner","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.8
+ ~Global("B!GavinOutdoorsman","LOCALS",0)~ + @66 DO ~SetGlobal("B!GavinOutdoorsman","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.4
+ ~Global("B!GavinStudy","LOCALS",0)~ + @67 DO ~SetGlobal("B!GavinStudy","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.5
+ ~Global("B!GavinJoker","LOCALS",0)~ + @68 DO ~SetGlobal("B!GavinJoker","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.9
+ ~Global("B!GavinTavern","LOCALS",0)~ + @69 DO ~SetGlobal("B!GavinTavern","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.10
++ @70 EXTERN ~B!GAVINJ~ BGA2.24

APPEND ~B!GAVINJ~

IF ~~ BGA2.1
SAY @71
++ @72 + BGA2.11
++ @73 + BGA2.11
++ @74 + BGA2.12
++ @75 + BGA2.11
++ @76 + BGA2.13
++ @77 + BGA2.14
++ @78 + BGA2.15
END

IF ~~ BGA2.2
SAY @79
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.3
SAY @80
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.4
SAY @81
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.5
SAY @82
IF ~~ THEN + BGA2.1
END

IF ~~ BGA2.6
SAY @83
++ @84 + BGA2.17
++ @85 + BGA2.18
++ @86 + BGA2.19
++ @87 + BGA2.20
END

IF ~~ BGA2.7
SAY @88
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.8
SAY @89
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.9
SAY @90
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.10
SAY @91
++ @92 + BGA2.21
++ @93 + BGA2.16
END

IF ~~ BGA2.11
SAY @94
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.12
SAY @95
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.13
SAY @96
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.14
SAY @97
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.15
SAY @98
++ @99 + BGA2.22
++ @100 + BGA2.22
++ @101 + BGA2.23
++ @102 + BGA2.24
END

IF ~~ BGA2.16
SAY @103
+ ~Global("B!GavinRead","LOCALS",0)~ + @58 DO ~SetGlobal("B!GavinRead","LOCALS",1)~ EXTERN ~B!GAVINJ~ BGA2.1
+ ~Global("B!GavinDance","LOCALS",0)~ + @59 DO ~SetGlobal("B!GavinDance","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.2
+ ~Global("B!GavinWood","LOCALS",0)~ + @60 DO ~SetGlobal("B!GavinWood","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.3
+ ~Global("B!GavinNoHobby","LOCALS",0)~ + @61 DO ~SetGlobal("B!GavinNoHobby","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.4
+ ~Global("B!GavinGarden","LOCALS",0)~ + @62 DO ~SetGlobal("B!GavinGarden","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.4
+ ~Global("B!GavinDraw","LOCALS",0)~ + @63 DO ~SetGlobal("B!GavinDraw","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.6
+ ~Global("B!GavinSing","LOCALS",0)~ + @64 DO ~SetGlobal("B!GavinSing","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.7
+ ~Global("B!GavinPartner","LOCALS",0)~ + @65 DO ~SetGlobal("B!GavinPartner","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.8
+ ~Global("B!GavinOutdoorsman","LOCALS",0)~ + @66 DO ~SetGlobal("B!GavinOutdoorsman","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.4
+ ~Global("B!GavinStudy","LOCALS",0)~ + @67 DO ~SetGlobal("B!GavinStudy","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.5
+ ~Global("B!GavinJoker","LOCALS",0)~ + @68 DO ~SetGlobal("B!GavinJoker","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.9
+ ~Global("B!GavinTavern","LOCALS",0)~ + @69 DO ~SetGlobal("B!GavinTavern","LOCALS",1)~  EXTERN ~B!GAVINJ~ BGA2.10
++ @104 EXTERN ~B!GAVINJ~ BGA2.25
++ @70 EXTERN ~B!GAVINJ~ BGA2.24
END

IF ~~ BGA2.17
SAY @105
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.18
SAY @106
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.19
SAY @107
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.20
SAY @108
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.21
SAY @109
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.22
SAY @110
IF ~~ THEN + BGA2.23
END

IF ~~ BGA2.23
SAY @111
++ @112 + BGA2.26
++ @113 + BGA2.27
++ @114 + BGA2.28
END

IF ~~ BGA2.24
SAY @115
IF ~~ THEN EXIT
END

IF ~~ BGA2.25
SAY @116
IF ~~ THEN EXIT
END

IF ~~ BGA2.26
SAY @117
IF ~~ THEN EXIT
END

IF ~~ BGA2.27
SAY @118
IF ~~ THEN + BGA2.16
END

IF ~~ BGA2.28
SAY @119
IF ~~ THEN + BGA2.16
END
END

///* AddTalk 3 - Life and choices */
CHAIN
IF ~Global("B!GavAddTalk","GLOBAL",6)~ THEN ~B!GAVINJ~ BGA3.0
@120
DO ~SetGlobal("B!GavAddTalk","GLOBAL",7) RealSetGlobalTimer("B!GavAddTalkTimer","GLOBAL",7200)~
END
++ @121 EXTERN ~B!GAVINJ~ BGA3.1
++ @122 EXTERN ~B!GAVINJ~ BGA3.1
++ @123 EXTERN ~B!GAVINJ~ BGA3.2
++ @124 EXTERN ~B!GAVINJ~ BGA3.3

APPEND ~B!GAVINJ~

IF ~~ BGA3.1
SAY @125
++ @126 + BGA3.4
++ @127 + BGA3.5
++ @128 + BGA3.6
+ ~Gender(Player1,MALE)~ + @129 + BGA3.4 /* Miloch, this line is for you. */
++ @130 + BGA3.7
END

IF ~~ BGA3.2
SAY @131
IF ~~ THEN + BGA3.1
END

IF ~~ BGA3.3
SAY @132
++ @133 + BGA3.8
++ @134 + BGA3.9
++ @135 + BGA3.1
END

IF ~~ BGA3.4
SAY @136
++ @137 + BGA3.8
++ @138 + BGA3.9
END

IF ~~ BGA3.5
SAY @139
IF ~~ THEN + BGA3.9
END

IF ~~ BGA3.6
SAY @140
IF ~~ THEN EXIT
END

IF ~~ BGA3.7
SAY @141
IF ~~ THEN + BGA3.9
END

IF ~~ BGA3.8
SAY @142
IF ~~ THEN EXIT
END

IF ~~ BGA3.9
SAY @143
= @144
+ ~ReputationGT(Player1,12)~ + @145 + BGA3.10
+ ~!ReputationGT(Player1,12)~ + @145 + BGA3.11
++ @146 + BGA3.12
++ @147 + BGA3.13
END

IF ~~ BGA3.10
SAY @148
IF ~~ THEN + BGA3.14
END

IF ~~ BGA3.11
SAY @149
IF ~~ THEN + BGA3.14
END

IF ~~ BGA3.12
SAY @150
IF ~~ THEN + BGA3.14
END

IF ~~ BGA3.13
SAY @151
IF ~~ THEN  + BGA3.15
END

IF ~~ BGA3.14
SAY @152
IF ~~ THEN + BGA3.15
END

IF ~~ BGA3.15
SAY @153
+ ~ReputationGT(Player1,12)~ + @154 + BGA3.16
+ ~!ReputationGT(Player1,12)~ + @154 + BGA3.17
++ @155 + BGA3.20
++ @156 + BGA3.18
++ @157 + BGA3.19
END

IF ~~ BGA3.16
SAY @158
IF ~~ THEN + BGA3.21
END

IF ~~ BGA3.17
SAY @159
IF ~~ THEN + BGA3.21
END

IF ~~ BGA3.18
SAY @160
IF ~~ THEN EXIT
END

IF ~~ BGA3.19
SAY @161
IF ~~ THEN EXIT
END

IF ~~ BGA3.20
SAY @162
IF ~~ THEN EXIT
END

IF ~~ BGA3.21
SAY @163
IF ~~ THEN EXIT
END
END

///* AddTalk 4 - Lanie */
CHAIN
IF ~Global("B!GavAddTalk","GLOBAL",8)~ THEN ~B!GAVINJ~ BGA4.0
@164
DO ~SetGlobal("B!GavAddTalk","GLOBAL",9) RealSetGlobalTimer("B!GavAddTalkTimer","GLOBAL",7200)~
END
++ @165 + BGA4.1
++ @166 + BGA4.2
++ @167 + BGA4.3

APPEND ~B!GAVINJ~

IF ~~ BGA4.1
SAY @168
IF ~~ THEN + BGA4.4
END

IF ~~ BGA4.2
SAY @169
IF ~~ THEN + BGA4.4
END

IF ~~ BGA4.3
SAY @170
IF ~~ THEN + BGA4.4
END

IF ~~ BGA4.4
SAY @171
= @172
++ @173 + BGA4.5
++ @174 + BGA4.6
++ @175 + BGA4.7
++ @176 + BGA4.8
END

IF ~~ BGA4.5
SAY @177
IF ~~ THEN + BGA4.8
END

IF ~~ BGA4.6
SAY @178
IF ~~ THEN + BGA4.7
END

IF ~~ BGA4.7
SAY @179
++ @180 + BGA4.9
++ @181 + BGA4.10
++ @182 + BGA4.11
+ ~Gender(Player1,MALE)~ + @183 + BGA4.12
++ @184 + BGA4.13
END

IF ~~ BGA4.8
SAY @185
IF ~~ THEN + BGA4.14
END

IF ~~ BGA4.9
SAY @186
IF ~~ THEN + BGA4.15
END

IF ~~ BGA4.10
SAY @187
IF ~~ THEN + BGA4.15
END

IF ~~ BGA4.11
SAY @188
IF ~~ THEN + BGA4.15
END

IF ~~ BGA4.12
SAY @189
IF ~~ THEN + BGA4.15
END

IF ~~ BGA4.13
SAY @190
IF ~~ THEN + BGA4.15
END

IF ~~ BGA4.14
SAY @191
IF ~~ THEN + BGA4.7
END

IF ~~ BGA4.15
SAY @192
++ @193 + BGA4.17
++ @194 + BGA4.18
++ @195 + BGA4.19
END

IF ~~ BGA4.16
SAY @196
++ @197 + BGA4.20
++ @198 + BGA4.20
++ @199 + BGA4.20
++ @200 + BGA4.21
END

IF ~~ BGA4.17
SAY @201
= @202
= @203
= @204
= @205
= @206
= @207
= @208
IF ~~ THEN + BGA4.16
END

IF ~~ BGA4.18
SAY @209
IF ~~ THEN + BGA4.16
END

IF ~~ BGA4.19
SAY @210
IF ~~ THEN + BGA4.16
END

IF ~~ BGA4.20
SAY @211
IF ~~ THEN EXIT
END

IF ~~ BGA4.21
SAY @212
IF ~~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) 
ChangeAIScript("",DEFAULT) 
SetLeavePartyDialogueFile() 
LeaveParty() 
EscapeAreaMove("%Temple%",728,1474,3)~ EXIT
END
END

///* AddTalk 5 - Fear */
CHAIN
IF ~Global("B!GavAddTalk","GLOBAL",10)~ THEN ~B!GAVINJ~ BGA5.0
@213
DO ~SetGlobal("B!GavAddTalk","GLOBAL",11) RealSetGlobalTimer("B!GavAddTalkTimer","GLOBAL",7200)~
END
++ @214 EXTERN ~B!GAVINJ~ BGA5.1
++ @215 EXTERN ~B!GAVINJ~ BGA5.2
++ @216 EXTERN ~B!GAVINJ~ BGA5.2
++ @217 EXTERN ~B!GAVINJ~ BGA5.2

APPEND ~B!GAVINJ~

IF ~~ BGA5.1
SAY @218
++ @219 + BGA5.4
++ @220 + BGA5.5
++ @221 + BGA5.6
++ @222 + BGA5.7
++ @223 + BGA5.3
END

IF ~~ BGA5.2
SAY @224
++ @225 + BGA5.8
++ @226 + BGA5.9
++ @227 + BGA5.10
END

IF ~~ BGA5.3
SAY @228
++ @229 + BGA5.7
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @230 + BGA5.11
+ ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ + @231 + BGA5.11
++ @232 + BGA5.12
++ @233 + BGA5.13
++ @234 + BGA5.14
END

IF ~~ BGA5.4
SAY @235
IF ~~ THEN + BGA5.15
END

IF ~~ BGA5.5
SAY @236
++ @237 + BGA5.16
++ @238 + BGA5.17
++ @239 + BGA5.18
++ @240 + BGA5.17
++ @241 + BGA5.19
END

IF ~~ BGA5.6
SAY @242
++ @243 + BGA5.17
++ @239 + BGA5.18
++ @240 + BGA5.17
++ @241 + BGA5.19
END

IF ~~ BGA5.7
SAY @244
++ @243 + BGA5.17
++ @239 + BGA5.18
++ @240 + BGA5.17
++ @241 + BGA5.19
END

IF ~~ BGA5.8
SAY @245
IF ~~ THEN EXIT
END

IF ~~ BGA5.9
SAY @246
IF ~~ THEN + BGA5.12
END

IF ~~ BGA5.10
SAY @247
IF ~~ THEN + BGA5.12
END

IF ~~ BGA5.11
SAY @248
IF ~~ THEN + BGA5.12
END

IF ~~ BGA5.12
SAY @249
++ @243 + BGA5.17
++ @239 + BGA5.18
++ @240 + BGA5.17
++ @241 + BGA5.19
END

IF ~~ BGA5.13
SAY @250
IF ~~ THEN + BGA5.12
END

IF ~~ BGA5.14
SAY @251
IF ~~ THEN + BGA5.12
END

IF ~~ BGA5.15
SAY @252
IF ~~ THEN + BGA5.12
END

IF ~~ BGA5.16
SAY @253
IF ~~ THEN + BGA5.12
END

IF ~~ BGA5.17
SAY @254
IF ~~ THEN EXIT
END

IF ~~ BGA5.18
SAY @255
IF ~~ THEN EXIT
END

IF ~~ BGA5.19
SAY @256
IF ~~ THEN EXIT
END
END

///* AddTalk 6 - Going home */
CHAIN
IF ~Global("B!GavAddTalk","GLOBAL",12)~ THEN ~B!GAVINJ~ BGA6.0
@257
DO ~SetGlobal("B!GavAddTalk","GLOBAL",13)~
END
++ @258 EXTERN ~B!GAVINJ~ BGA6.1
++ @259 EXTERN ~B!GAVINJ~ BGA6.2
++ @260 EXTERN ~B!GAVINJ~ BGA6.3
++ @261 EXTERN ~B!GAVINJ~ BGA6.4
++ @262 EXTERN ~B!GAVINJ~ BGA6.2
++ @263 EXTERN ~B!GAVINJ~ BGA6.5

APPEND ~B!GAVINJ~

IF ~~ BGA6.1
SAY @264
++ @265 + BGA6.6
++ @266 + BGA6.7
++ @267 + BGA6.8
++ @268 + BGA6.9
++ @269 + BGA6.10 
END

IF ~~ BGA6.2
SAY @270
IF ~~ THEN + BGA6.1
END

IF ~~ BGA6.3
SAY @271
IF ~~ THEN + BGA6.1
END

IF ~~ BGA6.4
SAY @272
++ @273 + BGA6.11
++ @274 + BGA6.1
++ @275 + BGA6.12
END

IF ~~ BGA6.5
SAY @276
IF ~~ THEN + BGA6.1
END

IF ~~ BGA6.6
SAY @277
IF ~~ THEN + BGA6.13
END

IF ~~ BGA6.7
SAY @278
IF ~~ THEN + BGA6.13
END

IF ~~ BGA6.8
SAY @279
IF ~~ THEN + BGA6.6
END

IF ~~ BGA6.9
SAY @280
IF ~~ THEN + BGA6.13
END

IF ~~ BGA6.10
SAY @281
IF ~~ THEN + BGA6.13
END

IF ~~ BGA6.11
SAY @282
IF ~~ THEN + BGA6.13
END

IF ~~ BGA6.12
SAY @283
IF ~~ THEN + BGA6.13
END

IF ~~ BGA6.13
SAY @284
= @285
++ @286 + BGA6.14
++ @287 + BGA6.15
++ @288 + BGA6.16
++ @289 + BGA6.18
++ @290 + BGA6.19
++ @291 + BGA6.17
END

IF ~~ BGA6.14
SAY @292
IF ~~ THEN + BGA6.19
END

IF ~~ BGA6.15
SAY @293
IF ~~ THEN + BGA6.19
END

IF ~~ BGA6.16
SAY @294
IF ~~ THEN + BGA6.19
END

IF ~~ BGA6.17
SAY @295
IF ~~ THEN EXIT
END

IF ~~ BGA6.18
SAY @296
IF ~~ THEN EXIT
END

IF ~~ BGA6.19
SAY @297
IF ~~ THEN EXIT
END
END