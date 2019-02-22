BEGIN ~B!EVIE~
BEGIN ~B!DARLOS~

CHAIN
IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN ~B!DARLOS~ BDarlosGavin
@0
EXIT

CHAIN
IF ~OR(3) !InParty("B!GAVIN") !InMyArea("B!GAVIN") StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN ~B!DARLOS~ BDarlosGavin
@1
EXIT

CHAIN
IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!EvieGavin","GLOBAL",0)~ THEN ~B!EVIE~ BEvieGavin
@2
DO ~SetGlobal("B!EvieGavin","GLOBAL",1)~
== ~B!GAVINJ~ @3
== ~B!EVIE~ @4 EXTERN ~B!DARLOS~ MeetDad

CHAIN ~B!DARLOS~ MeetDad
@5
== ~B!GAVINJ~ @6
== ~B!DARLOS~ @7
== ~B!EVIE~ @8
== ~B!DARLOS~ @9
== ~B!EVIE~ @10
== ~B!GAVINJ~ @11
== ~B!EVIE~ @12
== ~B!GAVINJ~ @13
END
IF ~Global("B!GavinRomanceActive","GLOBAL",1)~ THEN EXTERN ~B!EVIE~ BEvieGirlfriend
IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~B!EVIE~ BEvieFiancee
IF ~GlobalGT("B!GavinFriend","GLOBAL",0) !Global("B!GavinFriend","GLOBAL",3) !Global("B!GavinRomanceActive","GLOBAL",1) !Global("B!GavinRomanceActive","GLOBAL",2)~ THEN EXTERN ~B!EVIE~ BEvieFriend
IF ~!Global("B!GavinFriend","GLOBAL",1) !Global("B!GavinFriend","GLOBAL",2)~ THEN EXTERN ~B!EVIE~ BEvieSuspicious

CHAIN
IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) GlobalGT("B!EvieGavin","GLOBAL",0)~ THEN ~B!EVIE~ BEvieGavin
@14
== ~B!GAVINJ~ IF ~!Global("B!GavinRomanceActive","GLOBAL",2)~ THEN @15
== ~B!EVIE~ IF ~!Global("B!GavinRomanceActive","GLOBAL",2)~ THEN @16
== ~B!GAVINJ~ IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLovetalk","GLOBAL",54)~ THEN @17
== ~B!EVIE~ IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLovetalk","GLOBAL",54)~ THEN @18
== ~B!DARLOS~ IF ~Global("B!GavinRomanceActive","GLOBAL",2) GlobalLT("B!GavinLovetalk","GLOBAL",54)~ THEN @19
== ~B!GAVINJ~ IF ~Global("B!GavinRomanceActive","GLOBAL",2) !GlobalLT("B!GavinLovetalk","GLOBAL",54)~ THEN @20
== ~B!EVIE~ IF ~Global("B!GavinRomanceActive","GLOBAL",2) !GlobalLT("B!GavinLovetalk","GLOBAL",54)~ THEN @21
== ~B!DARLOS~ IF ~Global("B!GavinRomanceActive","GLOBAL",2) !GlobalLT("B!GavinLovetalk","GLOBAL",54)~ THEN @22
== ~B!EVIE~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN @23
== ~B!EVIE~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN @24
== ~B!EVIE~ IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN @25
EXIT

CHAIN ~B!EVIE~ BEvieSuspicious
@26
= @27
== ~B!DARLOS~ @28
== ~B!GAVINJ~ @29
== ~B!DARLOS~ @30
== ~B!GAVINJ~ @31
== ~B!EVIE~ @32
== ~B!GAVINJ~ @33
== ~B!EVIE~ @34
== ~B!DARLOS~ @35
== ~B!GAVINJ~ @36
EXIT

CHAIN ~B!EVIE~ BEvieFriend
@37
= @27
== ~B!DARLOS~ @28
== ~B!GAVINJ~ @29
== ~B!DARLOS~ @38
== ~B!GAVINJ~ @39
== ~B!DARLOS~ @40
== ~B!EVIE~ @41
== ~B!GAVINJ~ @42
== ~B!EVIE~ @34
== ~B!DARLOS~ @43
== ~B!GAVINJ~ @44
EXIT

