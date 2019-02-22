/* GAVIN'S BANTER FILE - COMPILES TO BB!GAVIN.DLG */
/* CONTENTS */
/* Gavin-Ajantis1 - career choices for the religious */
/* Gavin-Ajantis2 - following orders */
/* Gavin-Alora1 - Gavin's laces (requires Imoen) */
/* Gavin-Alora2 - a good laugh */
/* Gavin-Alora3 - the prank (requires Imoen) */
/* Gavin-Branwen1 - Branwen's advice */
/* Gavin-Branwen2 - the role of a cleric in an adventuring company */
/* Gavin-Coran1 - the meaning of life */
/* Gavin-Coran2 - art and the female form */
/* Gavin-Coran - Coran rejected fatherhood */
/* Gavin-Coran - Coran embraced fatherhood */
/* Gavin-Dynaheir1 - on art */
/* Gavin-Dynaheir2 - Minsc's devotion */
/* Gavin-Edwin1 - Edwin's dating habits */
/* Gavin-Edwin2 - on the infallibility of Red Wizards */
/* Gavin-Eldoth1 - Eldoth the bard */
/* Gavin-Eldoth2 - about Skie */
/* Gavin-Skie1 - about Eldoth */
/* Gavin-Skie2 - about Eldoth 2 */
/* Gavin-Faldorn1 - the way to live */
/* Gavin-Faldorn2 - worry about clean shirts */
/* Gavin-Garrick1 - happy endings */
/* Gavin-Garrick2 - the merits of popular approval */
/* Gavin-Imoen1 - Gavin's sketchbook */
/* Gavin-Imoen2 - interest in magic */
/* Gavin-Imoen3 - Gavin's pink shirt */
/* Gavin-Imoen4 - the race */
/* Gavin-Jaheira1 - Gavin makes a tonic */
/* Gavin-Jaheira3 - the Balance */
/* Gavin-Jaheira2 - Gavin's past */
/* Gavin-Kagain1 - armor bite */
/* Gavin-Kagain2 - it's only business */
/* Gavin-Khalid1 - clumsy */
/* Gavin-Khalid2 - adventuring */
/* Gavin-Kivan1 - moody */
/* Gavin-Kivan2 - devotion */
/* Gavin-Minsc1 - about Boo */
/* Gavin-Minsc2 - the Ice Dragon Berserker Lodge */
/* Gavin-Minsc3 *- Boo's snacking habits */
/* Gavin-Montaron1 - ethics */
/* Gavin-Montaron2 - the value of money */
/* Gavin-Quayle1 - unsolicited advice */
/* Gavin-Safana1 - Safana's power of attraction */
/* Gavin-Safana2 - Gavin's lack of style */
/* Gavin-Shar-Teel1 - Gavin the coward */
/* Gavin-Skie3 - adventure */
/* Gavin-Skie4 - Skie's shopping spree */
/* Gavin-Tiax1 - stepping on toes */
/* Gavin-Tiax2 - cooking for Tiax */
/* Gavin-Viconia1 - drow and humans */
/* Gavin-Viconia2 - Gavin's 'self-righteousness' */
/* Gavin-Viconia3 - toe stepping */
/* Gavin-Xan1 - home */
/* Gavin-Xan2 - the isolation of the elves */
/* Gavin-Xzar1 - Gavin's squeamishness */
/* Gavin-Xzar2 - Xzar's unique approch to necromancy */
/* Gavin-Yeslick1 - clerics on adventure */
/* Gavin-Yeslick2 - fighting the good fight. */
/* Gavin-Minsc4 - Gavin needs a tattoo */
/* Gavin-Kivan3 - fear of spiders */



