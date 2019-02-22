/* updated */
////////////////////////////////////////
////NPC Reactions to Gavin's Romance////
////////////////////////////////////////
/* CONTENTS */
/* Dynaheir on Gavin's happiness */
/* Minsc is relieved that Dynaheir is safe from Gavin */
/* Jaheira grills Gavin about his relationship with the pc */
/* Jaheira grills Gavin about his relationship with the pc */
/* Jaheira on family planning */
/* Ajantis on the propriety of Gavin's interest (no Ajantis romance) */
/* Ajantis on the propriety of Gavin's interest (Ajantis romance) */
/* Gavin and Ajantis discuss jealousy */
/* Ajantis can be jealous, too */
/* Gavin "congratulates" Ajantis */
/* Branwen comments on Gavin's love life */
/* Imoen comments on Gavin's relationship with the pc */
/* Coran, if the pc is an elf, half-elf, or human (no Coran romance) */
/* Coran, if the pc is an elf, half-elf, or human (Coran romance) */
/* Coran, if the pc is a dwarf, half-orc, gnome, or halfling */
/* Coran on Gavin's interest, no Coran romance */
/* Coran on Gavin's interest, Coran romance */
/* Gavin comments on Coran's interest */
/* Gavin accuses Coran of courting too aggressively */
/* Xan, pc is an elf, no Xan romance */
/* Xan, pc is not an elf or half-elf */
/* Xan, pc is an elf, Xan romance */
/* After Bhaal discovery - Gavin RA=2, Xan RA=0,3 */
/* After Bhaal discovery - Xan RA=2, Gavin RA=3 */
/* Xan comments on the possiblity of Gavin's betrayal of the PC */
/* Gavin comments on Xan dumping a half-elf */
/* Ajantis once relationship is committed */ 
/* Imoen comments if PC is only romancing Gavin */
/* Imoen comments if PC is romancing Gavin and someone else */
/* Finger comments */
///* Ajantis */
///* Alora */
///* Branwen */
///* Coran */
///* Dynaheir */
///* Edwin */
///* Eldoth */
///* Faldorn */
///* Garrick */
///* Imoen */
///* Jaheira */
///* Kagain */
///* Khalid */
///* Kivan */
///* Minsc */
///* Montaron */
///* Quayle */
///* Safana */
///* Shar-Teel */
///* Skie */
///* Tiax */
///* Viconia */
///* Xan */
///* Xzar */
///* Yeslick */

/* Gavin-Dynaheir3 */
/* Dynaheir on Gavin's happiness */

