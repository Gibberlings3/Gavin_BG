/* updated */
APPEND ~B!GAVIN~
IF ~NumTimesTalkedTo(0)~ THEN BEGIN BGavinHello
SAY @0
++ @1 + BGavin001a
++ @2 + BGavin001b
++ @3 + BGavin001c
++ @4 + BGavin001d
++ @5 + BGavin001d
++ @6 + BGavin001e
IF ~PartyHasItem("X#COWIRO")~ THEN REPLY @7 + BGavin001f
++ @8 EXIT
IF ~Alignment(Player1,MASK_EVIL) Class(Player1,CLERIC_ALL) ~ THEN REPLY @9 EXIT
END

//Party needs temple’s services
IF ~~ THEN BEGIN BGavin001a 
SAY @10
++ @11 + BGavin001a1
++ @12 + BGavin001a2
+ ~HPPercentLT(Player1,50)~ + @13 + BGavHeal1
+ ~NumInPartyGT(1) HPPercentLT(Player2,50)~ + @14 + BGavHeal2
+ ~NumInPartyGT(2) HPPercentLT(Player3,50)~ + @15 + BGavHeal3
+ ~NumInPartyGT(3) HPPercentLT(Player4,50)~ + @16 + BGavHeal4
+ ~NumInPartyGT(4) HPPercentLT(Player5,50)~ + @17 + BGavHeal5
+ ~NumInPartyGT(5) HPPercentLT(Player6,50)~ + @18 + BGavHeal6
++ @19 + BGavin001a3
++ @20 + BGavin001a4
END

IF ~~ THEN BEGIN BGavHeal1
SAY @21
IF ~~ THEN DO ~ForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ GOTO BGavin002a
END

IF ~~ THEN BEGIN BGavHeal2
SAY @21
IF ~~ THEN DO ~ForceSpell(Player2,CLERIC_CURE_LIGHT_WOUNDS)~ GOTO BGavin002a
END

IF ~~ THEN BEGIN BGavHeal3
SAY @21
IF ~~ THEN DO ~ForceSpell(Player3,CLERIC_CURE_LIGHT_WOUNDS)~ GOTO BGavin002a
END

IF ~~ THEN BEGIN BGavHeal4
SAY @21
IF ~~ THEN DO ~ForceSpell(Player4,CLERIC_CURE_LIGHT_WOUNDS)~ GOTO BGavin002a
END

IF ~~ THEN BEGIN BGavHeal5
SAY @21
IF ~~ THEN DO ~ForceSpell(Player5,CLERIC_CURE_LIGHT_WOUNDS)~ GOTO BGavin002a
END

IF ~~ THEN BEGIN BGavHeal6
SAY @21
IF ~~ THEN DO ~ForceSpell(Player6,CLERIC_CURE_LIGHT_WOUNDS)~ GOTO BGavin002a
END

IF ~~ THEN BEGIN BGavin001a1 
SAY @22 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavin001a2 
SAY @23 
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN BGavin001a3 
SAY @24 
IF ~~ THEN GOTO BGavin001x
END

IF ~~ THEN BEGIN BGavin001a4 
SAY @25 
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN BGavin001b
SAY @26 
IF ~~ THEN GOTO BGavin001x
END

//Party needs divine intervention
IF ~~ THEN BEGIN BGavin001c 
SAY @27
++ @28 + BGavin001c1
++ @29 + BGavin001c2
++ @30 + BGavinGone
END

IF ~~ THEN BEGIN BGavin001c1 
SAY @31 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavin001c2 
SAY @32 
IF ~~ THEN GOTO BGavin001x
END

//Party is looking for knowledge or rumors
IF ~~ THEN BEGIN BGavin001d 
SAY @33
++ @34 + BGavin001d1
++ @35 + BGavin001d1
++ @36 + BGavin001d2
++ @37 + BGavin001d3
END

IF ~~ THEN BEGIN BGavin001d1 
SAY @38 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavin001d2 
SAY @39
++ @40 + BGavin001d2a
++ @41 + BGavin001d2b
END

IF ~~ THEN BEGIN BGavin001d2a 
SAY @42 
IF ~~ THEN GOTO BGavin001x
END

IF ~~ THEN BEGIN BGavin001d2b 
SAY @43
++ @44 + BGavin001d2a
++ @45 + BGavinGone
END

IF ~~ THEN BEGIN BGavin001d3 
SAY @46
= @47 
IF ~~ THEN GOTO BGavin001x
END

//Tell me about Lathander
IF ~~ THEN BEGIN BGavin001e 
SAY @48
++ @49 + BGavin001a
++ @50 + BGavin001e1
++ @51 + BGavinGone
END

IF ~~ THEN BEGIN BGavin001e1 
SAY @52 
IF ~~ THEN GOTO BGavin001x
END

//Party wants to know about the roses.
IF ~~ THEN BEGIN BGavin001f
SAY @53 
IF ~~ THEN EXIT
END

//Party comes back later
IF ~NumTimesTalkedToGT(0) !Global("GavinWaits","GLOBAL",1)~ THEN BEGIN BGavinLater
SAY @54
++ @55 + BGavin002a
++ @56 + BGavin002a
++ @57 + BGavin002b
++ @58  + BGavinJoin
++ @59 + BGavinGone
END

//Party comes back and wants to talk to Gavin
IF ~~ THEN BEGIN BGavin002a 
SAY @60
++ @61 + BGavinJoin
++ @62 + BGavinWait
++ @63 + BGavinGone
END

//Party has too much to do to talk to Gavin now
IF ~~ THEN BEGIN BGavin002b 
SAY @64
++ @61 + BGavinJoin
++ @62 + BGavinWait
++ @63 + BGavinGone
END



//Joining Waiting or Leaving
IF ~NumTimesTalkedToGT(0) Global("GavinWaits","GLOBAL",1)~ THEN BEGIN BGavinJoinAfterWait
SAY @65
++ @66 + BGavinGone
++ @67 + BGavinWait
++ @68 DO ~SetGlobal("GavinWaits","GLOBAL",2) SetGlobal("GavinJoined","GLOBAL",1) JoinParty()~ EXIT 
END

IF ~~ THEN BEGIN BGavinJoin
SAY @69
++ @66 + BGavinGone
++ @68 DO ~SetGlobal("GavinWaits","GLOBAL",2) SetGlobal("GavinJoined","GLOBAL",1) JoinParty()~ EXIT 
END

IF ~~ THEN BEGIN BGavinWait 
SAY @70 
IF ~~ THEN DO ~SetGlobal("GavinWaits","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavinGone 
SAY @71 
IF ~~ THEN DO ~SetGlobal("GavinWaits","GLOBAL",2) SetGlobal("GavinJoined","GLOBAL",0) EscapeArea()~ EXIT
END 

END //End Append

CHAIN
IF ~~ THEN ~B!Gavin~ BGavin001x
@72
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Alignment(Player1,MASK_EVIL)~ THEN @73 
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) OR(3) !InParty("yeslick") !InMyArea("yeslick") StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @74
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @75
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @76
== ~%KAGAIN_JOINED%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @77
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @78
END
++ @61 EXTERN ~B!Gavin~ BGavinJoin
++ @62 EXTERN ~B!Gavin~ BGavinWait
++ @63 EXTERN ~B!Gavin~ BGavinGone

APPEND ~B!GAVIN~
IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN GavinCharmTalk
SAY @79
IF ~~ THEN EXIT
END
END