BEGIN ~B!JOLUN~

CHAIN
IF ~Gender(Player1,FEMALE) OR(3) !InParty("B!GAVIN") !InMyArea("B!GAVIN") StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN ~B!JOLUN~ j.f
@0 EXTERN ~B!JOLUN~ j1

CHAIN
IF ~Gender(Player1,MALE) OR(3) !InParty("B!GAVIN") !InMyArea("B!GAVIN") StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN ~B!JOLUN~ j.m
@1 
EXTERN ~B!JOLUN~ j1

CHAIN ~B!JOLUN~ j1
@2
END
+ ~Gender(Player1,FEMALE)~ + @3 EXTERN ~B!JOLUN~ j1.1f
+ ~Gender(Player1,MALE)~ + @3 EXTERN ~B!JOLUN~ j1.1m
++ @4 EXTERN ~B!JOLUN~ j1.2
++ @5 EXTERN ~B!JOLUN~ j1.3
+ ~Gender(Player1,FEMALE)~ + @6 EXTERN ~B!JOLUN~ j1.4f
+ ~Gender(Player1,MALE)~ + @6 EXTERN ~B!JOLUN~ j1.4m
++ @7 EXTERN ~B!JOLUN~ j1.5

CHAIN ~B!JOLUN~ j1.1f
@8
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ @9
== ~B!JOLUN~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ @10
EXTERN ~B!JOLUN~ j1.end

CHAIN ~B!JOLUN~ j1.1m
@11
EXTERN ~B!JOLUN~ j1.end

CHAIN ~B!JOLUN~ j1.2
@12
EXTERN ~B!JOLUN~ j1.end

CHAIN ~B!JOLUN~ j1.3
@13
EXTERN ~B!JOLUN~ j1.end

CHAIN ~B!JOLUN~ j1.4f
@14
EXTERN ~B!JOLUN~ j1.end

CHAIN ~B!JOLUN~ j1.4m
@15
EXTERN ~B!JOLUN~ j1.end

CHAIN ~B!JOLUN~ j1.5
@16
EXIT

CHAIN ~B!JOLUN~ j1.6
@17
EXTERN ~B!JOLUN~ j1.end

CHAIN ~B!JOLUN~ j1.end
@18
END
+ ~PartyGoldGT(4)~ + @19 DO ~TakePartyGold(5)~ EXTERN ~B!JOLUN~ j1.6
++ @20 EXTERN ~B!JOLUN~ j1.5

CHAIN
IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN ~B!JOLUN~ j2
@21
== ~B!GAVINJ~ @22
== ~B!JOLUN~ @23
== ~B!GAVINJ~ @24
== ~B!JOLUN~ @25
== ~B!GAVINJ~ @26
== ~B!JOLUN~ @27
== ~B!GAVINJ~ @28
== ~B!JOLUN~ @29
END
IF ~!Global("B!GavinRomanceActive","GLOBAL",1) !Global("B!GavinRomanceActive","GLOBAL",2) OR(2) Global("B!GavinFriend","GLOBAL",1) Global("B!GavinFriend","GLOBAL",2)~ THEN EXTERN ~B!GAVINJ~ j2.1
IF ~Global("B!GavinRomanceActive","GLOBAL",1)~ THEN EXTERN ~B!GAVINJ~ j2.1A
IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~B!GAVINJ~ j2.1B
IF ~!Global("B!GavinFriend","GLOBAL",1) !Global("B!GavinFriend","GLOBAL",2)~ THEN EXTERN ~B!GAVINJ~ j2.2

CHAIN ~B!GAVINJ~ j2.1
@30
== ~B!JOLUN~ @31
EXTERN ~B!JOLUN~ j2.3

CHAIN ~B!GAVINJ~ j2.1A
@32
== ~B!JOLUN~ @33
EXTERN ~B!JOLUN~ j2.3

CHAIN ~B!GAVINJ~ j2.1B
@34
== ~B!JOLUN~ @35
EXTERN ~B!JOLUN~ j2.3

