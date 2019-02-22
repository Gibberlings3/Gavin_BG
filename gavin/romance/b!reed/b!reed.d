
BEGIN ~B!REED~

CHAIN
IF ~Global("B!GavinRingDelivery","GLOBAL",2)~ THEN ~B!REED~ BReedHelloBrother
@0
DO ~SetGlobal("B!GavinRingDelivery","GLOBAL",3)~
== ~B!GAVINJ~ @1
== ~B!REED~ @2
= @3
== ~B!GAVINJ~ @4
== ~B!REED~ @5
== ~B!GAVINJ~ @6
== ~B!REED~ @7
== ~B!GAVINJ~ @8
== ~B!REED~ @9
== ~B!GAVINJ~ @10
== ~B!REED~ @11
== ~B!GAVINJ~ @12
== ~B!REED~ @13
END
++ @14 EXTERN ~B!REED~ BReedOhDear
++ @15 EXTERN ~B!REED~ BReedGetAlong
++ @16 EXTERN ~B!REED~ BReedOhDear
++ @17 EXTERN ~B!REED~ BReedGetAlong

CHAIN
IF ~~ THEN ~B!REED~ BReedOhDear
@18
= @19
== ~B!GAVINJ~ @20
== ~B!REED~ @21 DO ~EscapeArea()~
EXIT

CHAIN
IF ~~ THEN ~B!REED~ BReedGetAlong
@22
== ~B!GAVINJ~ @23
== ~B!REED~ @24
== ~B!GAVINJ~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @25
== ~B!REED~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @26
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @27
== ~B!GAVINJ~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @28
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @29
== ~B!REED~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @30
== ~B!GAVINJ~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @31
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @32
== ~B!REED~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @33
== ~B!GAVINJ~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @34
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @35
== ~B!REED~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @36
== ~B!GAVINJ~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @37
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @38
== ~B!REED~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @39
== ~B!GAVINJ~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @40
== ~B!REED~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @41
== ~B!GAVINJ~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @42
== ~B!REED~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @43
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @44
== ~B!REED~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @45
== ~B!GAVINJ~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @46
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @47
== ~B!GAVINJ~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @48
== ~B!REED~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @49
== ~B!GAVINJ~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @50
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @51
== ~B!REED~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @52
== ~B!GAVINJ~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @53
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @54
== ~B!REED~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @55
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @56
== ~B!REED~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @57
== ~B!GAVINJ~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @58
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @59
== ~B!REED~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @60
== ~B!GAVINJ~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @61
== ~%VICONIA_JOINED%~  IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @62
== ~B!GAVINJ~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @63
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @64
== ~B!REED~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @65
== ~B!GAVINJ~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @66
== ~%KAGAIN_JOINED%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @67
== ~B!REED~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @68
== ~B!GAVINJ~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @69
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @70
== ~B!GAVINJ~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @71
== ~B!REED~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @72
== ~B!GAVINJ~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @73
== ~%YESLICK_JOINED%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @74
== ~B!REED~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @75
== ~B!GAVINJ~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @76
== ~B!REED~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @77
== ~B!GAVINJ~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @78
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @79
== ~B!GAVINJ~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @80
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @81
== ~B!GAVINJ~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @82
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @83
== ~B!REED~  IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @84
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @85
== ~B!REED~  IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @86 
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @87
== ~B!GAVINJ~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @88
== ~%ELDOTH_JOINED%~ IF ~InParty("eldoth") !InMyArea("skie") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @89
== ~%ELDOTH_JOINED%~ IF ~InParty("eldoth") InMyArea("skie") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @90
== ~B!REED~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @91
== ~B!GAVINJ~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @92
== ~B!REED~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @93
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @94
== ~B!REED~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @95
== ~B!GAVINJ~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @96
== ~B!REED~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @97
== ~%SKIE_JOINED%~ IF ~InParty("skie") InParty("eldoth") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @98
== ~%SKIE_JOINED%~ IF ~InParty("skie") !InParty("eldoth") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @99
== ~B!GAVINJ~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @100
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @101
== ~B!GAVINJ~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @102
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @103
== ~B!GAVINJ~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @104
== ~B!REED~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @105
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @106
== ~B!GAVINJ~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @107
== ~B!REED~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @108
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @109
== ~B!REED~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @110 
== ~B!GAVINJ~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @111
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @112
== ~B!GAVINJ~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @113
== ~B!REED~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @114
== ~B!GAVINJ~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @115
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @116
== ~B!GAVINJ~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @117
== ~B!REED~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @118
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @119
== ~B!GAVINJ~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @120
== ~B!REED~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @121
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @122
== ~B!REED~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @123
== ~B!GAVINJ~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @124
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @125
== ~B!REED~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @126
== ~B!GAVINJ~ @127
== ~B!REED~ @128
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @129
== ~B!REED~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @130
== ~B!GAVINJ~ @131
== ~B!REED~ @132 DO ~EscapeArea()~
EXIT