/* Gavin-Ajantis1 - career choices for the religious */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("ajantis",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("ajantis")
  Global("B!GavinAjantis1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("ajantis")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
~ THEN
~BB!GAVIN~ BGavinAjantis1
@0 DO ~SetGlobal("B!GavinAjantis1","GLOBAL",1)~
== ~%AJANTIS_BANTER%~ @1
== ~BB!GAVIN~ @2
== ~%AJANTIS_BANTER%~ @3 
== ~BB!GAVIN~ @4
== ~%AJANTIS_BANTER%~ @5
== ~BB!GAVIN~ @6
== ~%AJANTIS_BANTER%~ @7
== ~BB!GAVIN~ @8
== ~%AJANTIS_BANTER%~ @9
== ~BB!GAVIN~ @10
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%")~ THEN @11
== ~BB!GAVIN~ IF ~InParty("%IMOEN_DV%")~ THEN @12
== ~%AJANTIS_BANTER%~ @13
== ~BB!GAVIN~ @14
== ~%AJANTIS_BANTER%~ @15
== ~BB!GAVIN~ @16
EXIT

/* Gavin-Ajantis2 - following orders */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("ajantis",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("ajantis")
  Global("B!GavinAjantis2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("ajantis")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinAjantis2
@17
DO ~SetGlobal("B!GavinAjantis2","GLOBAL",1)~
== ~%AJANTIS_BANTER%~ @18
== ~BB!GAVIN~ @19
== ~%AJANTIS_BANTER%~ @20
== ~BB!GAVIN~ @21
== ~%AJANTIS_BANTER%~ @22
== ~BB!GAVIN~ @23
== ~%AJANTIS_BANTER%~ @24
== ~BB!GAVIN~ @25
== ~%AJANTIS_BANTER%~ @26
== ~BB!GAVIN~ @27
== ~%AJANTIS_BANTER%~ @28
== ~BB!GAVIN~ @29
== ~%AJANTIS_BANTER%~ @30
== ~BB!GAVIN~ @31
== ~%AJANTIS_BANTER%~ @32
EXIT

/* Gavin-Alora1 - Gavin's laces (requires Imoen) */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("alora",CD_STATE_NOTVALID)
  !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("alora")
  InParty("%IMOEN_DV%")
  Global("B!GavinAlora1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("%IMOEN_DV%")
  See("alora")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinAlora1
@33
DO ~SetGlobal("B!GavinAlora1","GLOBAL",1)~
== ~%ALORA_BANTER%~ @34
== ~BB!GAVIN~ @35
== ~%IMOEN_BANTER%~ @36
== ~BB!GAVIN~ @37
== ~%IMOEN_BANTER%~ @38
== ~BB!GAVIN~ @39
== ~%ALORA_BANTER%~ @40
== ~BB!GAVIN~ @41
== ~%IMOEN_BANTER%~ @42
== ~%ALORA_BANTER%~ @43
== ~BB!GAVIN~ @44
EXIT

/* Gavin-Alora2 - a good laugh */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("alora",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("alora")
  Global("B!GavinAlora2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("alora")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinAlora2
@45
DO ~SetGlobal("B!GavinAlora2","GLOBAL",1)~
== ~%ALORA_BANTER%~ @46
== ~BB!GAVIN~ @47
== ~%ALORA_BANTER%~ @48
== ~BB!GAVIN~ @49
== ~%ALORA_BANTER%~ @50
== ~BB!GAVIN~ @51
== ~%ALORA_BANTER%~ @52
== ~BB!GAVIN~ @53
== ~%ALORA_BANTER%~ @54
== ~BB!GAVIN~ @55
== ~%ALORA_BANTER%~ @56
= @57
= @58
== ~BB!GAVIN~ @59
== ~%ALORA_BANTER%~ @60
EXIT

/* Gavin-Alora3 - the prank (requires Imoen) */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("alora",CD_STATE_NOTVALID)
  !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  CombatCounter(0)
  !See([ENEMY])
  InParty("alora")
  InParty("%IMOEN_DV%")
  Global("B!GavinAlora3","GLOBAL",0)
  See("%IMOEN_DV%")
  See("alora")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinAlora3
@61
DO ~SetGlobal("B!GavinAlora3","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @62
== ~BB!GAVIN~ @63
== ~%ALORA_BANTER%~ @64
== ~BB!GAVIN~ @65
= @66
== ~%IMOEN_BANTER%~ @67
== ~BB!GAVIN~ @68
== ~%ALORA_BANTER%~ @69
== ~BB!GAVIN~ @70
== ~%ALORA_BANTER%~ @71
== ~%IMOEN_BANTER%~ @72
== ~BB!GAVIN~ @73
== ~%IMOEN_BANTER%~ @74
== ~BB!GAVIN~ @75
EXIT

/* Gavin-Branwen1 - Branwen's advice */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("branwen",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("branwen")
  Global("B!GavinBranwen1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("branwen")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinBranwen1
@76
DO ~SetGlobal("B!GavinBranwen1","GLOBAL",1)~
== ~%BRANWEN_BANTER%~ @77
== ~BB!GAVIN~ @78
== ~%BRANWEN_BANTER%~ @79
== ~BB!GAVIN~ @80
== ~%BRANWEN_BANTER%~ @81
EXIT

/* Gavin-Branwen2 - the role of a cleric in an adventuring company */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("branwen",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("branwen")
  Global("B!GavinBranwen2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("branwen")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinBranwen2
@82 
DO ~SetGlobal("B!GavinBranwen2","GLOBAL",1)~
== ~%BRANWEN_BANTER%~ @83
== ~BB!GAVIN~ @84
== ~%BRANWEN_BANTER%~ @85
== ~BB!GAVIN~ @86
== ~%BRANWEN_BANTER%~ @87
== ~BB!GAVIN~ @88
== ~%BRANWEN_BANTER%~ @89
== ~BB!GAVIN~ @90
== ~%BRANWEN_BANTER%~ @91
== ~BB!GAVIN~ @92
== ~%BRANWEN_BANTER%~ @93
== ~BB!GAVIN~ @94
== ~%BRANWEN_BANTER%~ @95
== ~BB!GAVIN~ @96
== ~%BRANWEN_BANTER%~ @97
== ~BB!GAVIN~ @98
== ~%BRANWEN_BANTER%~ @99
== ~BB!GAVIN~ @100
== ~%BRANWEN_BANTER%~ @101
EXIT

/* Gavin-Coran1 - the meaning of life */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("coran",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("coran")
  Global("B!GavinCoran1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("coran")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinCoran1
@102
DO ~SetGlobal("B!GavinCoran1","GLOBAL",1)~
== ~%CORAN_BANTER%~ @103
== ~BB!GAVIN~ @104
== ~%CORAN_BANTER%~ @105
== ~BB!GAVIN~ @106
END
IF ~!GLOBAL("B!GavinRomanceActive","GLOBAL",1) !GLOBAL("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~%CORAN_BANTER%~ BGavCorBanter1End1
IF ~OR(2) GLOBAL("B!GavinRomanceActive","GLOBAL",1) GLOBAL("B!GavinRomanceActive","GLOBAL",2)~  THEN EXTERN ~%CORAN_BANTER%~ BGavCorBanter1End2

CHAIN ~%CORAN_BANTER%~ BGavCorBanter1End1
@107
== ~BB!GAVIN~ @108
== ~%CORAN_BANTER%~ @109
== ~BB!GAVIN~ @110
== ~%CORAN_BANTER%~ @111
== ~BB!GAVIN~ @112
== ~%CORAN_BANTER%~ @113
== ~BB!GAVIN~ @114
== ~%CORAN_BANTER%~ @115   
END
IF ~InParty("xan") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15)~ THEN EXTERN ~%XAN_BANTER%~ BGavCorBanter1XanComment1
IF ~InParty("xan") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16)~ THEN EXTERN ~%XAN_BANTER%~ BGavCorBanter1XanComment2
IF ~!InParty("xan")~ THEN EXTERN ~BB!GAVIN~ BGavCorBanter1End3

CHAIN ~%CORAN_BANTER%~ BGavCorBanter1End2
@107
== ~BB!GAVIN~ @108
== ~%CORAN_BANTER%~ @116
== ~BB!GAVIN~ @110
== ~%CORAN_BANTER%~ @111
== ~BB!GAVIN~ @112
== ~%CORAN_BANTER%~ @113
== ~BB!GAVIN~ @114
== ~%CORAN_BANTER%~ @115   
END
IF ~InParty("xan") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15)~ THEN EXTERN ~%XAN_BANTER%~ BGavCorBanter1XanComment1
IF ~InParty("xan") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16)~ THEN EXTERN ~%XAN_BANTER%~ BGavCorBanter1XanComment2
IF ~!InParty("xan")~ THEN EXTERN ~BB!GAVIN~ BGavCorBanter1End3

CHAIN ~%XAN_BANTER%~ BGavCorBanter1XanComment1
@117
== ~BB!GAVIN~ @118
= @119 
EXIT

CHAIN ~%XAN_BANTER%~ BGavCorBanter1XanComment2
@117
== ~BB!GAVIN~ @120
= @119 
EXIT

CHAIN ~BB!GAVIN~ BGavCorBanter1End3
@119 
EXIT

/* Gavin-Coran2 - art and the female form */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("coran",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("coran")
  CombatCounter(0)
  Global("B!GavinCoran2","GLOBAL",0)
  !GlobalGT("P#CoranRomancePath","GLOBAL",1) // berelinde check this
  !See([ENEMY])
  See("coran")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinCoran2
@121
DO ~SetGlobal("B!GavinCoran2","GLOBAL",1)~
== ~%CORAN_BANTER%~ @122
== ~BB!GAVIN~ @123
== ~%CORAN_BANTER%~ @124
== ~BB!GAVIN~ @125
== ~%CORAN_BANTER%~ @126
== ~BB!GAVIN~ @127
== ~%CORAN_BANTER%~ @128
== ~BB!GAVIN~ @129
== ~%CORAN_BANTER%~ @130
END
IF ~GlobalGT("B!GavinRomanceActive","GLOBAL",0)~ THEN EXTERN ~BB!GAVIN~ BGavinCoran2end1
IF ~!GlobalGT("B!GavinRomanceActive","GLOBAL",0)~ THEN EXTERN ~BB!GAVIN~ BGavinCoran2end2

CHAIN ~BB!GAVIN~ BGavinCoran2end1
@131 
EXIT

CHAIN ~BB!GAVIN~ BGavinCoran2end2
@132 
EXIT

/* Gavin-Coran - Coran rejected fatherhood */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck(Myself,CD_STATE_NOTVALID)
  !StateCheck("coran",CD_STATE_NOTVALID)
  Alignment("coran",CHAOTIC_NEUTRAL) 
  Global("P#Briel_Stay","GLOBAL",2)
  InParty("coran")
  Global("B!CoranNamara2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("coran")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavCorNam2
@133
DO ~SetGlobal("B!CoranNamara2","GLOBAL",1)~
== ~%CORAN_BANTER%~ @134
== ~BB!GAVIN~ @135
== ~%CORAN_BANTER%~ @136
== ~BB!GAVIN~ @137
== ~%CORAN_BANTER%~ @138
END
IF ~!Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavCorNam2A
IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavCorNam2B

CHAIN ~BB!GAVIN~ BGavCorNam2A
@139
== ~%CORAN_BANTER%~ @140
== ~BB!GAVIN~ @141
== ~%CORAN_BANTER%~ @142
== ~BB!GAVIN~ @143
EXIT

CHAIN ~BB!GAVIN~ BGavCorNam2B
@144
== ~%CORAN_BANTER%~ @140
== ~BB!GAVIN~ @141
== ~%CORAN_BANTER%~ @142
== ~BB!GAVIN~ @143
EXIT

/* Gavin-Coran - Coran embraced fatherhood */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("coran",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Alignment("coran",CHAOTIC_GOOD) 
  Global("P#CoranHasBaby","GLOBAL",1)
  InParty("coran")
  Global("B!CoranNamara1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("coran")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ KACO2
@145
DO ~SetGlobal("B!CoranNamara1","GLOBAL",1)~
== ~%CORAN_BANTER%~ @146
== ~BB!GAVIN~ @147
== ~%CORAN_BANTER%~ @148
== ~BB!GAVIN~ @149
== ~%CORAN_BANTER%~ @150
EXIT

/* Gavin-Dynaheir1 - on art */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("dynaheir",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("dynaheir")
  Global("B!GavinDynaheir1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("dynaheir")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  OR(2) AreaType(FOREST) AreaType(OUTDOOR)
  ~ THEN
~BB!GAVIN~ BGavinDynaheir1
@151
DO ~SetGlobal("B!GavinDynaheir1","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ @152
== ~BB!GAVIN~ @153
== ~%DYNAHEIR_BANTER%~ @154
== ~BB!GAVIN~ @155
== ~%DYNAHEIR_BANTER%~ @156
== ~BB!GAVIN~ @157
== ~%DYNAHEIR_BANTER%~ @158
== ~BB!GAVIN~ @159
EXIT

/* Gavin-Dynaheir2 - Minsc's devotion */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("dynaheir",CD_STATE_NOTVALID)
  !StateCheck("minsc",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("dynaheir")
  InParty("minsc")
  Global("B!GavinDynaheir2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("dynaheir")
  See("minsc")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinDynaheir2
@160
DO ~SetGlobal("B!GavinDynaheir2","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ @161
== ~BB!GAVIN~ @162
== ~%DYNAHEIR_BANTER%~ @163
== ~BB!GAVIN~ @164
== ~%DYNAHEIR_BANTER%~ @165
== ~BB!GAVIN~ @166
= @167
EXIT

/* Gavin-Edwin1 - Edwin's dating habits */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("edwin",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("edwin")
  Global("B!GavinEdwin1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("edwin")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinEdwin1
@168
DO ~SetGlobal("B!GavinEdwin1","GLOBAL",1)~
== ~%EDWIN_BANTER%~ @169
== ~BB!GAVIN~ @170
== ~%EDWIN_BANTER%~ @171
== ~BB!GAVIN~ @172
== ~%EDWIN_BANTER%~ @173
== ~BB!GAVIN~ @174
== ~%EDWIN_BANTER%~ @175
END
IF ~!Global("B!GavinRomanceActive","GLOBAL",1) !Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavEdBanter1End2
IF ~OR(2) Global("B!GavinRomanceActive","GLOBAL",1) Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavEdBanter1End1


CHAIN ~BB!GAVIN~ BGavEdBanter1End1
@176
== ~%EDWIN_BANTER%~ @177 
EXIT

CHAIN ~BB!GAVIN~ BGavEdBanter1End2
@178
== ~%EDWIN_BANTER%~ @179 
EXIT

/* Gavin-Edwin2 - on the infallibility of Red Wizards */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("edwin",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("edwin")
  Global("B!GavinEdwin2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("edwin")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinEdwin2
@180
DO ~SetGlobal("B!GavinEdwin2","GLOBAL",1)~
== ~%EDWIN_BANTER%~ @181
== ~BB!GAVIN~ @182
== ~%EDWIN_BANTER%~ @183
== ~BB!GAVIN~ @184
== ~%EDWIN_BANTER%~ @185
== ~BB!GAVIN~ @186
== ~%EDWIN_BANTER%~ @187
END
++ @188 EXTERN ~BB!GAVIN~ BGavEdBanter2End1
++ @189 EXTERN ~BB!GAVIN~ BGavEdBanter2End2
++ @190 EXTERN ~BB!GAVIN~ BGavEdBanter2End3
++ @191 EXTERN ~BB!GAVIN~ BGavEdBanter2End4

CHAIN ~BB!GAVIN~ BGavEdBanter2End1
@192
== ~%EDWIN_BANTER%~ @193
EXIT

CHAIN ~BB!GAVIN~ BGavEdBanter2End2
@194
== ~%EDWIN_BANTER%~ @193
EXIT

CHAIN ~BB!GAVIN~ BGavEdBanter2End3
@195
== ~%EDWIN_BANTER%~ @193
EXIT

CHAIN ~BB!GAVIN~ BGavEdBanter2End4
@196 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
= @197
== ~%EDWIN_BANTER%~ @193
EXIT

/* Gavin-Eldoth1 - Eldoth the bard */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("eldoth",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("eldoth")
  Global("B!GavinEldoth1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("eldoth")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinEldoth1
@198
DO ~SetGlobal("B!GavinEldoth1","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ @199
== ~BB!GAVIN~ @200
== ~%ELDOTH_BANTER%~ IF ~!InParty("skie")~ THEN @201
== ~%ELDOTH_BANTER%~ IF ~InParty("skie")~ THEN @202
EXIT

/* Gavin-Eldoth2 - about Skie */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("eldoth",CD_STATE_NOTVALID)
  !StateCheck("eldoth",CD_STATE_NOTVALID)
  !StateCheck("skie",CD_STATE_NOTVALID)
  InParty("eldoth")
  InParty("skie")
  Global("B!GavinEldoth2","GLOBAL",0)
  !Global("B!GavinEldoth3","GLOBAL",1)
  CombatCounter(0)
  !See([ENEMY])
  See("eldoth")
  See("skie")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinEldoth2
@203
DO ~SetGlobal("B!GavinEldoth2","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ @204 
== ~%SKIE_BANTER%~ @205
== ~BB!GAVIN~ @206
== ~%ELDOTH_BANTER%~ @207
== ~BB!GAVIN~ @208
== ~%ELDOTH_BANTER%~ @209
== ~BB!GAVIN~ @210
== ~%ELDOTH_BANTER%~ @211
== ~BB!GAVIN~ @212
== ~%ELDOTH_BANTER%~ @213
== ~BB!GAVIN~ @214
EXIT
 
/* Gavin-Skie1 - about Eldoth */
 CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("eldoth",CD_STATE_NOTVALID)
  !StateCheck("skie",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("eldoth")
  InParty("skie")
  GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%)
  Global("B!GavinSkieEldoth","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("eldoth")
  See("skie")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinSkieEldoth
@215
DO ~SetGlobal("B!GavinSkieEldoth","GLOBAL",1)~
== ~%SKIE_BANTER%~ @216
== ~BB!GAVIN~ @217
== ~%SKIE_BANTER%~ @218
== ~BB!GAVIN~ @219
== ~%SKIE_BANTER%~ @220
== ~BB!GAVIN~ @221
== ~%SKIE_BANTER%~ @222
== ~BB!GAVIN~ @223
== ~%SKIE_BANTER%~ @224
== ~BB!GAVIN~ @225
== ~%SKIE_BANTER%~ @226
== ~BB!GAVIN~ @227
EXIT
 
/* Gavin-Skie2 - about Eldoth 2 */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("eldoth",CD_STATE_NOTVALID)
  !StateCheck("skie",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("eldoth")
  InParty("skie")
  Global("B!GavinSkieEldoth","GLOBAL",1)
  CombatCounter(0)
  !See([ENEMY])
  See("eldoth")
  See("skie")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinSkieEldoth
@228
DO ~SetGlobal("B!GavinSkieEldoth","GLOBAL",2)~
== ~%SKIE_BANTER%~ @229
== ~BB!GAVIN~ @230
== ~%SKIE_BANTER%~ @231
== ~BB!GAVIN~ @232
== ~%SKIE_BANTER%~ @233
== ~BB!GAVIN~ @234
== ~%SKIE_BANTER%~ @235
== ~BB!GAVIN~ @236
= @237
 EXIT

/* Gavin-Eldoth3 - Eldoth the manipulative bastard */
CHAIN
IF WEIGHT #-1 
~%BGT_VAR%
  !StateCheck("eldoth",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("eldoth")
  !Global("B!GavinEldoth2","GLOBAL",1)
  Global("B!GavinEldoth3","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("eldoth")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinEldoth3
@203
DO ~SetGlobal("B!GavinEldoth3","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ @238
== ~BB!GAVIN~ @239
== ~%ELDOTH_BANTER%~ @240
= @241
== ~BB!GAVIN~ @242
EXIT

/* Gavin-Faldorn1 - the way to live */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("faldorn",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("faldorn")
  Global("B!GavinFaldorn1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("faldorn")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN
~BB!GAVIN~ BGavinFaldorn1
@243
DO ~SetGlobal("B!GavinFaldorn1","GLOBAL",1)~
== ~%FALDORN_BANTER%~ @244
== ~BB!GAVIN~ @245
== ~%FALDORN_BANTER%~ @246
== ~BB!GAVIN~ @247
== ~%FALDORN_BANTER%~ @248
== ~BB!GAVIN~ @249
== ~%FALDORN_BANTER%~ @250
== ~BB!GAVIN~ @251
== ~%FALDORN_BANTER%~ @252
== ~BB!GAVIN~ @253
== ~%FALDORN_BANTER%~ @254
== ~BB!GAVIN~ @255
EXIT

/* Gavin-Faldorn2 - worry about clean shirts */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("faldorn")
  Global("B!GavinFaldorn2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("faldorn")
  !StateCheck("faldorn",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinFaldorn2
@256
DO ~SetGlobal("B!GavinFaldorn2","GLOBAL",1)~
== %FALDORN_BANTER% @257 
== ~BB!GAVIN~ @258
= @259
== %FALDORN_BANTER% @260
== ~BB!GAVIN~ @261
== %FALDORN_BANTER% @262
EXIT

/* Gavin-Garrick1 - happy endings */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("garrick")
  !StateCheck("garrick",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinGarrick1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("garrick")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinGarrick1
@263
DO ~SetGlobal("B!GavinGarrick1","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @264
== ~BB!GAVIN~ @265
== ~%GARRICK_BANTER%~ @266
== ~BB!GAVIN~ @267
== ~%GARRICK_BANTER%~ @268
== ~BB!GAVIN~ @269
EXIT

/* Gavin-Garrick2 - the merits of popular approval */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("garrick")
  !StateCheck("garrick",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinGarrick2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("garrick")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinGarrick2
@270
DO ~SetGlobal("B!GavinGarrick2","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @271
== ~BB!GAVIN~ @272
== ~%GARRICK_BANTER%~ @273
== ~BB!GAVIN~ @274
== ~%GARRICK_BANTER%~ @275
== ~BB!GAVIN~ @276
== ~%GARRICK_BANTER%~ @277
== ~BB!GAVIN~ @278
EXIT

/* Gavin-Imoen1 - Gavin's sketchbook */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("%IMOEN_DV%")
  !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinImoen1","GLOBAL",0)
  GlobalGT("Chapter","GLOBAL",%tutu_chapter_2%)
  CombatCounter(0)
  !See([ENEMY])
  See("%IMOEN_DV%")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinImoen1
@279
DO ~SetGlobal("B!GavinImoen1","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @280
== ~BB!GAVIN~ @281
== ~%IMOEN_BANTER%~ @282
== ~BB!GAVIN~ @283
== ~%IMOEN_BANTER%~ @284
== ~BB!GAVIN~ @285
END
IF ~OR(2) Global("B!GavinRomanceActive","GLOBAL",1) Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~%IMOEN_BANTER%~ BGavImBanterEnd1 
IF ~!Global("B!GavinRomanceActive","GLOBAL",1) !Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~%IMOEN_BANTER%~ BGavImBanterEnd2

CHAIN ~%IMOEN_BANTER%~ BGavImBanterEnd1
@286
== ~BB!GAVIN~ @287 
EXIT

CHAIN ~%IMOEN_BANTER%~ BGavImBanterEnd2
@288
== ~BB!GAVIN~ @289 
EXIT

/* Gavin-Imoen2 - interest in magic */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("%IMOEN_DV%")
  !Class("%IMOEN_DV%",MAGE_ALL)
  Dead("tarnesh")
  !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinImoen2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("%IMOEN_DV%")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinImoen2
@290
DO ~SetGlobal("B!GavinImoen2","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @291
== ~BB!GAVIN~ @292
== ~%IMOEN_BANTER%~ @293
== ~BB!GAVIN~ @294
== ~%IMOEN_BANTER%~ @295
== ~BB!GAVIN~ @296
= @297
== ~%IMOEN_BANTER%~ @298
== ~BB!GAVIN~ @299
== ~%IMOEN_BANTER%~ @300
== ~BB!GAVIN~ @301
== ~%IMOEN_BANTER%~ @302
== ~BB!GAVIN~ @303
== ~%IMOEN_BANTER%~ @304
EXIT

/* Gavin-Imoen3 - Gavin's pink shirt */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("%IMOEN_DV%")
  !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinImoen3","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("%IMOEN_DV%")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinImoen3
@305
DO ~SetGlobal("B!GavinImoen3","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @306
== ~BB!GAVIN~ @307
== ~%IMOEN_BANTER%~ @308
== ~BB!GAVIN~ @309
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @310
== ~BB!GAVIN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @311
== ~BB!GAVIN~ IF ~OR(3) !InParty("sharteel") !InMyArea("sharteel") StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @312
== ~%IMOEN_BANTER%~ @313
== ~BB!GAVIN~ @314
== ~%IMOEN_BANTER%~ @315
== ~BB!GAVIN~ @316
== ~%IMOEN_BANTER%~ @317
== ~BB!GAVIN~ @318
EXIT

/* Gavin-Imoen4 - the race */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("%IMOEN_DV%")
  !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  AreaType(OUTDOOR)
  Global("B!GavinImoen4","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("%IMOEN_DV%")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinImoen4
@319
DO ~SetGlobal("B!GavinImoen4","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @320
== ~BB!GAVIN~ @321
== ~%IMOEN_BANTER%~ @322
== ~BB!GAVIN~ @323
== ~%IMOEN_BANTER%~ @324
== ~BB!GAVIN~ @325
== ~%IMOEN_BANTER%~ @326
== ~BB!GAVIN~ @327
= @328
== ~%IMOEN_BANTER%~ @329
== ~BB!GAVIN~ @330
== ~%IMOEN_BANTER%~ @331
EXIT

/* Gavin-Jaheira1 - Gavin makes a tonic */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("jaheira")
  !StateCheck("jaheira",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinJaheira1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("jaheira")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinJaheira1
@332
DO ~SetGlobal("B!GavinJaheira1","GLOBAL",1)~
== ~%JAHEIRA_BANTER%~ @333
== ~BB!GAVIN~ @334
== ~%JAHEIRA_BANTER%~ @335
== ~BB!GAVIN~ IF ~InParty("khalid")~ THEN @336
== ~BB!GAVIN~ IF ~!InParty("khalid")~ THEN @337
== ~%JAHEIRA_BANTER%~ @338
== ~BB!GAVIN~ @339
== ~%JAHEIRA_BANTER%~ @340
== ~BB!GAVIN~ @341
== ~%JAHEIRA_BANTER%~ @342
== ~BB!GAVIN~ @343
== ~%JAHEIRA_BANTER%~ @344
EXIT

/* Gavin-Jaheira3 - the Balance */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("jaheira")
  !StateCheck("jaheira",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinJaheira3","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("jaheira")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinJaheira3
@345
DO ~SetGlobal("B!GavinJaheira3","GLOBAL",1)~
== ~%JAHEIRA_BANTER%~ @346
== ~BB!GAVIN~ @347
== ~%JAHEIRA_BANTER%~ @348
== ~BB!GAVIN~ @349
== ~%JAHEIRA_BANTER%~ @350
== ~BB!GAVIN~ @351
== ~%JAHEIRA_BANTER%~ @352
== ~BB!GAVIN~ @353
== ~%JAHEIRA_BANTER%~ @354
== ~BB!GAVIN~ @355
== ~%JAHEIRA_BANTER%~ @356
EXIT

/* Gavin-Jaheira2 - Gavin's past */
CHAIN
IF WEIGHT #-1 
~Global("B!GavinJaheira2","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinJaheira2
@357
DO ~SetGlobal("B!GavinJaheira2","GLOBAL",3)~
== ~%JAHEIRA_JOINED%~ @358
== ~B!GAVINJ~ @359
= @360
== ~%JAHEIRA_JOINED%~ @361
== ~B!GAVINJ~ @362
== ~%JAHEIRA_JOINED%~ @363
== ~B!GAVINJ~ @364
== ~%JAHEIRA_JOINED%~ @365
END
IF ~!GlobalGT("B!GavinRomanceActive","GLOBAL",0)~ THEN EXTERN ~B!GAVINJ~ BGavJahBanter2End2
IF ~GlobalGT("B!GavinRomanceActive","GLOBAL",0)~ THEN EXTERN ~B!GAVINJ~ BGavJahBanter2End1

CHAIN ~B!GAVINJ~ BGavJahBanter2End1
@366
== ~%JAHEIRA_JOINED%~ @367
= @368
== ~B!GAVINJ~ @369
EXIT

CHAIN ~B!GAVINJ~ BGavJahBanter2End2
@370
== ~%JAHEIRA_JOINED%~ @371
END
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)
Global("B!GavinAjantisLanie","GLOBAL",0)~ THEN DO ~SetGlobal("B!GavinAjantisLanie","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavJahBanter2End3
IF ~OR(4) !InParty("ajantis") !InMyArea("ajantis") StateCheck("ajantis",CD_STATE_NOTVALID)
Global("B!GavinAjantisLanie","GLOBAL",1)~ THEN EXTERN ~B!GAVINJ~ BGavJahBanter2End4

CHAIN ~B!GAVINJ~ BGavJahBanter2End3
@372
END
IF ~~ THEN EXTERN ~%AJANTIS_BANTER%~ ajantis_gavin_lanie


/* Ajantis - Gavin about Lanie will trigger on it's own if Jaheira is not in party */
CHAIN
IF WEIGHT #-1
~InParty("B!GAVIN")
  InParty(Myself)
  CombatCounter(0)
  !See([ENEMY])
  InMyArea(Player1)
  Detect("B!GAVIN")
  !StateCheck("B!GAVIN",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
OR(2)
	GlobalGT("B!GavAddTalk","GLOBAL",8)
	GlobalGT("B!GavinLovetalk","GLOBAL",24)
GlobalLT("B!GavinJaheira2","GLOBAL",3)
Global("B!GavinAjantisLanie","GLOBAL",0)~ THEN ~%AJANTIS_BANTER%~ ajantis_gavin_lanie
@373 DO ~SetGlobal("B!GavinAjantisLanie","GLOBAL",1)~
== ~B!GAVINJ~ @374
== ~%AJANTIS_JOINED%~ @375
= @376
== ~B!GAVINJ~ @377
== ~%AJANTIS_JOINED%~ @378
== ~B!GAVINJ~ @379
== ~%AJANTIS_JOINED%~ @380
== ~B!GAVINJ~ @381
== ~%AJANTIS_JOINED%~ @382
== ~B!GAVINJ~ @383
== ~%AJANTIS_JOINED%~ @384 
END
IF ~~ THEN EXIT
IF ~InParty("jaheira") See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN EXTERN %JAHEIRA_JOINED% BGavJahBanter2End5


CHAIN ~B!GAVINJ~ BGavJahBanter2End4
@372
= @393
END
IF ~~ THEN EXTERN %JAHEIRA_JOINED% BGavJahBanter2End5

CHAIN %JAHEIRA_JOINED% BGavJahBanter2End5
@385
== ~B!GAVINJ~ @386
= @387
== ~%JAHEIRA_JOINED%~ @388
END
++ @389 EXIT
++ @390 EXIT
++ @391 EXIT
++ @392 EXTERN ~B!GAVINJ~ BGavJahBanter2GavinLeaves

CHAIN ~B!GAVINJ~ BGavJahBanter2GavinLeaves
@394
END
++ @395 EXTERN ~B!GAVINJ~ BGavJahBant2Goodbye
++ @396 EXIT

CHAIN ~B!GAVINJ~ BGavJahBant2Goodbye
@397
DO ~LeaveParty() ChangeAIScript("","DEFAULT") EscapeArea()~ 
EXIT




/* Gavin-Kagain1 - armor bite */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("kagain")
  !StateCheck("kagain",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinKagain1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("kagain")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinKagain1
@398
DO ~SetGlobal("B!GavinKagain1","GLOBAL",1)~
== ~%KAGAIN_BANTER%~ @399
== ~BB!GAVIN~ @400 
== ~%KAGAIN_BANTER%~ @401
== ~BB!GAVIN~ @402
== ~%KAGAIN_BANTER%~ @403
EXIT

/* Gavin-Kagain2 - it's only business */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("kagain")
  !StateCheck("kagain",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinKagain2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("kagain")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinKagain2
@404
DO ~SetGlobal("B!GavinKagain2","GLOBAL",1)~
== ~%KAGAIN_BANTER%~ @405
== ~BB!GAVIN~ @406
== ~%KAGAIN_BANTER%~ @407
== ~BB!GAVIN~ @408
== ~%KAGAIN_BANTER%~ @409
EXIT

/* Gavin-Khalid1 - clumsy */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("khalid")
  !StateCheck("khalid",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinKhalid1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("khalid")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinKhalid1
@410
DO ~SetGlobal("B!GavinKhalid1","GLOBAL",1)~
== ~%KHALID_BANTER%~ @411
== ~BB!GAVIN~ @412
== ~%KHALID_BANTER%~ @413
== ~BB!GAVIN~ @414
== ~%KHALID_BANTER%~ @415
== ~BB!GAVIN~ @416
== ~%KHALID_BANTER%~ @417
== ~BB!GAVIN~ @418
== ~%KHALID_BANTER%~ @419
EXIT

/* Gavin-Khalid2 - adventuring */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("khalid")
  InParty("jaheira")
  !StateCheck("khalid",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinKhalid2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("khalid")
  !Dead("jaheira")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinKhalid2
@420
DO ~SetGlobal("B!GavinKhalid2","GLOBAL",1)~
== ~%KHALID_BANTER%~ @421
== ~BB!GAVIN~ @422
== ~%KHALID_BANTER%~ @423
== ~BB!GAVIN~ @424
== ~%KHALID_BANTER%~ @425
== ~BB!GAVIN~ @426
== ~%KHALID_BANTER%~ @427
== ~BB!GAVIN~ @428
== ~%KHALID_BANTER%~ @429
== ~BB!GAVIN~ @430
== ~%KHALID_BANTER%~ @431
= @432
== ~BB!GAVIN~ @433
== ~%KHALID_BANTER%~ @434
EXIT

/* Gavin-Kivan1 - moody */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("kivan")
  !StateCheck("kivan",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinKivan1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("kivan")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinKivan1
@435
DO ~SetGlobal("B!GavinKivan1","GLOBAL",1)~
== ~%KIVAN_BANTER%~ IF ~InParty("%IMOEN_DV%")~ THEN @436
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%")~ THEN @437
== ~%KIVAN_BANTER%~ IF ~!InParty("%IMOEN_DV%")~ THEN @438
== ~BB!GAVIN~ @439
== ~%KIVAN_BANTER%~ @440
== ~BB!GAVIN~ @441
== ~%KIVAN_BANTER%~ @442
== ~BB!GAVIN~ @443
EXIT


/* Gavin-Kivan2 - devotion */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("kivan")
  !GlobalGT("B!GavinRomanceActive","GLOBAL",0)
  !StateCheck("kivan",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinKivan2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("kivan")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinKivan2
@444
DO ~SetGlobal("B!GavinKivan2","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @445
== ~BB!GAVIN~ @446
== ~%KIVAN_BANTER%~ @447
== ~BB!GAVIN~ @448
== ~%KIVAN_BANTER%~ @449
== ~BB!GAVIN~ @450
== ~%KIVAN_BANTER%~ @451
== ~BB!GAVIN~ @452
= @453
= @454
== ~%KIVAN_BANTER%~ @455
EXIT


/* Gavin-Minsc1 - about Boo */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("minsc")
  !StateCheck("minsc",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinMinsc1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("minsc")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinMinsc1
@456
DO ~SetGlobal("B!GavinMinsc1","GLOBAL",1)~
== ~%MINSC_BANTER%~ @457
== ~BB!GAVIN~ @458
== ~%MINSC_BANTER%~ @459
== ~BB!GAVIN~ @460
== ~%MINSC_BANTER%~ @461
== ~BB!GAVIN~ @462
== ~%MINSC_BANTER%~ @463
== ~BB!GAVIN~ @464
EXIT

/* Gavin-Minsc2 - the Ice Dragon Berserker Lodge */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("minsc")
  !StateCheck("minsc",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinMinsc2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("minsc")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinMinsc2
@465
DO ~SetGlobal("B!GavinMinsc2","GLOBAL",1)~
== ~%MINSC_BANTER%~ @466
== ~BB!GAVIN~ @467
== ~%MINSC_BANTER%~ @468
== ~BB!GAVIN~ @469
== ~%MINSC_BANTER%~ @470
== ~BB!GAVIN~ @471
= @472
== ~%MINSC_BANTER%~ @473
== ~BB!GAVIN~ @474
== ~%MINSC_BANTER%~ @475
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ @476
== ~BB!GAVIN~ @477
== ~%MINSC_BANTER%~ @478
EXIT

/* Gavin-Minsc3 *- Boo's snacking habits */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("minsc")
  !StateCheck("minsc",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinMinsc3","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("minsc")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinMinsc3
@479
DO ~SetGlobal("B!GavinMinsc3","GLOBAL",1)~
== %MINSC_BANTER% @480 
== ~BB!GAVIN~ @481
== %MINSC_BANTER% @482
== ~BB!GAVIN~ @483
== %MINSC_BANTER% @484
== ~BB!GAVIN~ @485
== %MINSC_BANTER% @486 
= @487
== ~BB!GAVIN~ @488
== %MINSC_BANTER% @489
EXIT

/* Gavin-Montaron1 - ethics */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("montaron")
  !StateCheck("montaron",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinMontaron1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("montaron")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinMontaron1
@490
DO ~SetGlobal("B!GavinMontaron1","GLOBAL",1)~
== ~%MONTARON_BANTER%~ @491
== ~BB!GAVIN~ @492
== ~%MONTARON_BANTER%~ @493
== ~BB!GAVIN~ @494
== ~%MONTARON_BANTER%~ @495
== ~BB!GAVIN~ @496
== ~%MONTARON_BANTER%~ @497
EXIT

/* Gavin-Montaron2 - the value of money */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("montaron")
  !StateCheck("montaron",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinMontaron2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("montaron")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinMontaron2
@498
DO ~SetGlobal("B!GavinMontaron2","GLOBAL",1)~
== ~%MONTARON_BANTER%~ @499
== ~BB!GAVIN~ @500
== ~%MONTARON_BANTER%~ @501
== ~BB!GAVIN~ @502
== ~%MONTARON_BANTER%~ @503
== ~BB!GAVIN~ @504
== ~%MONTARON_BANTER%~ @505
== ~BB!GAVIN~ @506
== ~%MONTARON_BANTER%~ @507
== ~BB!GAVIN~ @508
== ~%MONTARON_BANTER%~ @509
== ~BB!GAVIN~ @510
== ~%MONTARON_BANTER%~ @511
== ~BB!GAVIN~ @512
EXIT

/* Gavin-Quayle1 - unsolicited advice */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("quayle")
  !StateCheck("quayle",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinQuayle1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("quayle")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinQuayle1
@513
DO ~SetGlobal("B!GavinQuayle1","GLOBAL",1)~
== ~%QUAYLE_BANTER%~ @514 
== ~BB!GAVIN~ @515
== ~%QUAYLE_BANTER%~ @516
END
IF ~OR(2) GLOBAL("B!GavinRomanceActive","GLOBAL",1) GLOBAL("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavQuayleBanter1End1
IF ~!GLOBAL("B!GavinRomanceActive","GLOBAL",1) !GLOBAL("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavQuayleBanter1End2

CHAIN ~BB!GAVIN~ BGavQuayleBanter1End1 
@517
== ~%QUAYLE_BANTER%~ @518
== ~BB!GAVIN~ @519
EXIT

CHAIN ~BB!GAVIN~ BGavQuayleBanter1End2
 @520
== ~%QUAYLE_BANTER%~ @518
== ~BB!GAVIN~ @519
EXIT

/* Gavin-Safana1 - Safana's power of attraction */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("safana")
  !StateCheck("safana",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinSafana1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("safana")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinSafana1
@521
DO ~SetGlobal("B!GavinSafana1","GLOBAL",1)~
== ~%SAFANA_BANTER%~ @522
== ~BB!GAVIN~ @523
== ~%SAFANA_BANTER%~ @524
END
IF ~Global("B!GavinRomanceActive","GLOBAL",1)~ THEN EXTERN ~BB!GAVIN~ BGavSafBanter1End1 
IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavSafBanter1End2 
IF ~!Global("B!GavinRomanceActive","GLOBAL",1) !Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~BB!GAVIN~ BGavSafBanter1End3 


CHAIN ~BB!GAVIN~ BGavSafBanter1End1 
@525
== ~%SAFANA_BANTER%~ @526
== ~BB!GAVIN~ @527
== ~%SAFANA_BANTER%~ @528
EXIT

CHAIN ~BB!GAVIN~ BGavSafBanter1End2
@529
== ~%SAFANA_BANTER%~ @526
== ~BB!GAVIN~ @527
== ~%SAFANA_BANTER%~ @528
EXIT

CHAIN ~BB!GAVIN~ BGavSafBanter1End3
@530
== ~%SAFANA_BANTER%~ @526
== ~BB!GAVIN~ @527
== ~%SAFANA_BANTER%~ @528
EXIT

/* Gavin-Safana2 - Gavin's lack of style */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("safana")
  !StateCheck("safana",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinSafana2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("safana")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinSafana2
@531
DO ~SetGlobal("B!GavinSafana2","GLOBAL",1)~
== ~%SAFANA_BANTER%~ @532 
== ~BB!GAVIN~ @533
== ~%SAFANA_BANTER%~ @534
== ~BB!GAVIN~ @535
EXIT

/* Gavin-Shar-Teel1 - Gavin the coward */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("sharteel")
  !StateCheck("sharteel",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinSharTeel1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("sharteel")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinSharTeel1
@536
DO ~SetGlobal("B!GavinSharTeel1","GLOBAL",1)~
== ~%SHARTEEL_BANTER%~ @537
== ~BB!GAVIN~ @538
== ~%SHARTEEL_BANTER%~ @539
== ~BB!GAVIN~ @540
== ~%SHARTEEL_BANTER%~ @541
== ~BB!GAVIN~ @542
== ~%SHARTEEL_BANTER%~ @543
== ~BB!GAVIN~ IF ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,10)~ THEN @544
== ~BB!GAVIN~ IF ~OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,11)~ THEN @545
EXIT

/* Gavin-Skie3 - adventure */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("skie")
  !StateCheck("skie",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinSkie1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("skie")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinSkie1
@546
DO ~SetGlobal("B!GavinSkie1","GLOBAL",1)~
== ~%SKIE_BANTER%~ @547
END
IF ~InParty("xan")~ THEN EXTERN ~%XAN_BANTER%~ BGavSkieBanter1End1
IF ~!InParty("xan")~ THEN EXTERN ~BB!GAVIN~ BGavSkieBanter1End2


CHAIN ~%XAN_BANTER%~ BGavSkieBanter1End1
@548
== ~%SKIE_BANTER%~ @549
== ~BB!GAVIN~ @550
== ~%SKIE_BANTER%~ @551
== ~BB!GAVIN~ @552
== ~%SKIE_BANTER%~ @553
== ~BB!GAVIN~ @554
EXIT

CHAIN ~BB!GAVIN~ BGavSkieBanter1End2
@555
== ~%SKIE_BANTER%~ @556
== ~BB!GAVIN~ @557
== ~%SKIE_BANTER%~ @551
== ~BB!GAVIN~ @552
== ~%SKIE_BANTER%~ @553
== ~BB!GAVIN~ @554
EXIT

/* Gavin-Skie4 - Skie's shopping spree */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("skie")
  !StateCheck("skie",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinSkie2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("skie")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinSkie2
@558
DO ~SetGlobal("B!GavinSkie2","GLOBAL",1)~
== ~%SKIE_BANTER%~ @559
== ~BB!GAVIN~ @560
= @561
== ~%SKIE_BANTER%~ @562
== ~BB!GAVIN~ @563
== ~%SKIE_BANTER%~ @564
== ~BB!GAVIN~ @565
== ~%SKIE_BANTER%~ @566
== ~BB!GAVIN~ @567
== ~%SKIE_BANTER%~ @568
== ~BB!GAVIN~ @569
EXIT

/* Gavin-Tiax1 - stepping on toes */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("tiax")
  !StateCheck("tiax",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinTiax1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("tiax")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN 
~BB!GAVIN~ BGavinTiax1
@570
DO ~SetGlobal("B!GavinTiax1","GLOBAL",1)~
== ~%TIAX_BANTER%~ @571
== ~BB!GAVIN~ @572
== ~%TIAX_BANTER%~ @573
END
++ @574 EXTERN ~BB!GAVIN~ BGavin_Tiax_01
++ @575 EXTERN %TIAX_BANTER% BGavin_Tiax_02


APPEND ~BB!GAVIN~
IF ~~ THEN BGavin_Tiax_01
SAY @576
IF ~~ THEN EXIT
END
END

APPEND ~%TIAX_BANTER%~
IF ~~ THEN BGavin_Tiax_02
SAY @577
IF ~~ THEN EXIT
END
END

/* Gavin-Tiax2 - cooking for Tiax */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("tiax")
  !StateCheck("tiax",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinTiax2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("tiax")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinTiax2
@578
DO ~SetGlobal("B!GavinTiax2","GLOBAL",1)~
== ~%TIAX_BANTER%~ @579
== ~BB!GAVIN~ @580
== ~%TIAX_BANTER%~ @581
== ~BB!GAVIN~ @582
== ~%TIAX_BANTER%~ @583
== ~BB!GAVIN~ @584
== ~%TIAX_BANTER%~ @585
END
++ @586 EXTERN ~BB!GAVIN~ BGavTiaxBanter2End1
++ @587 EXTERN ~BB!GAVIN~ BGavTiaxBanter2End2
++ @588 EXIT


APPEND ~BB!GAVIN~
IF ~~ THEN BEGIN BGavTiaxBanter2End1
SAY @589
END 
END

CHAIN ~BB!GAVIN~ BGavTiaxBanter2End2
@590
== ~%TIAX_BANTER%~ @591
== ~BB!GAVIN~ @592
= @593
EXIT

/* Gavin-Viconia1 - drow and humans */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("viconia")
  !StateCheck("viconia",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinViconia1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("viconia")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinViconia1
@594
DO ~SetGlobal("B!GavinViconia1","GLOBAL",1)~
== ~%VICONIA_BANTER%~ @595 
== ~BB!GAVIN~ @596
== ~%VICONIA_BANTER%~ @597
== ~BB!GAVIN~ @598
== ~%VICONIA_BANTER%~ @599
== ~BB!GAVIN~ @600
== ~%VICONIA_BANTER%~ @601
== ~BB!GAVIN~ @602
== ~%VICONIA_BANTER%~ @603
EXIT

/* Gavin-Viconia2 - Gavin's 'self-righteousness' */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("viconia")
  !StateCheck("viconia",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinViconia2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("viconia")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinViconia2
@604
DO ~SetGlobal("B!GavinViconia2","GLOBAL",1)~
== ~%VICONIA_BANTER%~ @605
== ~BB!GAVIN~ @606
== ~%VICONIA_BANTER%~ @607
== ~BB!GAVIN~ @608
== ~%VICONIA_BANTER%~ @609
= @610
== ~BB!GAVIN~ @611
== ~%VICONIA_BANTER%~ @612
END
++ @613 EXTERN ~BB!GAVIN~ BGavVicBanter2End1
++ @614 EXTERN ~BB!GAVIN~ BGavVicBanter2End2

APPEND ~BB!GAVIN~ 
IF ~~ THEN BGavVicBanter2End1
SAY @615
IF ~~ THEN EXIT
END

IF ~~ THEN BGavVicBanter2End2
SAY @616
IF ~~ THEN EXIT
END 
END

/* Gavin-Viconia3 - toe stepping */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("viconia")
  !StateCheck("viconia",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinViconia3","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("viconia")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinViconia3
@617 
DO ~SetGlobal("B!GavinViconia3","GLOBAL",1)~
== ~%VICONIA_BANTER%~ @618
== ~BB!GAVIN~ @619
== ~%VICONIA_BANTER%~ @620
== ~BB!GAVIN~ @615
EXIT

/* Gavin-Xan1 - home */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("xan")
  !StateCheck("xan",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinXan1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("xan")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinXan1
@621
DO ~SetGlobal("B!GavinXan1","GLOBAL",1)~
== ~%XAN_BANTER%~ @622
== ~BB!GAVIN~ @623
== ~%XAN_BANTER%~ @624
== ~BB!GAVIN~ @625
== ~%XAN_BANTER%~ @626
== ~BB!GAVIN~ @627
== ~%XAN_BANTER%~ @628
== ~BB!GAVIN~ @629
== ~%XAN_BANTER%~ @630
== ~BB!GAVIN~ @631
== ~%XAN_BANTER%~ @632
== ~BB!GAVIN~ @633
EXIT

/* Gavin-Xan2 - the isolation of the elves */
CHAIN
IF WEIGHT #-1 
~%BGT_VAR%
  InParty("xan")
  !StateCheck("xan",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinXan2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("xan")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinXan2
@634
DO ~SetGlobal("B!GavinXan2","GLOBAL",1)~
== ~%XAN_BANTER%~ @635
== ~BB!GAVIN~ @636
== ~%XAN_BANTER%~ @637
== ~BB!GAVIN~ @638
== ~%XAN_BANTER%~ @639
== ~BB!GAVIN~ @640
EXIT

/* Gavin-Xzar1 - Gavin's squeamishness */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("xzar")
  !StateCheck("xzar",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinXzar1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("xzar")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinXzar1
@641
DO ~SetGlobal("B!GavinXzar1","GLOBAL",1)~
== ~%XZAR_BANTER%~ @642
== ~BB!GAVIN~ @643
== ~%XZAR_BANTER%~ @644
== ~BB!GAVIN~ @645
== ~%XZAR_BANTER%~ @646
EXIT

/* Gavin-Xzar2 - Xzar's unique approch to necromancy */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("xzar")
  !StateCheck("xzar",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinXzar2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("xzar")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinXzar2
@647
DO ~SetGlobal("B!GavinXzar2","GLOBAL",1)~
== ~%XZAR_BANTER%~ @648
== ~BB!GAVIN~ @649
= @650
== ~%XZAR_BANTER%~ @651
== ~BB!GAVIN~ @652
== ~%XZAR_BANTER%~ @653
== ~BB!GAVIN~ @654
== ~%XZAR_BANTER%~ @655
== ~BB!GAVIN~ @656
= @657
END
++ @658 EXTERN ~BB!GAVIN~ BGavXzarBanter2End1
++ @659 EXTERN ~BB!GAVIN~ BGavXzarBanter2End2
++ @660 EXTERN ~BB!GAVIN~ BGavXzarBanter2End3
++ @661 EXTERN ~BB!GAVIN~ BGavXzarBanter2End4

CHAIN ~BB!GAVIN~ BGavXzarBanter2End1
@662
EXIT

CHAIN ~BB!GAVIN~ BGavXzarBanter2End2
@663
 DO ~SetGlobal("B!GavinOffend","GLOBAL",7)~
EXIT

CHAIN ~BB!GAVIN~ BGavXzarBanter2End3
@664
EXIT

CHAIN ~BB!GAVIN~ BGavXzarBanter2End4
@665
EXIT

/* Gavin-Yeslick1 - clerics on adventure */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("yeslick")
  !StateCheck("yeslick",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinYeslick1","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("yeslick")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinYeslick1
@666
DO ~SetGlobal("B!GavinYeslick1","GLOBAL",1)~
== ~%YESLICK_BANTER%~ @667
== ~BB!GAVIN~ @668
== ~%YESLICK_BANTER%~ @669
END
IF ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15)~ THEN EXTERN ~BB!GAVIN~ BGavYesBanter1End1 
IF ~OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16)~ THEN EXTERN ~BB!GAVIN~ BGavYesBanter1End2 

CHAIN ~BB!GAVIN~ BGavYesBanter1End1 
@670
== ~%YESLICK_BANTER%~ @671
== ~BB!GAVIN~ @672
EXIT

CHAIN ~BB!GAVIN~ BGavYesBanter1End2 
@673
== ~%YESLICK_BANTER%~ @671
== ~BB!GAVIN~ @672
EXIT

/* Gavin-Yeslick2 - fighting the good fight. */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("yeslick")
  !StateCheck("yeslick",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinYeslick2","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("yeslick")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinYeslick2
@674
DO ~SetGlobal("B!GavinYeslick2","GLOBAL",1)~
== ~%YESLICK_BANTER%~ @675
== ~BB!GAVIN~ @676
== ~%YESLICK_BANTER%~ @677
= @678
== ~BB!GAVIN~ @679
EXIT

/* Gavin-Minsc4 - Gavin needs a tattoo */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  InParty("minsc")
  !StateCheck("minsc",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  Global("B!GavinMinsc4","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("minsc")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinMinsc4
@680
DO ~SetGlobal("B!GavinMinsc4","GLOBAL",1)~
== ~%MINSC_BANTER%~ @681
== ~BB!GAVIN~ @682
== ~%MINSC_BANTER%~ @683
== ~BB!GAVIN~ @684
== ~%MINSC_BANTER%~ @685
== ~BB!GAVIN~ @686
== ~%MINSC_BANTER%~ @687
== ~BB!GAVIN~ @688
= @689
== ~%MINSC_BANTER%~ @690
== ~BB!GAVIN~ @691
EXIT

/* Gavin-Kivan3 - fear of spiders */
CHAIN
IF WEIGHT #-1 
  ~%BGT_VAR%
  !StateCheck("kivan",CD_STATE_NOTVALID)
  !StateCheck(Myself,CD_STATE_NOTVALID)
  InParty("kivan")
  Global("B!GavinKivan3","GLOBAL",0)
  CombatCounter(0)
  !See([ENEMY])
  See("kivan")
  !Global("X#AjantisCoranChallenge","GLOBAL",1)
  ~ THEN ~BB!GAVIN~ BGavinKivan3
@692
DO ~SetGlobal("B!GavinKivan3","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @693
== ~BB!GAVIN~ @694
== ~%KIVAN_BANTER%~ @695
== ~BB!GAVIN~ @696
== ~%KIVAN_BANTER%~ @697
== ~BB!GAVIN~ @698
== ~%KIVAN_BANTER%~ @699
== ~BB!GAVIN~ @700
EXIT