CHAIN 
IF WEIGHT #-1 
~Global("B!DynaheirRomanceComment","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinDynaheirComment
@0
DO ~SetGlobal("B!DynaheirRomanceComment","GLOBAL",3)~
== ~%DYNAHEIR_JOINED%~ @1
== ~B!GAVINJ~ @2
== ~%DYNAHEIR_JOINED%~ @3
== ~B!GAVINJ~ @4
== ~%DYNAHEIR_JOINED%~ @5
== ~B!GAVINJ~ @6
EXIT

/* Gavin-Minsc3 */
/* Minsc is relieved that Dynaheir is safe from Gavin */

CHAIN
IF WEIGHT #-1 
~Global("B!MinscRomanceComment","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinMinscComment
@7
DO ~SetGlobal("B!MinscRomanceComment","GLOBAL",3)~
== ~%MINSC_JOINED%~ @8
== ~B!GAVINJ~ @9
== ~%MINSC_JOINED%~ @10
== ~B!GAVINJ~ @11
== ~%MINSC_JOINED%~ @12
== ~B!GAVINJ~ @13
== ~%MINSC_JOINED%~ @14
== ~B!GAVINJ~ @15
== ~%MINSC_JOINED%~ @16
EXIT

/* Gavin-Jaheira */
/* Jaheira grills Gavin about his relationship with the pc */

CHAIN
IF WEIGHT #-1 
~Global("B!JaheiraRomanceComment","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinJaheiraComment
@17
DO ~SetGlobal("B!JaheiraRomanceComment","GLOBAL",3)~
== ~%JAHEIRA_JOINED%~ @18
== ~B!GAVINJ~ @19
== ~%JAHEIRA_JOINED%~ @20
== ~B!GAVINJ~ @21
== ~%JAHEIRA_JOINED%~ @22
== ~B!GAVINJ~ @23
== ~%JAHEIRA_JOINED%~ @24
= @25
== ~B!GAVINJ~ @26
== ~%JAHEIRA_JOINED%~ @27
== ~B!GAVINJ~ @28
== ~%JAHEIRA_JOINED%~ @29
== ~B!GAVINJ~ @30
== ~%JAHEIRA_JOINED%~ @31
== ~B!GAVINJ~ @32
EXIT

/* Jaheira on family planning */
CHAIN
IF WEIGHT #-1 
~Global("B!JaheiraRomanceComment2","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinJaheiraComment2
@33
DO ~SetGlobal("B!JaheiraRomanceComment2","GLOBAL",3)~
== ~%JAHEIRA_JOINED%~ @34
== ~B!GAVINJ~ @35
== ~%JAHEIRA_JOINED%~ @36
= @37
== ~B!GAVINJ~ @38
== ~%JAHEIRA_JOINED%~ IF ~!InParty("khalid")~ THEN @39
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid")~ THEN @40
== ~B!GAVINJ~ @41
== ~%JAHEIRA_JOINED%~ @42
EXIT

/* Gavin-Ajantis3 */
/* Ajantis on the propriety of Gavin's interest (no Ajantis romance) */

CHAIN
IF WEIGHT #-1 
~Global("B!AjantisRomanceComment1","GLOBAL",2)~ THEN ~%AJANTIS_JOINED%~ BGavinAjantisComment1
@43
DO ~SetGlobal("B!AjantisRomanceComment1","GLOBAL",3)~
== ~B!GAVINJ~ @44
== ~%AJANTIS_JOINED%~ @45
== ~B!GAVINJ~ @46
== ~%AJANTIS_JOINED%~ @47 
== ~B!GAVINJ~ @48
== ~%AJANTIS_JOINED%~ @49
== ~B!GAVINJ~ @50
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") !Dead("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @51
== ~%AJANTIS_JOINED%~ @52
== ~B!GAVINJ~ @53
== ~%AJANTIS_JOINED%~ @54
== ~B!GAVINJ~ @55
EXIT

/* Gavin-Ajantis4 */
/* Ajantis on the propriety of Gavin's interest (Ajantis romance) */
CHAIN
IF WEIGHT #-1 
~Global("B!AjantisRomanceComment2","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinAjantisComment2
@56
DO ~SetGlobal("B!AjantisRomanceComment2","GLOBAL",3)~
== ~%AJANTIS_JOINED%~ @57
== ~B!GAVINJ~ @44
== ~%AJANTIS_JOINED%~ @58
== ~B!GAVINJ~ @46
== ~%AJANTIS_JOINED%~ @59 
== ~B!GAVINJ~ @60 
== ~%AJANTIS_JOINED%~ @61
== ~B!GAVINJ~ @50
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%")~ THEN @51
== ~%AJANTIS_JOINED%~ @62
= @63 
== ~B!GAVINJ~ @64
EXIT

/* Gavin and Ajantis discuss jealousy */
CHAIN
IF WEIGHT #-1 ~Global("B!GavAjRom1","GLOBAL",1)~ THEN ~BB!GAVIN~ BGavAjRom1
@65
DO ~SetGlobal("B!GavAjRom1","GLOBAL",2)~
== ~%AJANTIS_BANTER%~ @66
== ~BB!GAVIN~ @67
== ~%AJANTIS_BANTER%~ @68
== ~BB!GAVIN~ @69
== ~%AJANTIS_BANTER%~ @70
== ~BB!GAVIN~ @71
== ~%AJANTIS_BANTER%~ @72
== ~BB!GAVIN~ @73
== ~%AJANTIS_BANTER%~ @74
DO ~RestParty()~
EXIT

/* Ajantis can be jealous, too */
CHAIN
IF WEIGHT #-1 ~Global("B!GavAjRom2","GLOBAL",1)~ THEN ~%AJANTIS_BANTER%~ BGavAjRom2
@75
DO ~SetGlobal("B!GavAjRom2","GLOBAL",2)~
== ~BB!GAVIN~ @76
== ~%AJANTIS_BANTER%~ @77
= @78
= @79
== ~BB!GAVIN~ @80
== ~%AJANTIS_BANTER%~ @81
== ~BB!GAVIN~ @82
EXIT

/* Gavin "congratulates" Ajantis */
CHAIN
IF WEIGHT #-1 ~Global("B!GavAjRom3","GLOBAL",2)~ THEN ~BB!GAVIN~ BGavAjRom3
@83
DO ~SetGlobal("B!GavAjRom3","GLOBAL",3)~
== ~%AJANTIS_BANTER%~ @84
== ~BB!GAVIN~ @85
== ~%AJANTIS_BANTER%~ @86
== ~BB!GAVIN~ @87
= @88
== ~%AJANTIS_BANTER%~ @89
== ~BB!GAVIN~ @90
== ~%AJANTIS_BANTER%~ @91
EXIT

/* Gavin-Branwen3 */
/* Branwen comments on Gavin's love life */

CHAIN
IF WEIGHT #-1 
~Global("B!BranwenRomanceComment","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinBranwenComment
@92
DO ~SetGlobal("B!BranwenRomanceComment","GLOBAL",3)~
== ~%BRANWEN_JOINED%~ @93
== ~B!GAVINJ~ @94
== ~%BRANWEN_JOINED%~ @95
== ~B!GAVINJ~ @96
== ~%BRANWEN_JOINED%~ @97
== ~B!GAVINJ~ @98
== ~%BRANWEN_JOINED%~ @99
EXIT


/* Gavin-Imoen3 */
/* Imoen comments on Gavin's relationship with the pc */
CHAIN
IF WEIGHT #-1 
~Global("B!ImoenRomanceComment","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinImoenComment
@100
DO ~SetGlobal("B!ImoenRomanceComment","GLOBAL",3)~
== ~%IMOEN_JOINED%~ @101
== ~B!GAVINJ~ @102
== ~%IMOEN_JOINED%~ @103
= @104
== ~B!GAVINJ~ @105
== ~%IMOEN_JOINED%~ @106
== ~B!GAVINJ~ @107
== ~%IMOEN_JOINED%~ @108
EXIT


/* Gavin-Coran3 */
/* Coran, if the pc is an elf, half-elf, or human (no Coran romance) */
CHAIN
IF WEIGHT #-1 
~Global("B!CoranRomanceComment1","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinCoranComment1
@109
DO ~SetGlobal("B!CoranRomanceComment1","GLOBAL",3)~
== ~%CORAN_JOINED%~ @110
== ~B!GAVINJ~ @111
== ~%CORAN_JOINED%~ @112
== ~B!GAVINJ~ @113
== ~%CORAN_JOINED%~ @114
== ~B!GAVINJ~ @115
== ~%CORAN_JOINED%~ @116
== ~B!GAVINJ~ @117
== ~%CORAN_JOINED%~ @118
EXIT

/* Gavin-Coran4 */
/* Coran, if the pc is an elf, half-elf, or human (no Coran romance) */
CHAIN
IF WEIGHT #-1 
~Global("B!CoranRomanceComment2","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinCoranComment2
@109
DO ~SetGlobal("B!CoranRomanceComment2","GLOBAL",3)~
== ~%CORAN_JOINED%~ @110
== ~B!GAVINJ~ @111
== ~%CORAN_JOINED%~ @112
== ~B!GAVINJ~ @113
== ~%CORAN_JOINED%~ @114
== ~B!GAVINJ~ @115
== ~%CORAN_JOINED%~ @119
== ~B!GAVINJ~ @120
== ~%CORAN_JOINED%~ @121
EXIT

/* Gavin-Coran5 */
/* Coran, if the pc is a dwarf, half-orc, gnome, or halfling */
CHAIN
IF WEIGHT #-1 
~Global("B!CoranRomanceComment3","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinCoranComment3
@109
DO ~SetGlobal("B!CoranRomanceComment3","GLOBAL",3)~
== ~%CORAN_JOINED%~ @110
== ~B!GAVINJ~ @111
== ~%CORAN_JOINED%~ @112
== ~B!GAVINJ~ @113
== ~%CORAN_JOINED%~ @122
== ~B!GAVINJ~ @123
== ~%CORAN_JOINED%~ @116
== ~B!GAVINJ~ @117
== ~%CORAN_JOINED%~ @118
EXIT

/* Coran on Gavin's interest, no Coran romance */
CHAIN
IF WEIGHT #-1 ~Global("B!GaCoComment1","GLOBAL",2)~ THEN %CORAN_BANTER% BGaCoComment1
@124
DO ~SetGlobal("B!GaCoComment1","GLOBAL",3)~
== ~BB!GAVIN~ @125
== ~%CORAN_BANTER%~ @126
== ~BB!GAVIN~ @127
EXIT

/* Coran on Gavin's interest, Coran romance */
CHAIN
IF WEIGHT #-1 ~Global("B!GaCoComment2","GLOBAL",2)~ THEN ~BB!GAVIN~ BGaCoComment2
@128
DO ~SetGlobal("B!GaCoComment2","GLOBAL",3)~
== ~%CORAN_BANTER%~ @129
== ~BB!GAVIN~ @130
== ~%CORAN_BANTER%~ @131
== ~BB!GAVIN~ @132
== ~%CORAN_BANTER%~ @133
== ~BB!GAVIN~ @134
== ~%CORAN_BANTER%~ @135
== ~BB!GAVIN~ @136
EXIT

/* Gavin comments on Coran's interest */
CHAIN
IF WEIGHT #-1 ~Global("B!GaCoComment3","GLOBAL",2)~ THEN ~BB!GAVIN~ BGaCoComment3
@137
DO ~SetGlobal("B!GaCoComment3","GLOBAL",3)~
== ~%CORAN_BANTER%~ @138
== ~BB!GAVIN~ @139
== ~%CORAN_BANTER%~ @140
== ~BB!GAVIN~ @141
== ~%CORAN_BANTER%~ @142
== ~BB!GAVIN~ @143
== ~%CORAN_BANTER%~ @144
== ~BB!GAVIN~ @145
== ~%CORAN_BANTER%~ @146
EXIT

/* Gavin accuses Coran of courting too aggressively */
CHAIN
IF WEIGHT #-1 ~Global("B!GaCoComment4","GLOBAL",2)~ THEN ~BB!GAVIN~ BGaCoComment4
@147
DO ~SetGlobal("B!GaCoComment4","GLOBAL",3)~
== ~%CORAN_BANTER%~ @148
== ~BB!GAVIN~ @149
== ~%CORAN_BANTER%~ @150 
== ~BB!GAVIN~ @151
== ~%CORAN_BANTER%~ @152
== ~BB!GAVIN~ @153
== ~%CORAN_BANTER%~ @154
EXIT

/* Gavin-Xan3 */
/* Xan, pc is an elf, no Xan romance */
CHAIN
IF WEIGHT #-1 
~Global("B!XanRomanceComment1","GLOBAL",2)~ THEN ~%XAN_JOINED%~ BGavinXanComment1
@155
DO ~SetGlobal("B!XanRomanceComment1","GLOBAL",3)~
== ~B!GAVINJ~ @156
== ~%XAN_JOINED%~ @157
= @158
== ~B!GAVINJ~ @159
== ~%XAN_JOINED%~ @160
== ~B!GAVINJ~ @161
== ~%XAN_JOINED%~ @162
== ~B!GAVINJ~ @163
== ~%XAN_JOINED%~ @164
EXIT

/* Gavin-Xan4 */
/* Xan, pc is not an elf or half-elf */
CHAIN
IF WEIGHT #-1 
~Global("B!XanRomanceComment2","GLOBAL",2)~ THEN ~%XAN_JOINED%~ BGavinXanComment2
@165
DO ~SetGlobal("B!XanRomanceComment2","GLOBAL",3)~
== ~B!GAVINJ~ @166
== ~%XAN_JOINED%~ @167
== ~B!GAVINJ~ @168
== ~%XAN_JOINED%~ @169
== ~B!GAVINJ~ @170
EXIT


/* Gavin-Xan5 */
/* Xan, pc is an elf, Xan romance */
CHAIN
IF WEIGHT #-1 
~Global("B!XanRomanceComment3","GLOBAL",2)~ THEN ~%XAN_JOINED%~ BGavinXanComment3
@155
DO ~SetGlobal("B!XanRomanceComment3","GLOBAL",3)~
== ~B!GAVINJ~ @156
== ~%XAN_JOINED%~ @157
= @158
== ~B!GAVINJ~ @159
== ~%XAN_JOINED%~ @160
== ~B!GAVINJ~ @161
== ~%XAN_JOINED%~ @162
== ~B!GAVINJ~ @171
== ~%XAN_JOINED%~ @172
EXIT

/* After Bhaal discovery - Gavin RA=2, Xan RA=0,3 */
CHAIN
IF WEIGHT #-1 ~Global("B!CommittedGavinBhaal","GLOBAL",2)~ THEN ~%XAN_BANTER%~ BXanGavinBhaal
@173
DO ~SetGlobal("B!CommittedGavinBhaal","GLOBAL",3)~
== ~BB!GAVIN~ @174
== ~%XAN_BANTER%~ @175
= @176 
== ~BB!GAVIN~ @177
== ~%XAN_BANTER%~ @178
== ~BB!GAVIN~ @179
== ~%XAN_BANTER%~ @180 
== ~BB!GAVIN~ @181
= @182
== ~%XAN_BANTER%~ @183
== ~BB!GAVIN~ @184
== ~%XAN_BANTER%~ @185
== ~BB!GAVIN~ @186
== ~%XAN_BANTER%~ @187
== ~BB!GAVIN~ @188
EXIT


/* After Bhaal discovery - Xan RA=2, Gavin RA=3 */
CHAIN
IF WEIGHT #-1 ~Global("B!BondedXanBhaal","GLOBAL",2)~ THEN ~BB!GAVIN~ BGavinXanBhaal
@189
DO ~SetGlobal("B!BondedXanBhaal","GLOBAL",3)~
== ~%XAN_BANTER%~ @190
== ~BB!GAVIN~ @191
== ~%XAN_BANTER%~ @192
== ~BB!GAVIN~ @193
== ~%XAN_BANTER%~ @194
== ~BB!GAVIN~ @195
== ~%XAN_BANTER%~ @196
== ~BB!GAVIN~ @197
== ~%XAN_BANTER%~ @198
EXIT

/* Xan comments on the possiblity of Gavin's betrayal of the PC */
CHAIN
IF WEIGHT #-1 ~Global("B!GavinXanElf","GLOBAL",2)~ THEN ~%XAN_BANTER%~ GavinXanElf
@199
DO ~SetGlobal("B!GavinXanElf","GLOBAL",3)~ 
== ~BB!GAVIN~ @200
== ~%XAN_BANTER%~ @201
== ~BB!GAVIN~ @202
== ~%XAN_BANTER%~ @203
== ~BB!GAVIN~ @204
== ~%XAN_BANTER%~ @205
== ~BB!GAVIN~ @206
== ~%XAN_BANTER%~ @207
== ~BB!GAVIN~ @208
= @209
= @210
== ~%XAN_BANTER%~ @211
== ~BB!GAVIN~ @212
EXIT

/* Gavin comments on Xan dumping a half-elf */
CHAIN
IF WEIGHT #-1 ~Global("B!GavinXanHalfElf","GLOBAL",2)~ THEN ~BB!GAVIN~ GavinXanHalfElf
@213
DO ~SetGlobal("B!GavinXanHalfElf","GLOBAL",3)~
== ~%XAN_BANTER%~ @214
== ~BB!GAVIN~ @215
== ~%XAN_BANTER%~ @216
== ~BB!GAVIN~ @217
== ~%XAN_BANTER%~ @218
== ~BB!GAVIN~ @219
== ~%XAN_BANTER%~ @220
== ~BB!GAVIN~ @221
== ~%XAN_BANTER%~ @222
== ~BB!GAVIN~ @223
== ~%XAN_BANTER%~ @224
== ~BB!GAVIN~ @225
== ~%XAN_BANTER%~ @226
== ~BB!GAVIN~ @227
== ~%XAN_BANTER%~ @228
== ~BB!GAVIN~ @229
== ~%XAN_BANTER%~ @230
== ~BB!GAVIN~ @231
== ~%XAN_BANTER%~ @232
== ~BB!GAVIN~ @233
== ~%XAN_BANTER%~ @234
EXIT

/* Ajantis once relationship is committed */ 
CHAIN
IF WEIGHT #-1
~Global("B!GavinAjantis5","GLOBAL",2)~ THEN ~%AJANTIS_JOINED%~ BGavinAjantisComment3
@235
DO ~SetGlobal("B!GavinAjantis5","GLOBAL",3)~ 
== ~B!GAVINJ~ @236
== ~%AJANTIS_JOINED%~ @237
== ~B!GAVINJ~ IF ~OR (2) Global("B!AjantisRomanceComment1","GLOBAL",3) Global("B!AjantisRomanceComment2","GLOBAL",1)~ THEN @238
== ~%AJANTIS_JOINED%~ IF ~OR (2) Global("B!AjantisRomanceComment1","GLOBAL",3) Global("B!AjantisRomanceComment2","GLOBAL",1)~ THEN @239
== ~%AJANTIS_JOINED%~ @240
== ~B!GAVINJ~ @241
== ~%AJANTIS_JOINED%~ @242
== ~B!GAVINJ~ @243
== ~%AJANTIS_JOINED%~ @244
== ~B!GAVINJ~ @245
EXIT

///// IMOEN CHAT WITH PC /////////
/* Imoen comments if PC is only romancing Gavin */
CHAIN
IF WEIGHT #-1 ~Global("B!ImPCRomComNone","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavImPCChat
@246
DO ~SetGlobal("B!ImPCRomComNone","GLOBAL",3)~ EXTERN ~%IMOEN_JOINED%~ BGavImPCChatEnd

CHAIN 
IF ~~ THEN ~%IMOEN_JOINED%~ BGavImPCChatEnd
@247
END
++ @248 EXTERN ~%IMOEN_JOINED%~ BImPC.1
++ @249 EXTERN ~%IMOEN_JOINED%~ BImPC.2
++ @250 EXTERN ~%IMOEN_JOINED%~ BImPC.3

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.1
@251
END
++ @252 EXTERN ~%IMOEN_JOINED%~ BImPC.4
++ @253 EXTERN ~%IMOEN_JOINED%~ BImPC.27
++ @254 EXTERN ~%IMOEN_JOINED%~ BImPC.5
++ @255 EXTERN ~%IMOEN_JOINED%~ BImPC.30
++ @256 EXTERN ~%IMOEN_JOINED%~ BImPC.6
++ @257 EXTERN ~%IMOEN_JOINED%~ BImPC.7

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.2
@258
END
++ @259 EXTERN ~%IMOEN_JOINED%~ BImPC.8
++ @260 EXTERN ~%IMOEN_JOINED%~ BImPC.9
++ @261 EXTERN ~%IMOEN_JOINED%~ BImPC.10

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.3
@262
END
++ @263 EXTERN ~%IMOEN_JOINED%~ BImPC.11
++ @264 EXTERN ~%IMOEN_JOINED%~ BImPC.12

CHAIN 
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.4
@265
END
++ @266 EXTERN ~%IMOEN_JOINED%~ BImPC.5
++ @267 EXTERN ~%IMOEN_JOINED%~ BImPC.13
++ @268 EXTERN ~%IMOEN_JOINED%~ BImPC.14

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.5
@269
END
++ @250 EXTERN ~%IMOEN_JOINED%~ BImPC.15
++ @270 EXTERN ~%IMOEN_JOINED%~ BImPC.16
++ @271 EXTERN ~%IMOEN_JOINED%~ BImPC.17

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.6
@272
END
++ @273 EXTERN ~%IMOEN_JOINED%~ BImPC.18
++ @274 EXTERN ~%IMOEN_JOINED%~ BImPC.19
++ @275 EXTERN ~%IMOEN_JOINED%~ BImPC.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.7
@276
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.8
@277
END
++ @278 EXTERN ~%IMOEN_JOINED%~ BImPC.21
++ @279 EXTERN ~%IMOEN_JOINED%~ BImPC.17
++ @280 EXTERN ~%IMOEN_JOINED%~ BImPC.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.9
@281 
END
++ @282 EXTERN ~%IMOEN_JOINED%~ BImPC.21
++ @283 EXTERN ~%IMOEN_JOINED%~ BImPC.17

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.10
@284
END
++ @285 EXTERN ~%IMOEN_JOINED%~ BImPC.7
++ @286 EXTERN ~%IMOEN_JOINED%~ BImPC.22
++ @287 EXTERN ~%IMOEN_JOINED%~ BImPC.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.11
@288
END
++ @289 EXTERN ~%IMOEN_JOINED%~ BImPC.13
++ @290 EXTERN ~%IMOEN_JOINED%~ BImPC.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.12
@291
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.15
@292
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.13
@293
END
++ @294 EXTERN ~%IMOEN_JOINED%~ BImPC.23
++ @295 EXTERN ~%IMOEN_JOINED%~ BImPC.24
++ @296 EXTERN ~%IMOEN_JOINED%~ BImPC.24

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.14
@297
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.16
@298
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.17
@299
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.18
@300
END
++ @301 EXTERN ~%IMOEN_JOINED%~ BImPC.25
++ @302 EXTERN ~%IMOEN_JOINED%~ BImPC.26

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.19
@303
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.20
@304
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.21
@305
END
++ @306 EXTERN ~%IMOEN_JOINED%~ BImPC.7
++ @307 EXTERN ~%IMOEN_JOINED%~ BImPC.18
++ @308 EXTERN ~%IMOEN_JOINED%~ BImPC.5


CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.22
@309
= @310
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.23
@311
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.24
@312
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.25
@313
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.26
@314
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.27
@315
END
++ @301 EXTERN ~%IMOEN_JOINED%~ BImPC.28
++ @316 EXTERN ~%IMOEN_JOINED%~ BImPC.29

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.28
@317
END
++ @318 EXTERN ~%IMOEN_JOINED%~ BImPC.25
++ @319 EXTERN ~%IMOEN_JOINED%~ BImPC.25
++ @320 EXTERN ~%IMOEN_JOINED%~ BImPC.25

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.29
@321
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPC.30
@322
END
++ @306 EXTERN ~%IMOEN_JOINED%~ BImPC.7
++ @307 EXTERN ~%IMOEN_JOINED%~ BImPC.18
++ @308 EXTERN ~%IMOEN_JOINED%~ BImPC.5

/* Imoen comments if PC is romancing Gavin and someone else */
CHAIN
IF WEIGHT #-1 ~Global("B!ImPCRomComOther","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavImPCOtherChat
@246
DO ~SetGlobal("B!ImPCRomComOther","GLOBAL",3)~ EXTERN ~%IMOEN_JOINED%~ BGavImPCOtherChatEnd

CHAIN 
IF ~~ THEN ~%IMOEN_JOINED%~ BGavImPCOtherChatEnd
@247
END
++ @248 EXTERN ~%IMOEN_JOINED%~ BImPCO.1
++ @249 EXTERN ~%IMOEN_JOINED%~ BImPCO.2
++ @250 EXTERN ~%IMOEN_JOINED%~ BImPCO.3

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.1
@251
END
++ @252 EXTERN ~%IMOEN_JOINED%~ BImPCO.4
++ @253 EXTERN ~%IMOEN_JOINED%~ BImPCO.27
++ @254 EXTERN ~%IMOEN_JOINED%~ BImPCO.5
++ @255 EXTERN ~%IMOEN_JOINED%~ BImPCO.30
++ @256 EXTERN ~%IMOEN_JOINED%~ BImPCO.6
++ @257 EXTERN ~%IMOEN_JOINED%~ BImPCO.7

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.2
@258
END
++ @259 EXTERN ~%IMOEN_JOINED%~ BImPCO.8
++ @260 EXTERN ~%IMOEN_JOINED%~ BImPCO.9
++ @261 EXTERN ~%IMOEN_JOINED%~ BImPCO.10

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.3
@262
END
++ @263 EXTERN ~%IMOEN_JOINED%~ BImPCO.11
++ @264 EXTERN ~%IMOEN_JOINED%~ BImPCO.12

CHAIN 
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.4
@265
END
++ @266 EXTERN ~%IMOEN_JOINED%~ BImPCO.5
++ @267 EXTERN ~%IMOEN_JOINED%~ BImPCO.13
++ @268 EXTERN ~%IMOEN_JOINED%~ BImPCO.14

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.5
@269
END
++ @250 EXTERN ~%IMOEN_JOINED%~ BImPCO.15
++ @270 EXTERN ~%IMOEN_JOINED%~ BImPCO.16
++ @271 EXTERN ~%IMOEN_JOINED%~ BImPCO.17

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.6
@272
END
++ @273 EXTERN ~%IMOEN_JOINED%~ BImPCO.18
++ @274 EXTERN ~%IMOEN_JOINED%~ BImPCO.19
++ @275 EXTERN ~%IMOEN_JOINED%~ BImPCO.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.7
@276
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.8
@277
END
++ @278 EXTERN ~%IMOEN_JOINED%~ BImPCO.21
++ @279 EXTERN ~%IMOEN_JOINED%~ BImPCO.17
++ @280 EXTERN ~%IMOEN_JOINED%~ BImPCO.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.9
@281 
END
++ @282 EXTERN ~%IMOEN_JOINED%~ BImPCO.21
++ @283 EXTERN ~%IMOEN_JOINED%~ BImPCO.17

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.10
@284
END
++ @285 EXTERN ~%IMOEN_JOINED%~ BImPCO.7
++ @286 EXTERN ~%IMOEN_JOINED%~ BImPCO.22
++ @287 EXTERN ~%IMOEN_JOINED%~ BImPCO.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.11
@288
END
++ @289 EXTERN ~%IMOEN_JOINED%~ BImPCO.13
++ @290 EXTERN ~%IMOEN_JOINED%~ BImPCO.20

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.12
@291
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.15
@323
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.13
@324
END
++ @325 EXTERN ~%IMOEN_JOINED%~ BImPCO.23
++ @326 EXTERN ~%IMOEN_JOINED%~ BImPCO.24
++ @327 EXTERN ~%IMOEN_JOINED%~ BImPCO.24

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.14
@328
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.16
@329
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.17
@330
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.18
@331
END
++ @301 EXTERN ~%IMOEN_JOINED%~ BImPCO.25
++ @302 EXTERN ~%IMOEN_JOINED%~ BImPCO.26

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.19
@332
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.20
@333
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.21
@305
END
++ @306 EXTERN ~%IMOEN_JOINED%~ BImPCO.7
++ @307 EXTERN ~%IMOEN_JOINED%~ BImPCO.18
++ @308 EXTERN ~%IMOEN_JOINED%~ BImPCO.5


CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.22
@334
= @310
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.23
@335
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.24
@336
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.25
@313
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.26
@314
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.27
@337
END
++ @301 EXTERN ~%IMOEN_JOINED%~ BImPCO.28
++ @338 EXTERN ~%IMOEN_JOINED%~ BImPCO.29

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.28
@339
END
++ @318 EXTERN ~%IMOEN_JOINED%~ BImPCO.25
++ @319 EXTERN ~%IMOEN_JOINED%~ BImPCO.25
++ @340 EXTERN ~%IMOEN_JOINED%~ BImPCO.25

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.29
@341
EXIT

CHAIN
IF ~~ THEN ~%IMOEN_JOINED%~ BImPCO.30
@342
END
++ @306 EXTERN ~%IMOEN_JOINED%~ BImPCO.7
++ @307 EXTERN ~%IMOEN_JOINED%~ BImPCO.18
++ @308 EXTERN ~%IMOEN_JOINED%~ BImPCO.5

/* Finger comments */
///* Ajantis */
CHAIN
IF WEIGHT #-2 ~Global("B!AjantisFinger","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ BAjantisFinger
@343
DO ~SetGlobal("B!AjantisFinger","GLOBAL",2)~
== ~B!GAVINJ~ @344
== ~%AJANTIS_JOINED%~ @345
== ~B!GAVINJ~ @84
EXIT

///* Alora */
CHAIN
IF WEIGHT #-2 ~Global("B!AloraFinger","GLOBAL",1)~ THEN ~%ALORA_JOINED%~ BAloraFinger
@346
DO ~SetGlobal("B!AloraFinger","GLOBAL",2)~
== ~B!GAVINJ~ @347
EXIT

///* Branwen */
CHAIN
IF WEIGHT #-2 ~Global("B!BranwenFinger","GLOBAL",1)~ THEN ~%BRANWEN_JOINED%~ BBranwenFinger
@348
DO ~SetGlobal("B!BranwenFinger","GLOBAL",2)~
== ~B!GAVINJ~ @349
EXIT

///* Coran */
CHAIN
IF WEIGHT #-2 ~Global("B!CoranFinger","GLOBAL",1)~ THEN ~%CORAN_JOINED%~ BCoranFinger
@350
DO ~SetGlobal("B!CoranFinger","GLOBAL",2)~
== ~B!GAVINJ~ @351
EXIT

///* Dynaheir */
CHAIN
IF WEIGHT #-2 ~Global("B!DynaheirFinger","GLOBAL",1)~ THEN ~%DYNAHEIR_JOINED%~ BDynaheirFinger
@352
DO ~SetGlobal("B!DynaheirFinger","GLOBAL",2)~
== ~B!GAVINJ~ @353
EXIT

///* Edwin */
CHAIN
IF WEIGHT #-2 ~Global("B!EdwinFinger","GLOBAL",1)~ THEN ~%EDWIN_JOINED%~ BEdwinFinger
@354
DO ~SetGlobal("B!EdwinFinger","GLOBAL",2)~
== ~B!GAVINJ~ @355
EXIT

///* Eldoth */
CHAIN
IF WEIGHT #-2 ~Global("B!EldothFinger","GLOBAL",1)~ THEN ~%ELDOTH_JOINED%~ BEldothFinger
@356
DO ~SetGlobal("B!EldothFinger","GLOBAL",2)~
== ~B!GAVINJ~ @357
EXIT

///* Faldorn */
CHAIN
IF WEIGHT #-2 ~Global("B!FaldornFinger","GLOBAL",1)~ THEN ~%FALDORN_JOINED%~ BFaldornFinger
@358
DO ~SetGlobal("B!FaldornFinger","GLOBAL",2)~
== ~B!GAVINJ~ @359
EXIT

///* Garrick */
CHAIN
IF WEIGHT #-2 ~Global("B!GarrickFinger","GLOBAL",1)~ THEN ~%GARRICK_JOINED%~ BGarrickFinger
@360
DO ~SetGlobal("B!GarrickFinger","GLOBAL",2)~
== ~B!GAVINJ~ @361
== ~%GARRICK_JOINED%~ @362
EXIT

///* Imoen */
CHAIN
IF WEIGHT #-2 ~Global("B!ImoenFinger","GLOBAL",1)~ THEN ~%IMOEN_JOINED%~ BImoenFinger
@363
DO ~SetGlobal("B!ImoenFinger","GLOBAL",2)~
== ~B!GAVINJ~ @364
EXIT

///* Jaheira */
CHAIN
IF WEIGHT #-2 ~Global("B!JaheiraFinger","GLOBAL",1)~ THEN ~%JAHEIRA_JOINED%~ BJaheiraFinger
@365
DO ~SetGlobal("B!JaheiraFinger","GLOBAL",2)~
== ~B!GAVINJ~ @366
EXIT

///* Kagain */
CHAIN
IF WEIGHT #-2 ~Global("B!KagainFinger","GLOBAL",1)~ THEN ~%KAGAIN_JOINED%~ BKagainFinger
@367
DO ~SetGlobal("B!KagainFinger","GLOBAL",2)~
== ~B!GAVINJ~ @368
EXIT

///* Khalid */
CHAIN
IF WEIGHT #-2 ~Global("B!Finger","GLOBAL",1)~ THEN ~%KHALID_JOINED%~ BFinger
@369
DO ~SetGlobal("B!Finger","GLOBAL",2)~
== ~B!GAVINJ~ @370
EXIT

///* Kivan */
CHAIN
IF WEIGHT #-2 ~Global("B!KivanFinger","GLOBAL",1)~ THEN ~%KIVAN_JOINED%~ BKivanFinger
@371
DO ~SetGlobal("B!KivanFinger","GLOBAL",2)~
== ~B!GAVINJ~ @84
EXIT

///* Minsc */
CHAIN
IF WEIGHT #-2 ~Global("B!MinscFinger","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ BMinscFinger
@372
= @373
DO ~SetGlobal("B!MinscFinger","GLOBAL",2)~
== ~B!GAVINJ~ @374
EXIT

///* Montaron */
CHAIN
IF WEIGHT #-2 ~Global("B!MontaronFinger","GLOBAL",1)~ THEN ~%MONTARON_JOINED%~ BMontaronFinger
@375
DO ~SetGlobal("B!MontaronFinger","GLOBAL",2)~
== ~B!GAVINJ~ @376
EXIT

///* Quayle */
CHAIN
IF WEIGHT #-2 ~Global("B!QuayleFinger","GLOBAL",1)~ THEN ~%QUAYLE_JOINED%~ BQuayleFinger
@377
DO ~SetGlobal("B!QuayleFinger","GLOBAL",2)~
== ~B!GAVINJ~ @378
EXIT

///* Safana */
CHAIN
IF WEIGHT #-2 ~Global("B!SafanaFinger","GLOBAL",1)~ THEN ~%SAFANA_JOINED%~ BSafanaFinger
@379
DO ~SetGlobal("B!SafanaFinger","GLOBAL",2)~
EXIT

///* Shar-Teel */
CHAIN
IF WEIGHT #-2 ~Global("B!SharTeelFinger","GLOBAL",1)~ THEN ~%SHARTEEL_JOINED%~ BSharTeelFinger
@380
DO ~SetGlobal("B!SharTeelFinger","GLOBAL",2)~
== ~B!GAVINJ~ @381
EXIT

///* Skie */
CHAIN
IF WEIGHT #-2 ~Global("B!SkieFinger","GLOBAL",1)~ THEN ~%SKIE_JOINED%~ BSkieFinger
@382
DO ~SetGlobal("B!SkieFinger","GLOBAL",2)~
== ~B!GAVINJ~ @383
EXIT

///* Tiax */
CHAIN
IF WEIGHT #-2 ~Global("B!TiaxFinger","GLOBAL",1)~ THEN ~%TIAX_JOINED%~ BTiaxFinger
@384
DO ~SetGlobal("B!TiaxFinger","GLOBAL",2)~
== ~B!GAVINJ~ @385
EXIT

///* Viconia */
CHAIN
IF WEIGHT #-2 ~Global("B!ViconiaFinger","GLOBAL",1)~ THEN ~%VICONIA_JOINED%~ BViconiaFinger
@386
DO ~SetGlobal("B!ViconiaFinger","GLOBAL",2)~
== ~B!GAVINJ~ @387
EXIT

///* Xan */
CHAIN
IF WEIGHT #-2 ~Global("B!XanFinger","GLOBAL",1)~ THEN ~%XAN_JOINED%~ BXanFinger
@388
DO ~SetGlobal("B!XanFinger","GLOBAL",2)~
== ~B!GAVINJ~ @389
EXIT

///* Xzar */
CHAIN
IF WEIGHT #-2 ~Global("B!XzarFinger","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ BXzarFinger
@390
DO ~SetGlobal("B!XzarFinger","GLOBAL",2)~
== ~B!GAVINJ~ @391
EXIT

///* Yeslick */
CHAIN
IF WEIGHT #-2 ~Global("B!YeslickFinger","GLOBAL",1)~ THEN ~%YESLICK_JOINED%~ BYeslickFinger
@392
DO ~SetGlobal("B!YeslickFinger","GLOBAL",2)~
== ~B!GAVINJ~ @393
EXIT