CHAIN ~B!EVIE~ BEvieGirlfriend
@45
= @27
== ~B!DARLOS~ @46
== ~B!GAVINJ~ @29
== ~B!DARLOS~ @47
== ~B!GAVINJ~ @48
== ~B!DARLOS~ @49
== ~B!EVIE~ @41
== ~B!GAVINJ~ @42
== ~B!EVIE~ @34
== ~B!DARLOS~ @50
== ~B!GAVINJ~ @44
END
++ @51 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!EVIE~ BEvieYouToo
++ @52 EXTERN ~B!EVIE~ BEvieByeBye

CHAIN ~B!EVIE~ BEvieYouToo
@53
EXIT

CHAIN ~B!EVIE~ BEvieByeBye
@54
EXIT

CHAIN ~B!EVIE~ BEvieFiancee
@55
= @27
== ~B!DARLOS~ @56
== ~B!GAVINJ~ @29
== ~B!DARLOS~ @57
== ~B!GAVINJ~ @58
== ~B!EVIE~ @59
== ~B!GAVINJ~ @60
== ~B!EVIE~ @61
== ~B!DARLOS~ @62
== ~B!EVIE~ @41
= @63
== ~B!GAVINJ~ @42
== ~B!EVIE~ @64
== ~B!DARLOS~ @65
== ~B!GAVINJ~ @44
END
++ @51 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!EVIE~ BEvieYouToo
++ @52 EXTERN ~B!EVIE~ BEvieByeBye

CHAIN
IF ~OR(3) !InParty("B!GAVIN") !InMyArea("B!GAVIN") StateCheck("B!GAVIN",CD_STATE_NOTVALID) NumTimesTalkedTo(0)~ THEN ~B!EVIE~ BEvieNoGavin
@66
== ~B!DARLOS~ @67
END
++ @68 EXTERN ~B!EVIE~ BEvieAllRightThen
++ @69 EXTERN ~B!EVIE~ BEvieOhNo
++ @70 EXTERN ~B!EVIE~ BEvieAdventurers
+ ~Dead("B!GAVIN")~ + @71 EXTERN ~B!EVIE~ BEvieOurSon
+ ~!Dead("B!GAVIN")~ + @72 EXTERN ~B!EVIE~ BEvieYes

CHAIN
IF ~OR(3) !InParty("B!GAVIN") !InMyArea("B!GAVIN") StateCheck("B!GAVIN",CD_STATE_NOTVALID) NumTimesTalkedToGT(0)~ THEN ~B!EVIE~ BEvieNoGavin
@73
END
++ @74 EXTERN ~B!EVIE~ BEvieAllRightThen
++ @75 EXTERN ~B!EVIE~ BEvieOhNo
++ @70 EXTERN ~B!EVIE~ BEvieAdventurers
+ ~Dead("B!GAVIN")~ + @71 EXTERN ~B!EVIE~ BEvieOurSon
+ ~!Dead("B!GAVIN") Global("B!EvieGavin","GLOBAL",0)~ + @72 EXTERN ~B!EVIE~ BEvieYes

CHAIN ~B!EVIE~ BEvieYes
@76
EXIT

CHAIN ~B!EVIE~ BEvieOurSon
@77
== ~B!DARLOS~ @78
END
++ @79 EXTERN ~B!DARLOS~ BDarlosLying
++ @80 EXTERN ~B!EVIE~ BEvieWailyWaily
++ @81 EXTERN ~B!EVIE~ BEvieWeepy

CHAIN ~B!EVIE~ BEvieWailyWaily
@82
== ~B!DARLOS~ @83
DO ~GiveGoldForce(100) ActionOverride("B!DARLOS",EscapeArea()) ActionOverride("B!Evie",EscapeArea())~
EXIT

CHAIN ~B!EVIE~ BEvieWeepy
@84
== ~B!DARLOS~ @85
== ~B!EVIE~ @86
== ~B!DARLOS~ @87
DO ~GiveGoldForce(100) ActionOverride("B!DARLOS",EscapeArea()) ActionOverride("B!Evie",EscapeArea())~
EXIT

APPEND ~B!DARLOS~
IF ~~ THEN BEGIN BDarlosLying
SAY @88
IF ~~ THEN DO ~ActionOverride("B!DARLOS",EscapeArea()) ActionOverride("B!Evie",EscapeArea())~
EXIT
END
END

APPEND ~B!EVIE~
IF ~~ THEN BEGIN BEvieAllRightThen
SAY @89
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BEvieOhNo
SAY @90
IF ~~ THEN DO ~GiveGoldForce(300) ActionOverride("B!DARLOS",EscapeArea()) ActionOverride("B!Evie",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN BEvieAdventurers
SAY @91
IF ~~ THEN EXIT
END
END