CHAIN ~B!GAVINJ~ j2.2
@36
== ~B!JOLUN~ @37
EXTERN ~B!JOLUN~ j2.3

CHAIN ~B!JOLUN~ j2.3
@38
END
++ @39 EXTERN ~B!JOLUN~ j2.4
++ @40 EXTERN ~B!GAVINJ~ j2.5
++ @41 EXTERN ~B!JOLUN~ j2.4
++ @42 EXTERN ~B!JOLUN~ j2.6
++ @43 EXTERN ~B!GAVINJ~ j2.7
++ @44 EXTERN ~B!JOLUN~ j2.8

CHAIN ~B!JOLUN~ j2.4
@45
EXTERN ~B!GAVINJ~ j2.5

CHAIN ~B!GAVINJ~ j2.5
@46
== ~B!GAVINJ~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ @47
== ~B!JOLUN~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ @48
== ~B!GAVINJ~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ @49
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ @50
== ~B!GAVINJ~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ @51
== ~B!JOLUN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ @52
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ @53
== ~B!GAVINJ~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ @54
== ~B!JOLUN~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ @55
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ @56
== ~B!GAVINJ~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ @57
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ @58
== ~B!JOLUN~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ @59
== ~B!GAVINJ~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ @60
== ~B!JOLUN~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ @61
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ @62
== ~B!GAVINJ~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ @63
== ~B!JOLUN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ @64
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ @65
== ~B!GAVINJ~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ @66
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ @67
== ~B!JOLUN~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ @68
== ~B!GAVINJ~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ @69
== ~B!GAVINJ~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) OR(3) !InParty("khalid") !InMyArea("khalid") StateCheck("khalid",CD_STATE_NOTVALID)~ @70
== ~B!JOLUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ @71
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ @72
== ~B!GAVINJ~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ @73
== ~B!JOLUN~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ @74
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ @75
== ~B!GAVINJ~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ @76
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ @77
== ~B!JOLUN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ @78
== ~B!GAVINJ~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ @79
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ @80
== ~B!JOLUN~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ @81
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ @82
== ~B!GAVINJ~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ @83 
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ @84
== ~B!JOLUN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ @37
== ~B!GAVINJ~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ @85
== ~B!JOLUN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ @86
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ @87
== ~B!JOLUN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ @88
== ~B!GAVINJ~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ @89
== ~B!JOLUN~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ @90
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ @91
== ~B!GAVINJ~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ @92
== ~B!JOLUN~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ @93
== ~B!GAVINJ~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ @94
== ~B!JOLUN~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ @95
== ~%YESLICK_JOINED%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ @96
== ~B!GAVINJ~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ @97
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ @98
== ~B!JOLUN~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ @99
== ~B!GAVINJ~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ @100
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ @101
== ~B!JOLUN~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ @102
== ~B!GAVINJ~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ @103
== ~B!JOLUN~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ @104
== ~B!GAVINJ~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ @105
== ~B!GAVINJ~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) OR(3) !InParty("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ @106
== ~B!JOLUN~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ @107
== ~B!GAVINJ~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ @108
== ~B!JOLUN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ @109
== ~B!GAVINJ~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @110
== ~B!JOLUN~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @111
== ~B!GAVINJ~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @112
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @113
== ~B!GAVINJ~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @114
== ~B!JOLUN~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @115 
== ~B!GAVINJ~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @116
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @117
== ~B!GAVINJ~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @118
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @119
== ~B!JOLUN~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ @120 
== ~B!GAVINJ~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ @121
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ @122
== ~B!GAVINJ~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ @123
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ @124
== ~B!JOLUN~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ @125 
== ~B!GAVINJ~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ @126
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ @127
== ~B!JOLUN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ @128
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ @129
== ~B!JOLUN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ @130

== ~B!GAVINJ~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ @131
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ @132
== ~B!JOLUN~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ @133 
== ~B!GAVINJ~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ @134
== ~B!GAVINJ~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ @135
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ @136
== ~B!JOLUN~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ @137 
== ~B!GAVINJ~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ @138
== ~B!JOLUN~ @139
== ~B!JOLUN~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ @140
== ~B!GAVINJ~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ @141
== ~B!JOLUN~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ @142
== ~B!GAVINJ~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ @143
== ~B!JOLUN~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ @144
== ~B!JOLUN~ @145
== ~B!GAVINJ~ @146
== ~B!JOLUN~ @147
== ~B!GAVINJ~ @148
END
++ @149 EXTERN ~B!JOLUN~ j2.9
++ @150 EXTERN ~B!JOLUN~ j2.11
++ @151 EXTERN ~B!GAVINJ~ j2.7
++ @152 EXTERN ~B!JOLUN~ j2.10

CHAIN ~B!JOLUN~ j2.6
@153
EXTERN ~B!JOLUN~ j2.11

CHAIN ~B!GAVINJ~ j2.7
@154
END
++ @155 EXTERN ~B!JOLUN~ j2.11
++ @156 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ j2.12
++ @157 EXTERN ~B!JOLUN~ j2.11
++ @158 EXTERN ~B!JOLUN~ j2.13
++ @159 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-3)~ EXTERN ~B!GAVINJ~ j2.14
++ @160 EXTERN ~B!JOLUN~ j2.15

CHAIN ~B!JOLUN~ j2.8
@161
END
++ @162 EXTERN ~B!JOLUN~ j2.16
++ @163 EXTERN ~B!JOLUN~ j2.16
++ @164 EXTERN ~B!GAVINJ~ j2.7
++ @165 EXTERN ~B!JOLUN~ j2.4
++ @166 EXTERN ~B!GAVINJ~ j2.7

CHAIN ~B!JOLUN~ j2.9
@167
EXTERN ~B!JOLUN~ j2.11

CHAIN ~B!JOLUN~ j2.10
@168
END
++ @169 EXTERN ~B!GAVINJ~ j2.21
+ ~!Global("B!GavinRomanceActive","GLOBAL",1) !Global("B!GavinRomanceActive","GLOBAL",2)~ + @170 EXTERN ~B!JOLUN~ j2.22
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @170 EXTERN ~B!JOLUN~ j2.23
+ ~Global("B!GavinRomanceActive","GLOBAL",2)~ + @170 EXTERN ~B!JOLUN~ j2.24
++ @171 EXTERN ~B!JOLUN~ j2.17
++ @172 EXTERN ~B!JOLUN~ j2.11

CHAIN ~B!JOLUN~ j2.11
@173
END
++ @174 EXTERN ~B!JOLUN~ j2.19
++ @175 EXTERN ~B!JOLUN~ j2.19
++ @176 EXTERN ~B!JOLUN~ j2.20
++ @177 EXTERN ~B!JOLUN~ j2.19

CHAIN ~B!GAVINJ~ j2.12
@178
END
++ @179 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ j2.25
++ @180 EXTERN ~B!GAVINJ~ j2.25
++ @181  EXTERN ~B!GAVINJ~ j2.26
++ @182 EXTERN ~B!GAVINJ~ j2.25
++ @183 EXTERN ~B!GAVINJ~ j2.27

CHAIN ~B!JOLUN~ j2.13
@184
END
++ @185 EXTERN ~B!JOLUN~ j2.11
++ @186 EXTERN ~B!JOLUN~ j2.11
++ @187 EXTERN ~B!GAVINJ~ j2.27
++ @188 EXTERN ~B!GAVINJ~ j2.28
++ @189 EXTERN ~B!GAVINJ~ j2.27
++ @190 EXTERN ~B!GAVINJ~ j2.25

CHAIN ~B!GAVINJ~ j2.14
@191
DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",1) ActionOverride("B!JOLUN",EscapeArea()) RestParty()~
EXIT

CHAIN ~B!JOLUN~ j2.15
@192
EXTERN ~B!GAVINJ~ j2.25

CHAIN ~B!JOLUN~ j2.16
@193
== ~B!GAVINJ~ @194
== ~B!JOLUN~ @195
== ~B!GAVINJ~ @196
== ~B!JOLUN~ @197
DO ~ActionOverride("B!JOLUN",EscapeArea())~
EXIT

CHAIN ~B!JOLUN~ j2.17
@198
EXTERN ~B!GAVINJ~ j2.7

CHAIN ~B!JOLUN~ j2.19
@199
== ~B!GAVINJ~ @200
== ~B!JOLUN~ @201
= @202
== ~B!GAVINJ~ @203
== ~B!JOLUN~ @204
END
++ @205 EXTERN ~B!JOLUN~ j2.29
++ @206 EXTERN ~B!JOLUN~ j2.30
++ @207 EXTERN ~B!JOLUN~ j2.29
++ @208 EXTERN ~B!JOLUN~ j2.31
++ @209 EXTERN ~B!JOLUN~ j2.30
++ @210 EXTERN ~B!GAVINJ~ j2.32
++ @211 EXTERN ~B!GAVINJ~ j2.33
++ @212 EXTERN ~B!JOLUN~ j2.16

CHAIN ~B!JOLUN~ j2.20
@213
== ~B!GAVINJ~ @214
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ @215
== ~B!GAVINJ~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ @216
== ~B!JOLUN~ @217
END
+ ~GlobalGT("Chapter","GLOBAL",5)~ + @218 EXTERN ~B!JOLUN~ j2.34
++ @219 EXTERN ~B!JOLUN~ j2.34
++ @220 EXTERN ~B!JOLUN~ j2.35
++ @221 EXTERN ~B!JOLUN~ j2.36
++ @222 EXTERN ~B!GAVINJ~ j2.32
++ @212 EXTERN ~B!JOLUN~ j2.16

CHAIN ~B!GAVINJ~ j2.21
@223
== ~B!JOLUN~ @224
== ~B!GAVINJ~ @225
== ~B!JOLUN~ @226
DO ~ActionOverride("B!JOLUN",EscapeArea())~
EXIT

CHAIN ~B!JOLUN~ j2.22
@227
== ~B!GAVINJ~ @228
== ~B!JOLUN~ @229
EXTERN ~B!GAVINJ~ j2.12

CHAIN ~B!JOLUN~ j2.23
@230
EXTERN ~B!GAVINJ~ j2.12

CHAIN ~B!JOLUN~ j2.24
@231
EXTERN ~B!GAVINJ~ j2.12

CHAIN ~B!GAVINJ~ j2.25
@232
== ~B!JOLUN~ @233
DO ~ActionOverride("B!JOLUN",EscapeArea())~
EXIT

CHAIN ~B!GAVINJ~ j2.26
@234
EXTERN ~B!JOLUN~ j2.19

CHAIN ~B!GAVINJ~ j2.27
@235
DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",1) ActionOverride("B!JOLUN",EscapeArea()) RestParty()~
EXIT

CHAIN ~B!GAVINJ~ j2.28
@236
== ~B!JOLUN~ @237
== ~B!GAVINJ~ @238
== ~B!JOLUN~ @239
EXTERN ~B!JOLUN~ j2.19

CHAIN ~B!JOLUN~ j2.29
@240
== ~B!GAVINJ~ @241
== ~B!JOLUN~ @242
EXTERN ~B!GAVINJ~ j2.41

CHAIN ~B!GAVINJ~ j2.41
@243
== ~B!JOLUN~ @244
END
++ @245 EXTERN ~B!JOLUN~ j2.37
++ @246 EXTERN ~B!JOLUN~ j2.38
++ @247 EXTERN ~B!JOLUN~ j2.39
++ @248 EXTERN ~B!JOLUN~ j2.37
++ @249 EXTERN ~B!JOLUN~ j2.40
++ @250 EXTERN ~B!JOLUN~ j2.39

CHAIN ~B!JOLUN~ j2.30
@251
== ~B!GAVINJ~ @252
== ~B!JOLUN~ @253
EXTERN ~B!JOLUN~ j2.29

CHAIN ~B!JOLUN~ j2.31
@254
EXTERN ~B!GAVINJ~ j2.41

CHAIN ~B!GAVINJ~ j2.32
@255
EXTERN ~B!GAVINJ~ j2.27

CHAIN ~B!GAVINJ~ j2.33
@256
EXTERN ~B!JOLUN~ j2.30

CHAIN ~B!JOLUN~ j2.34
@257
EXTERN ~B!JOLUN~ j2.42

CHAIN ~B!JOLUN~ j2.35
@258
EXTERN ~B!JOLUN~ j2.42

CHAIN ~B!JOLUN~ j2.36
@259
EXTERN ~B!JOLUN~ j2.42

CHAIN ~B!JOLUN~ j2.37
@260
EXTERN ~B!JOLUN~ j2.43

CHAIN ~B!JOLUN~ j2.38
@261
== ~B!GAVINJ~ @262
EXTERN ~B!JOLUN~ j2.39

CHAIN ~B!JOLUN~ j2.39
@263
== ~B!GAVINJ~ @264
== ~B!JOLUN~ @265
= @266
= @267
= @268
= @269
= @270
= @271
== ~B!GAVINJ~ @272
== ~B!JOLUN~ @273
== ~B!GAVINJ~ @274
== ~B!JOLUN~ @275
== ~B!GAVINJ~ @276
= @277
== ~B!JOLUN~ @278
EXTERN ~B!JOLUN~ j2.43

CHAIN ~B!JOLUN~ j2.40
@279
== ~B!GAVINJ~ @280
== ~B!JOLUN~ @281
== ~B!GAVINJ~ @282
DO ~ActionOverride("B!JOLUN",EscapeArea())~
EXIT

CHAIN ~B!JOLUN~ j2.42
@283
END
++ @284 EXTERN ~B!JOLUN~ j2.19
++ @285 EXTERN ~B!GAVINJ~ j2.25
++ @286 EXTERN ~B!JOLUN~ j2.19
++ @287 EXTERN ~B!GAVINJ~ j2.25

CHAIN ~B!JOLUN~ j2.43
@288
END
++ @289 EXTERN ~B!JOLUN~ j2.44
++ @290 EXTERN ~B!JOLUN~ j2.44
++ @291 EXTERN ~B!GAVINJ~ j2.45
++ @292 EXTERN ~B!GAVINJ~ j2.45
++ @293 EXTERN ~B!JOLUN~ j2.46

CHAIN ~B!JOLUN~ j2.44
@294
== ~B!GAVINJ~ @295
== ~B!JOLUN~ @296
== ~B!GAVINJ~ @297
DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",1) ActionOverride("B!JOLUN",EscapeArea()) RestParty()~
EXIT

CHAIN ~B!GAVINJ~ j2.45
@298
EXTERN ~B!JOLUN~ j2.40

CHAIN ~B!JOLUN~ j2.46
@299
== ~B!GAVINJ~ @300
== ~B!JOLUN~ @301
== ~B!GAVINJ~ @302
== ~B!JOLUN~ @281
== ~B!GAVINJ~ @303
DO ~ActionOverride("B!JOLUN",EscapeArea())~
EXIT

APPEND ~B!GAVINJ~

IF ~Global("B!GavinJolunChatAlone","GLOBAL",2)~ j3
SAY @304
++ @305 DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",3)~ + j3.1
++ @306 DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",3)~ + j3.1
++ @307 DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",3)~ + j3.2
++ @308 DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",3)~ + j3.1
++ @309 DO ~SetGlobal("B!GavinJolunChatAlone","GLOBAL",3)~ + j3.3
END

IF ~~ j3.1
SAY @310
++ @311 + j3.4
++ @312 + j3.5
++ @313 + j3.4
++ @314 + j3.4
++ @315 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ + j3.6
END

IF ~~ j3.2
SAY @316
IF ~~ THEN EXIT
END

IF ~~ j3.3
SAY @317
IF ~~ THEN EXIT
END

IF ~~ j3.4
SAY @318
IF ~~ THEN EXIT
END

IF ~~ j3.5
SAY @319
IF ~~ THEN EXIT
END

IF ~~ j3.6
SAY @320
IF ~~ THEN EXIT
END
END