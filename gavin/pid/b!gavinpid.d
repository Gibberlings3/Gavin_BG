/* CONTENTS */
///* TALK 1 -- FRIENDSHIP PID */
///* Talk 2: There is no talk 2 */
///* TALK 3 -- EARLY ROMANCE PID */
///* TALK 4 -- LATER ROMANCE PID */
///* Committed Romance PID */
/////* After finger incident */
/////* After Bhaal discovery */
/////* Committed PID */
///* BROKEN RELATIONSHIP PID */
///* PID for Non-friends */

///* TALK 1 -- FRIENDSHIP PID */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat()
!Global("B!GavinRomanceActive","GLOBAL",3)
Global("B!GavinFriendMatch","GLOBAL",1)
GlobalGT("B!GavinFriend","GLOBAL",0)
!Global("B!GavinFriend","GLOBAL",3)
GlobalLT("B!GavinLovetalk","GLOBAL",7)~ THEN ~B!GAVINJ~ BGavinTalk1
@0
= @1
END
++ @2 EXTERN ~B!GAVINJ~ BGavinTalk1.1
+ ~OR(6) HPPercentLT(Player1,80) HPPercentLT(Player2,80) HPPercentLT(Player3,80) HPPercentLT(Player4,80) HPPercentLT(Player5,80) HPPercentLT(Player6,80)~ + @3 EXTERN ~B!GAVINJ~ BGavinTalk.Healing
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",0)~ + @4 EXTERN ~B!GAVINJ~ BGavinHouse1
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",2)~ + @5 EXTERN ~B!GAVINJ~ BGavinHouse2
+ ~Global("B!GavinProstitute","GLOBAL",1)~ + @6 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore
+ ~RandomNum(4,1)~ + @7 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.2.1
+ ~RandomNum(4,2)~ + @7 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.2.2
+ ~RandomNum(4,3)~ + @7 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.2.3
+ ~RandomNum(4,4)~ + @7 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.2.4
++ @8 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.3
+ ~RandomNum(4,1)~ + @9 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.4.1
+ ~RandomNum(4,2)~ + @9 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.4.2
+ ~RandomNum(4,3)~ + @9 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.4.3
+ ~RandomNum(4,4)~ + @9 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.4.4
+ ~RandomNum(4,1)~ + @10 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.5.1
+ ~RandomNum(4,2)~ + @10 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.5.2
+ ~RandomNum(4,3)~ + @10 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.5.3
+ ~RandomNum(4,4)~ + @10 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.5.4
++ @11 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.6
++ @12 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.7
+ ~Global("B!GavinRomanceMatch","GLOBAL",0) GlobalLT("B!GavinReevaluate","GLOBAL",6)~ + @13  DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1) IncrementGlobal("B!GavinReevaluate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinReevaluate
+ ~RandomNum(4,1)~ + @14 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.8.1
+ ~RandomNum(4,2)~ + @14 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.8.2
+ ~RandomNum(4,3)~ + @14 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.8.3
+ ~RandomNum(4,4)~ + @14 DO ~IncrementGlobal("B!GavinFriendFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.8.4
+ ~Global("B!GavinQuietFriend","GLOBAL",0)~ + @15 DO ~SetGlobal("B!GavinQuietFriend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinQuietFriend
+ ~Global("B!GavinQuietFriend","GLOBAL",1)~ + @16 DO ~SetGlobal("B!GavinQuietFriend","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinResumeFT
+ ~Global("B!GavinHammer","GLOBAL",0)~ + @17 DO ~SetGlobal("B!GavinHammer","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk1.10
++ @18 EXTERN ~B!GAVINJ~ BGavinVoice


APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinQuietFriend
SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinResumeFT
SAY @20
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinReevaluate
SAY @21
IF ~Gender(Player1,FEMALE)
  ReputationGT(Player1,10)
  CheckStatGT(Player1,12,CHR)
  CheckStatGT(Player1,9,WIS)
  Alignment(Player1,MASK_GOOD)
  !Kit(Player1,ASSASIN)
  !Kit(Player1,BOUNTYHUNTER)
  !Kit(Player1,MAGESCHOOL_NECROMANCER)
  !HasItemEquiped("%tutu_var%BELT05",Player1)
  !HasItemEquiped("%tutu_var%BELT05","B!GAVIN")~ THEN GOTO BGavinFriendStartsRomance
IF ~Gender(Player1,MALE)~ THEN GOTO BGavinFriendMale
IF ~ReputationLT(Player1,11)~ THEN GOTO BGavinFriendRep
IF ~CheckStatLT(Player1,13,CHR)~ THEN GOTO BGavinFriendCharisma
IF ~CheckStatLT(Player1,10,WIS)~ THEN GOTO BGavinFriendWisdom
IF ~!Alignment(Player1,MASK_GOOD)~ THEN GOTO BGavinFriendGood
IF ~Kit(Player1,ASSASIN)~ THEN GOTO BGavinFriendAssassin
IF ~Kit(Player1,BOUNTYHUNTER)~ THEN GOTO BGavinFriendBountyHunter
IF ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ THEN GOTO BGavinFriendNecromancer
IF ~HasItemEquiped("%tutu_var%BELT05",Player1)~ THEN GOTO BGavinFriendBelt
IF ~HasItemEquiped("%tutu_var%BELT05","B!GAVIN")~ THEN GOTO BGavinFriendMyBelt
END

IF ~~ THEN BEGIN BGavinFriendStartsRomance
SAY @22
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceMatch","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",1) SetGlobal("B!GavinFriendOnly","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN BGavinFriendMale
SAY @23
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendRep
SAY @24
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendCharisma
SAY @25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendWisdom
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendGood
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendAssassin
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendBountyHunter
SAY @29
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendNecromancer
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendBelt
SAY @31
= @32
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendMyBelt
SAY @33
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN BGavinTalk1.1
SAY @34
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN BGavinTalk1.2.1
SAY @35
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.2.2
SAY @36
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.2.3
SAY @37
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.2.4
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.3
SAY @39
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.4.1
SAY @40
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.4.2
SAY @41
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.4.3
SAY @42
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.4.4
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.5.1
SAY @40
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.5.2
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.5.3
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.5.4
SAY @46 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.6
SAY @47
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.7
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.8.1
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.8.2
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.8.3
SAY @51
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.8.4
SAY @52
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk1.10
SAY @53
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinVoice
SAY @54
IF ~~ THEN DO ~SetName(@55)
SetPlayerSound(Myself,@56 ,0)
SetPlayerSound(Myself,@57 ,1)
SetPlayerSound(Myself,@58 ,2)
SetPlayerSound(Myself,@59 ,3)
SetPlayerSound(Myself,@60 ,4)
SetPlayerSound(Myself,@61 ,5)
SetPlayerSound(Myself,@62 ,6)
SetPlayerSound(Myself,@63 ,7)
SetPlayerSound(Myself,@64 ,8)
SetPlayerSound(Myself,@65 ,9)
SetPlayerSound(Myself,@66 ,10)
SetPlayerSound(Myself,@67 ,11)
SetPlayerSound(Myself,@68 ,12)
SetPlayerSound(Myself,@69 ,18)
SetPlayerSound(Myself,@70 ,19)
SetPlayerSound(Myself,@71 ,20)
SetPlayerSound(Myself,@72 ,21)
SetPlayerSound(Myself,@73 ,22)
SetPlayerSound(Myself,@74 ,23)
SetPlayerSound(Myself,@75 ,24)
SetPlayerSound(Myself,@76 ,25)
SetPlayerSound(Myself,@77 ,26)
SetPlayerSound(Myself,@1 ,27)
SetPlayerSound(Myself,@79 ,28)
SetPlayerSound(Myself,@80 ,29)
SetPlayerSound(Myself,@81 ,30)
SetPlayerSound(Myself,@82 ,31)
SetPlayerSound(Myself,@83 ,32)
SetPlayerSound(Myself,@84 ,33)
SetPlayerSound(Myself,@85 ,34)
SetPlayerSound(Myself,@86 ,35)
SetPlayerSound(Myself,@87 ,36)
SetPlayerSound(Myself,@88 ,37)
SetPlayerSound(Myself,@89 ,38)
SetPlayerSound(Myself,@90 ,59)
SetPlayerSound(Myself,@91 ,62)
SetPlayerSound(Myself,@90 ,63)
SetPlayerSound(Myself,@91 ,64)
SetPlayerSound(Myself,@92 ,65)
SetPlayerSound(Myself,@93 ,66)
SetPlayerSound(Myself,@94 ,67)
SetPlayerSound(Myself,@95 ,68)
SetPlayerSound(Myself,@96 ,69)
SetPlayerSound(Myself,@97 ,70)
SetPlayerSound(Myself,@98 ,71)
SetPlayerSound(Myself,@99 ,72)
SetPlayerSound(Myself,@100,74)~
EXIT
END
END

///* Talk 2: There is no talk 2 */


///* TALK 3 -- EARLY ROMANCE PID */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat() 
Global("B!GavinRomanceMatch","GLOBAL",1)
Global("B!GavinRomanceActive","GLOBAL",1)
GlobalGT("B!GavinLovetalk", "GLOBAL",6) GlobalLT("B!GavinLovetalk", "GLOBAL",22)~ THEN ~B!GAVINJ~ BGavinTalk3
@101
= @1
END
+ ~OR(6) HPPercentLT(Player1,80) HPPercentLT(Player2,80) HPPercentLT(Player3,80) HPPercentLT(Player4,80) HPPercentLT(Player5,80) HPPercentLT(Player6,80)~ + @3 EXTERN ~B!GAVINJ~ BGavinTalk.Healing
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",0)~ + @4 EXTERN ~B!GAVINJ~ BGavinHouse1
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",2)~ + @5 EXTERN ~B!GAVINJ~ BGavinHouse2
+ ~Global("B!GavinProstitute","GLOBAL",1)~ + @6 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @102 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.1a
IF ~AreaType(FOREST)~ THEN REPLY @102 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.1b
IF ~AreaType(DUNGEON)~ THEN REPLY @102 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.1c
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @103 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.2c4
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3a3
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.3c4
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @105 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.4c4
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @106 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.5a
IF ~AreaType(FOREST)~ THEN REPLY @106 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.5b
IF ~AreaType(DUNGEON)~ THEN REPLY @106 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.5c
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6b2
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.6c4
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.7c4
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @109 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.8a
IF ~AreaType(FOREST)~ THEN REPLY @109 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.8b
IF ~AreaType(DUNGEON)~ THEN REPLY @109 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.8c
IF ~RandomNum(4,1)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.9a
IF ~RandomNum(4,2)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.9b
IF ~RandomNum(4,3)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.9c
IF ~RandomNum(4,4)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.9d
IF ~RandomNum(2,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.10a1
IF ~RandomNum(2,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.10a2
IF ~RandomNum(2,1) AreaType(FOREST)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.10b1
IF ~RandomNum(2,2) AreaType(FOREST)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.10b2
IF ~RandomNum(2,1) AreaType(DUNGEON)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.10c1
IF ~RandomNum(2,2) AreaType(DUNGEON)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.10c2
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @112 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.11a
IF ~AreaType(FOREST)~ THEN REPLY @112 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.11b
IF ~AreaType(DUNGEON)~ THEN REPLY @112 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.11c
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @113 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.12a
IF ~AreaType(FOREST)~ THEN REPLY @113 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.12b
IF ~AreaType(DUNGEON)~ THEN REPLY @113 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.12c
IF ~RandomNum(6,1)~ THEN REPLY @114 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.13a
IF ~RandomNum(6,2)~ THEN REPLY @114 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.13b
IF ~RandomNum(6,3)~ THEN REPLY @114 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.13c
IF ~RandomNum(6,4)~ THEN REPLY @114 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.13d
IF ~RandomNum(6,5)~ THEN REPLY @114 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.13e
IF ~RandomNum(6,6)~ THEN REPLY @114 DO ~IncrementGlobal("B!GavinFlirtEarly","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.13f
+ ~Global("B!GavinQuietLover","GLOBAL",0)~ + @15 DO ~SetGlobal("B!GavinQuietLover","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinQuietLover
+ ~Global("B!GavinQuietLover","GLOBAL",1)~ + @16 DO ~SetGlobal("B!GavinQuietLover","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinResumeLT
IF ~~ THEN REPLY @115 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.14
IF ~Global("B!DisableFlirts","GLOBAL",0)~ THEN REPLY @116 DO ~SetGlobal("B!DisableFlirts","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalkDisableFlirt
IF ~Global("B!DisableFlirts","GLOBAL",1)~ THEN REPLY @117  DO ~SetGlobal("B!DisableFlirts","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalkEnableFlirt
IF ~~ THEN REPLY @118 EXTERN ~B!GAVINJ~ BGavinVoice
IF ~~ THEN REPLY @119 EXTERN ~B!GAVINJ~ BGavinTalk3.16

APPEND ~B!GAVINJ~ 

IF ~~ THEN BEGIN BGavinQuietLover
SAY @120
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinResumeLT
SAY @121
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.1a /* smile at gavin */
@122
=@123 
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.1b
@122 
= @124
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.1c
@122
= @125 
EXIT

APPEND ~B!GAVINJ~

/* touch his hand - city */

IF ~~ THEN BEGIN BGavinTalk3.2a1
SAY @126
= @127
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2a2
SAY @128
= @129
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2a3
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2a4
SAY @131
IF ~~ THEN EXIT
END

/* touch his hand - forest */

IF ~~ THEN BEGIN BGavinTalk3.2b1
SAY @132 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2b2
SAY @128
= @129 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2b3
SAY @130 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2b4
SAY @133
= @134 
IF ~~ THEN EXIT
END

/* touch his hand - dungeon */

IF ~~ THEN BEGIN BGavinTalk3.2c1
SAY @135
= @136 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2c2
SAY @137
= @138 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2c3
SAY @139 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.2c4
SAY @140
= @141 
IF ~~ THEN EXIT
END

/* touch his face - city */

IF ~~ THEN BEGIN BGavinTalk3.3a1
SAY @142
= @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3a2
SAY @144
= @145
= @146
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3a3
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3a4
SAY @147
IF ~~ THEN EXIT
END

/* touch his face - forest */

IF ~~ THEN BEGIN BGavinTalk3.3b1
SAY @142
= @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3b2
SAY @148
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3b3
SAY @149
= @150
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3b4
SAY @147
IF ~~ THEN EXIT
END

/* touch his face - dungeon */

IF ~~ THEN BEGIN BGavinTalk3.3c1
SAY @151
= @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3c2
SAY @152
= @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3c3
SAY @139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.3c4
SAY @153
= @141
IF ~~ THEN EXIT
END

/* eyelash - city */

IF ~~ THEN BEGIN BGavinTalk3.4a1
SAY @154
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4a2
SAY @156
= @157
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4a3
SAY @158
= @159
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4a4
SAY @160
IF ~~ THEN EXIT
END

/* eyelash - forest */

IF ~~ THEN BEGIN BGavinTalk3.4b1
SAY @154
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4b2
SAY @161
= @162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4b3
SAY @163
= @164
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4b4
SAY @160
IF ~~ THEN EXIT
END

/* eyelash - dungeon */

IF ~~ THEN BEGIN BGavinTalk3.4c1
SAY @154
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4c2
SAY @165
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4c3
SAY @166
= @167
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.4c4
SAY @168
= @169
IF ~~ THEN EXIT
END
END //APPEND

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.5a /* good cleric */
@122
=@170
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.5b
@122
= @171
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.5c
@172
= @173
EXIT

APPEND ~B!GAVINJ~

/* How's Gavin - city */

IF ~~ THEN BEGIN BGavinTalk3.6a1
SAY @174
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6a2
SAY @175
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6a3
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6a4
SAY @177
IF ~~ THEN EXIT
END

/* How's Gavin - forest */

IF ~~ THEN BEGIN BGavinTalk3.6b1
SAY @178
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6b2
SAY @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6b3
SAY @180
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6b4
SAY @181
IF ~~ THEN EXIT
END

/* How's Gavin - dungeon */

IF ~~ THEN BEGIN BGavinTalk3.6c1
SAY @182
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6c2
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6c3
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.6c4
SAY @184
IF ~~ THEN EXIT
END

/* Advice - city */

IF ~~ THEN BEGIN BGavinTalk3.7a1
SAY @185
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7a2
SAY @186 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7a3
SAY @187
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7a4
SAY @188
IF ~~ THEN EXIT
END

/* Advice - forest */

IF ~~ THEN BEGIN BGavinTalk3.7b1
SAY @189
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7b2
SAY @190 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7b3
SAY @191
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7b4
SAY @192
IF ~~ THEN EXIT
END

/* Advice - dungeon */

IF ~~ THEN BEGIN BGavinTalk3.7c1
SAY @193
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7c2
SAY @194
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7c3
SAY @195
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.7c4
SAY @184
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.8a /* glad to know Gavin */
@122
=@196
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.8b
@122
= @197
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.8c
@172
= @173
EXIT

APPEND ~B!GAVINJ~

/* Nightmares */

IF ~~ THEN BEGIN BGavinTalk3.9a
SAY @198
= @199
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.9b
SAY @198
= @200
++ @201 EXTERN ~B!GAVINJ~ BGavinTalk3.9b1
++ @202  EXTERN ~B!GAVINJ~ BGavinTalk3.9b2
END

IF ~~ THEN BEGIN BGavinTalk3.9b1
SAY @203
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.9b2
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.9c
SAY @198
= @205
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.9d
SAY @198
= @206
++ @207 EXTERN ~B!GAVINJ~ BGavinTalk3.9d1
++ @208  DO ~SetGlobal("B!GavinWatchOver","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk3.9d2
END

IF ~~ THEN BEGIN BGavinTalk3.9d1
SAY @209
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.9d2
SAY @210
IF ~~ THEN EXIT
END

/* Backache - city */

IF ~~ THEN BEGIN BGavinTalk3.10a1
SAY @211
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.10a2
SAY @212
++ @201 EXTERN ~B!GAVINJ~ BGavinTalk3.10a2a
++ @213 EXTERN ~B!GAVINJ~ BGavinTalk3.10a2b
END

IF ~~ THEN BEGIN BGavinTalk3.10a2a
SAY @214
= @215 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.10a2b
SAY @216
IF ~~ THEN EXIT
END

/* Backache - forest */

IF ~~ THEN BEGIN BGavinTalk3.10b1
SAY @217
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.10b2
SAY @212
++ @201 EXTERN ~B!GAVINJ~ BGavinTalk3.10b2a
++ @213 EXTERN ~B!GAVINJ~ BGavinTalk3.10b2b
END

IF ~~ THEN BEGIN BGavinTalk3.10b2a
SAY @218
= @215
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.10b2b
SAY @216
IF ~~ THEN EXIT
END

/* Backache - dungeon */

IF ~~ THEN BEGIN BGavinTalk3.10c1
SAY @219
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.10c2
SAY @220
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.11a /* Footsore - city */
SAY @221
++ @222 EXTERN ~B!GAVINJ~ BGavinTalk3.11a1
++ @223 EXTERN ~B!GAVINJ~ BGavinTalk3.11a2
END

IF ~~ THEN BEGIN BGavinTalk3.11a2
SAY @224
= @225
= @226
= @227
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.11a1
SAY @228
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.11b /* Footsore - forest */
SAY @229
++ @201 EXTERN ~B!GAVINJ~ BGavinTalk3.11b1
++ @222 EXTERN ~B!GAVINJ~ BGavinTalk3.11b2
END

IF ~~ THEN BGavinTalk3.11b2
SAY @230
IF ~~ THEN EXIT
END

IF ~~ THEN BGavinTalk3.11b1
SAY @231
= @232
= @233
= @234
= @235
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk3.11c /* Footsore - dungeon */
SAY @219
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.12a /* Gavin the wild man */
@236
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.12b
@237
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.12c
@238
EXIT

/* Life before <CHARNAME> */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.13a
@239
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.13b
@240
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.13c
@241
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.13d
@242
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.13e
@243
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.13f
@244
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.14 /* just friends */
@245
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk3.16 /* nothing */
@246
EXIT


///* TALK 4 -- LATER ROMANCE PID */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat() 
Global("B!GavinRomanceActive","GLOBAL",1)
GlobalGT("B!GavinLovetalk", "GLOBAL",21)~ THEN ~B!GAVINJ~ BGavinTalk4
@101
= @1
END
+ ~OR(6) HPPercentLT(Player1,80) HPPercentLT(Player2,80) HPPercentLT(Player3,80) HPPercentLT(Player4,80) HPPercentLT(Player5,80) HPPercentLT(Player6,80)~ + @3 EXTERN ~B!GAVINJ~ BGavinTalk.Healing
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",0)~ + @4 EXTERN ~B!GAVINJ~ BGavinHouse1
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",2)~ + @247 EXTERN ~B!GAVINJ~ BGavinHouse2
+ ~Global("B!GavinProstitute","GLOBAL",1)~ + @6 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @102 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~EXTERN ~B!GAVINJ~ BGavinTalk4.1a
IF ~AreaType(FOREST)~ THEN REPLY @102 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~EXTERN ~B!GAVINJ~ BGavinTalk4.1b
IF ~AreaType(DUNGEON)~ THEN REPLY @102 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~EXTERN ~B!GAVINJ~ BGavinTalk4.1c
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.2c4
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @104 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.3c4
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4a4
IF ~RandomNum(5,1) AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4b1
IF ~RandomNum(5,2) AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4b2
IF ~RandomNum(5,3) AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4b3
IF ~RandomNum(5,4) AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4b4
IF ~RandomNum(5,5) AreaType(FOREST)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4b5
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @249 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4c4
IF ~RandomNum(8,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa1
IF ~RandomNum(8,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa2
IF ~RandomNum(8,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa3
IF ~RandomNum(8,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa4
IF ~RandomNum(8,5) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa5
IF ~RandomNum(8,6) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa6
IF ~RandomNum(8,7) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa7
IF ~RandomNum(8,8) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Aa8
IF ~RandomNum(10,1) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb1
IF ~RandomNum(10,2) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb2
IF ~RandomNum(10,3) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb3
IF ~RandomNum(10,4) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb4
IF ~RandomNum(10,5) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb5
IF ~RandomNum(10,6) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb6
IF ~RandomNum(10,7) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb7
IF ~RandomNum(10,8) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb8
IF ~RandomNum(10,9) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb9
IF ~RandomNum(10,10) AreaType(FOREST)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Bb10
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Cc1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Cc2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Cc3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @250 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4Cc4
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4da1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4da2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4da3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4da4
IF ~RandomNum(5,1) AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4eb1
IF ~RandomNum(5,2) AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4eb2
IF ~RandomNum(5,3) AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4eb3
IF ~RandomNum(5,4) AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4eb4
IF ~RandomNum(5,5) AreaType(FOREST)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4eb5
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4fc1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4fc2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4fc3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.4fc4
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @252 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.5a
IF ~AreaType(FOREST)~ THEN REPLY @252 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.5b
IF ~AreaType(DUNGEON)~ THEN REPLY @252 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.5c
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @107 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.6c4
IF ~RandomNum(4,1) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7a1
IF ~RandomNum(4,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7a2
IF ~RandomNum(4,3) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7a3
IF ~RandomNum(4,4) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7a4
IF ~RandomNum(4,1) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7b1
IF ~RandomNum(4,2) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7b2
IF ~RandomNum(4,3) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7b3
IF ~RandomNum(4,4) AreaType(FOREST)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7b4
IF ~RandomNum(4,1) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7c1
IF ~RandomNum(4,2) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7c2
IF ~RandomNum(4,3) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7c3
IF ~RandomNum(4,4) AreaType(DUNGEON)~ THEN REPLY @108 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.7c4
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @109 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.8a
IF ~AreaType(FOREST)~ THEN REPLY @109 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.8b
IF ~AreaType(DUNGEON)~ THEN REPLY @109 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.8c
IF ~Global("B!GavinWatchOver","GLOBAL",0) RandomNum(4,1)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.9a
IF ~Global("B!GavinWatchOver","GLOBAL",0) RandomNum(4,2)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.9b
IF ~Global("B!GavinWatchOver","GLOBAL",0) RandomNum(4,3)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.9c
IF ~Global("B!GavinWatchOver","GLOBAL",0) RandomNum(4,4)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.9d
IF ~Global("B!GavinWatchOver","GLOBAL",1)~ THEN REPLY @110 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.9e
IF ~!AreaType(DUNGEON)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.10a
IF ~RandomNum(2,1) AreaType(DUNGEON)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.10b1
IF ~RandomNum(2,2) AreaType(DUNGEON)~ THEN REPLY @111 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.10b2
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @112 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.11a
IF ~AreaType(FOREST)~ THEN REPLY @112 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.11b
IF ~AreaType(DUNGEON)~ THEN REPLY @112 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.11c
IF ~!AreaType(DUNGEON) !AreaType(FOREST)~ THEN REPLY @113 DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.12a
IF ~AreaType(FOREST)~ THEN REPLY @113  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.12b
IF ~AreaType(DUNGEON)~ THEN REPLY @113  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.12c
IF ~RandomNum(6,1)~ THEN REPLY @114  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.13a
IF ~RandomNum(6,2)~ THEN REPLY @114  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.13b
IF ~RandomNum(6,3)~ THEN REPLY @114  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.13c
IF ~RandomNum(6,4)~ THEN REPLY @114  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.13d
IF ~RandomNum(6,5)~ THEN REPLY @114  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.13e
IF ~RandomNum(6,6)~ THEN REPLY @114  DO ~IncrementGlobal("B!GavinFlirtLate","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.13f
IF ~~ THEN REPLY @253 EXTERN ~B!GAVINJ~ BGavinTalk4.x
+ ~Global("B!GavinQuietLover","GLOBAL",0)~ + @15 DO ~SetGlobal("B!GavinQuietLover","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinQuietLover
+ ~Global("B!GavinQuietLover","GLOBAL",1)~ + @16 DO ~SetGlobal("B!GavinQuietLover","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinResumeLT
IF ~~ THEN REPLY @254 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.14
IF ~Global("B!DisableFlirts","GLOBAL",0)~ THEN REPLY @116 DO ~SetGlobal("B!DisableFlirts","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalkDisableFlirt
IF ~Global("B!DisableFlirts","GLOBAL",1)~ THEN REPLY @117  DO ~SetGlobal("B!DisableFlirts","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalkEnableFlirt
IF ~~ THEN REPLY @118 EXTERN ~B!GAVINJ~ BGavinVoice
IF ~~ THEN REPLY @119 EXTERN ~B!GAVINJ~ BGavinTalk4.16

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinTalk4.x
SAY @255
++ @256 + BGavinTalk4.x1
++ @257 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ + BGavinTalk4.x1
++ @258 + BGavinTalk4.x2
++ @259 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinTalk4.x4
END

IF ~~ THEN BEGIN BGavinTalk4.x1
SAY @260
++ @261 + BGavinTalk4.x1a
++ @262 + BGavinTalk4.x1b
++ @263 + BGavinTalk4.x1c
END

IF ~~ THEN BEGIN BGavinTalk4.x1a
SAY @264
++ @265 + BGavinTalk4.x1a1
++ @266 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x1a2
END

IF ~~ THEN BEGIN BGavinTalk4.x1a2
SAY @267
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1
SAY @268
++ @269 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x1a1a
++ @270 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x1a1b
++ @271 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x1a1c
++ @272 + BGavinTalk4.x1a1d
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1a
SAY @273
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1b
SAY @274
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1c
SAY @275
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1d
SAY @276
++ @277 + BGavinTalk4.x1a1d1
++ @278 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x1a1d2
++ @279 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinTalk4.x1a1d3
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1d1
SAY @280
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1d2
SAY @281
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1a1d3
SAY @282
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1b
SAY @283
++ @284 + BGavinTalk4.x1a1d
++ @285 + BGavinTalk4.x1a
END

IF ~~ THEN BEGIN BGavinTalk4.x1c
SAY @286
++ @287 + BGavinTalk4.x1a1d
++ @288 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x1c1
++ @289 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x1c2
END

IF ~~ THEN BEGIN BGavinTalk4.x1c1
SAY @290
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x1c2
SAY @291
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2
SAY @292
++ @293 + BGavinTalk4.x2a
++ @262 + BGavinTalk4.x2b
++ @263 + BGavinTalk4.x2c
END

IF ~~ THEN BEGIN BGavinTalk4.x2a
SAY @294
++ @265 + BGavinTalk4.x2a1
++ @266 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x2a2
END

IF ~~ THEN BEGIN BGavinTalk4.x2a2
SAY @267
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1
SAY @295
++ @269 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x2a1a
++ @270 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x2a1b
++ @271 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x2a1c
++ @272 + BGavinTalk4.x2a1d
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1a
SAY @273
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1b
SAY @274
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1c
SAY @275
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1d
SAY @296
++ @277 + BGavinTalk4.x2a1d1
++ @278 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x2a1d2
++ @279 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinTalk4.x2a1d3
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1d1
SAY @280
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1d2
SAY @281
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2a1d3
SAY @282
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2b
SAY @283
++ @284 + BGavinTalk4.x2a1d
++ @297 + BGavinTalk4.x2a
END

IF ~~ THEN BEGIN BGavinTalk4.x2c
SAY @286
++ @287 + BGavinTalk4.x2a1d
++ @298 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x2c1
++ @299 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinTalk4.x2c2
END

IF ~~ THEN BEGIN BGavinTalk4.x2c1
SAY @300
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x2c2
SAY @301
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.x4
SAY @302
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.1a /* smile at gavin */
@122
=@123
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.1b
@122
= @124
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.1c
@122
= @125
EXIT

APPEND ~B!GAVINJ~
/* hold his hand - city */

IF ~~ THEN BEGIN BGavinTalk4.2a1
SAY @303
= @252
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2a2
SAY @304
= @305
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2a3
SAY @306
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2a4
SAY @307
IF ~~ THEN EXIT
END

/* hold his hand - forest */

IF ~~ THEN BEGIN BGavinTalk4.2b1
SAY @308
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2b2
SAY @309
= @310
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2b3
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2b4
SAY @133
= @134
IF ~~ THEN EXIT
END

/* hold his hand - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.2c1
SAY @311
= @312
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2c2
SAY @137
= @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2c3
SAY @139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.2c4
SAY @140
= @141
IF ~~ THEN EXIT
END

/* touch his face - city */

IF ~~ THEN BEGIN BGavinTalk4.3a1
SAY @142
= @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3a2
SAY @313
= @314
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3a3
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3a4
SAY @147
IF ~~ THEN EXIT
END

/* touch his face - forest */

IF ~~ THEN BEGIN BGavinTalk4.3b1
SAY @142
= @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3b2
SAY @315
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3b3
SAY @316
= @317
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3b4
SAY @147
IF ~~ THEN EXIT
END

/* touch his face - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.3c1
SAY @151
= @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3c2
SAY @152
= @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3c3
SAY @139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.3c4
SAY @153
= @141
IF ~~ THEN EXIT
END

/* kiss cheek - city */

IF ~~ THEN BEGIN BGavinTalk4.4a1
SAY @318
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4a2
SAY @318
= @319
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4a3
SAY @320
= @321
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4a4
SAY @322
= @323
IF ~~ THEN EXIT
END

/* kiss cheek - forest */

IF ~~ THEN BEGIN BGavinTalk4.4b1
SAY @318
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4b2
SAY @324
= @325
= @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4b3
SAY @327
= @328
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4b4
SAY @322
= @323
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4b5
SAY @318
= @319
IF ~~ THEN EXIT
END

/* kiss cheek - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.4c1
SAY @329
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4c2
SAY @330
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4c3
SAY @331
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4c4
SAY @332
IF ~~ THEN EXIT
END

/* kiss lips - city */

IF ~~ THEN BEGIN BGavinTalk4.4Aa1
SAY @333
= @334
= @335
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Aa2
SAY @336
= @337
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Aa3
SAY @338
= @339
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Aa4
SAY @340
= @341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Aa5
SAY @342
= @343
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN BGavinTalk4.4Aa6
SAY @344
= @345
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Aa7
SAY @346
= @347
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Aa8
SAY @348
= @349
IF ~~ THEN EXIT
END

/* kiss lips - forest */

IF ~~ THEN BEGIN BGavinTalk4.4Bb1
SAY @340
= @341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb2
SAY @346
= @350
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb3
SAY @351
= @352
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb4
SAY @353
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb5
SAY @354
= @355
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb6
SAY @356
= @349
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb7
SAY @357
= @339
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb8
SAY @358
= @345
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb9
SAY @359
= @334
= @335
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Bb10
SAY @360
= @361
IF ~~ THEN EXIT
END

/* kiss lips - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.4Cc1
SAY @362
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Cc2
SAY @363
= @364
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Cc3
SAY @365
= @366
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4Cc4
SAY @367
= @368
IF ~~ THEN EXIT
END

/* hug - city */

IF ~~ THEN BEGIN BGavinTalk4.4da1
SAY @369
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4da2
SAY @370
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4da3
SAY @371
= @372
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4da4
SAY @373
= @349
IF ~~ THEN EXIT
END

/* hug - forest */

IF ~~ THEN BEGIN BGavinTalk4.4eb1
SAY @369
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4eb2
SAY @374
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4eb3
SAY @371
= @372
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4eb4
SAY @375
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4eb5
SAY @370
IF ~~ THEN EXIT
END


/* hug - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.4fc1
SAY @370
= @376
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4fc2
SAY @373
= @349
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4fc3
SAY @377
= @378
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.4fc4
SAY @367
= @379
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.5a /* glad you're here */
@122
=@380
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.5b
@122
= @381
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.5c
@172
= @173
EXIT

APPEND ~B!GAVINJ~
/* How's Gavin - city */

IF ~~ THEN BEGIN BGavinTalk4.6a1
SAY @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6a2
SAY @181
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6a3
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6a4
SAY @177
IF ~~ THEN EXIT
END

/* How's Gavin - forest */

IF ~~ THEN BEGIN BGavinTalk4.6b1
SAY @178
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6b2
SAY @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6b3
SAY @180
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6b4
SAY @181
IF ~~ THEN EXIT
END

/* How's Gavin - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.6c1
SAY @382
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6c2
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6c3
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.6c4
SAY @383
IF ~~ THEN EXIT
END

/* Advice - city */

IF ~~ THEN BEGIN BGavinTalk4.7a1
SAY @384
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7a2
SAY @385
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7a3
SAY @187
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7a4
SAY @386
IF ~~ THEN EXIT
END

/* Advice - forest */

IF ~~ THEN BEGIN BGavinTalk4.7b1
SAY @387
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7b2
SAY @190 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7b3
SAY @388
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7b4
SAY @192 
IF ~~ THEN EXIT
END

/* Advice - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.7c1
SAY @193
END

IF ~~ THEN BEGIN BGavinTalk4.7c2
SAY @389
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7c3
SAY @195
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.7c4
SAY @184
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.8a /* glad to know Gavin */
@122
=@390
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.8b
@122
= @197
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.8c
@391
= @173
EXIT

APPEND ~B!GAVINJ~
/* Nightmares */

IF ~~ THEN BEGIN BGavinTalk4.9a
SAY @392
= @393
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.9b
SAY @392
= @394
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.9c
SAY @395
= @396
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.9d
SAY @392
= @397
++ @207 EXTERN ~B!GAVINJ~ BGavinTalk4.9d1
++ @208 DO ~SetGlobal("B!GavinWatchOver","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.9d2
END

IF ~~ THEN BEGIN BGavinTalk4.9d1
SAY @209
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.9d2
SAY @210
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.9e
SAY @398
= @399
= @400
IF ~~ THEN EXIT
END

/* Backache - not a dungeon */

IF ~~ THEN BEGIN BGavinTalk4.10a
SAY @212
++ @201 EXTERN ~B!GAVINJ~ BGavinTalk4.10a1
++ @213 EXTERN ~B!GAVINJ~ BGavinTalk4.10a2
END

IF ~~ THEN BEGIN BGavinTalk4.10a1
SAY @401
= @402
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.10a2
SAY @216
IF ~~ THEN EXIT
END

/* Backache - dungeon */

IF ~~ THEN BEGIN BGavinTalk4.10b1
SAY @219
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.10b2
SAY @220
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.11a /* Footsore - city */
SAY @221
++ @222 EXTERN ~B!GAVINJ~ BGavinTalk4.11a1
++ @223 EXTERN ~B!GAVINJ~ BGavinTalk4.11a2
END

IF ~~ THEN BEGIN BGavinTalk4.11a2
SAY @403
= @404
= @405
= @227
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.11a1
SAY @228
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.11b /* Footsore - forest */
SAY @229
++ @201 EXTERN ~B!GAVINJ~ BGavinTalk4.11b1
++ @222 EXTERN ~B!GAVINJ~ BGavinTalk4.11b2
END

IF ~~ THEN BGavinTalk4.11b2
SAY @230
IF ~~ THEN EXIT
END

IF ~~ THEN BGavinTalk4.11b1
SAY @406
= @232
= @233
= @407
= @235
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN BGavinTalk4.11c /* Footsore - dungeon */
SAY @219
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.12a /* Gavin the wild man */
@408
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.12b
@409
= @410
END
++ @411 EXTERN ~B!GAVINJ~ BGavinTalk4.12b1
++ @412 EXTERN ~B!GAVINJ~ BGavinTalk4.12b2
++ @413 EXTERN ~B!GAVINJ~ BGavinTalk4.12b3
++ @414 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk4.12b4
++ @415 EXTERN ~B!GAVINJ~ BGavinTalk4.12b5

APPEND ~B!GAVINJ~
IF ~~ THEN BEGIN BGavinTalk4.12b5
SAY @416
= @417
= @418
= @419
= @420
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.12b4
SAY @421
= @422
= @423
= @420
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.12b3
SAY @424
= @425
= @426
= @420
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.12b2
SAY @427
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk4.12b1
SAY @428
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.12c
@429
EXIT

/* Life before <CHARNAME> */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.13a
@430
= @431
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.13b
@432
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.13c
@433
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.13d
@434
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.13e
@243
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.13f
@435
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.14 /* just friends */
@436
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk4.16 /* nothing */
@246
EXIT

///* Committed Romance PID */
/////* After finger incident */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat() 
Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinFinger","GLOBAL",0) GlobalLT("B!GavinFinger","GLOBAL",4)~ THEN ~B!GAVINJ~ BGavinFingerPID
@437
EXIT

/////* After Bhaal discovery */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat() 
Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLovetalk","GLOBAL",49) GlobalLT("B!GavinLovetalk","GLOBAL",53)~ THEN ~B!GAVINJ~ BGavinBhaalPID
@438
EXIT

/////* Committed PID */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat() 
Global("B!GavinRomanceActive","GLOBAL",2) OR(2) GlobalLT("B!GavinFinger","GLOBAL",1) GlobalGT("B!GavinFinger","GLOBAL",3) OR(2) GlobalLT("B!GavinLovetalk","GLOBAL",50) GlobalGT("B!GavinLovetalk","GLOBAL",52)~ THEN ~B!GAVINJ~ BGavinTalk5
@101
= @1
END
+ ~OR(6) HPPercentLT(Player1,80) HPPercentLT(Player2,80) HPPercentLT(Player3,80) HPPercentLT(Player4,80) HPPercentLT(Player5,80) HPPercentLT(Player6,80)~ + @3 EXTERN ~B!GAVINJ~ BGavinTalk.Healing
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",0)~ + @4 EXTERN ~B!GAVINJ~ BGavinHouse1
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",2)~ + @5 EXTERN ~B!GAVINJ~ BGavinHouse2
+ ~Global("B!GavinProstitute","GLOBAL",1)~ + @6 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore
+ ~GlobalGT("B!KnowBhaal","GLOBAL",0) Global("B!GavBhaalQuestion","GLOBAL",0)~ + @439 EXTERN ~B!GAVINJ~ BGavinTalk5.Bhaal
IF ~AreaType(CITY) RandomNum(4,1)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.1a
IF ~AreaType(CITY) RandomNum(4,2)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.1b
IF ~AreaType(CITY) RandomNum(4,3)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.1c
IF ~AreaType(CITY) RandomNum(4,4)~ THEN REPLY @248 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.1d
IF ~!AreaType(DUNGEON) RandomNum(12,1)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a1
IF ~!AreaType(DUNGEON) RandomNum(12,2)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a2
IF ~!AreaType(DUNGEON) RandomNum(12,3)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a3
IF ~!AreaType(DUNGEON) RandomNum(12,4)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a4
IF ~!AreaType(DUNGEON) RandomNum(12,5)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a5
IF ~!AreaType(DUNGEON) RandomNum(12,6)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a6
IF ~!AreaType(DUNGEON) RandomNum(12,7)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a7
IF ~!AreaType(DUNGEON) RandomNum(12,8)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a8
IF ~!AreaType(DUNGEON) RandomNum(12,9)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a9
IF ~!AreaType(DUNGEON) RandomNum(12,10)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a10
IF ~!AreaType(DUNGEON) RandomNum(12,11)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a11
IF ~!AreaType(DUNGEON) RandomNum(12,12)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2a12
IF ~AreaType(DUNGEON)~ THEN REPLY @440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.2b
IF ~!AreaType(DUNGEON) RandomNum(4,1)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.3a1
IF ~!AreaType(DUNGEON) RandomNum(4,2)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.3a2
IF ~!AreaType(DUNGEON) RandomNum(4,3)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.3a3
IF ~!AreaType(DUNGEON) RandomNum(4,4)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.3a4
IF ~AreaType(DUNGEON)~ THEN REPLY @251 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.3b
IF ~RandomNum(4,1)~ THEN REPLY @252 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.4a
IF ~RandomNum(4,2)~ THEN REPLY @252 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.4b
IF ~RandomNum(4,3)~ THEN REPLY @252 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.4c
IF ~RandomNum(4,4)~ THEN REPLY @252 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.4d
IF ~Global("B!GavinSleepQuestion","GLOBAL",1)~ THEN REPLY @441 EXTERN ~B!GAVINJ~ BGavinTalk5.sleep
IF ~Global("B!GavinSexQuestion","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,1)~ THEN REPLY @442 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.5a1
IF ~Global("B!GavinSexQuestion","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,2)~ THEN REPLY @442 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.5a2
IF ~Global("B!GavinSexQuestion","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,3)~ THEN REPLY @442 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.5a3
IF ~Global("B!GavinSexQuestion","GLOBAL",1) Global("B!GavinSex","GLOBAL",1) RandomNum(4,4)~ THEN REPLY @442 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.5a4
IF ~Global("B!GavinSexQuestion","GLOBAL",1) Global("B!GavinSex","GLOBAL",0)~ THEN REPLY @443 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) SetGlobal("B!PCReconsidersSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.5b
IF ~Global("B!LoveGavin","GLOBAL",0)~ THEN REPLY @444 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) SetGlobal("B!LoveGavin","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.6a
IF ~Global("B!LoveGavin","GLOBAL",1) RandomNum(4,1)~ THEN REPLY @444 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.6b1
IF ~Global("B!LoveGavin","GLOBAL",1) RandomNum(4,2)~ THEN REPLY @444 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.6b2
IF ~Global("B!LoveGavin","GLOBAL",1) RandomNum(4,3)~ THEN REPLY @444 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.6b3
IF ~Global("B!LoveGavin","GLOBAL",1) RandomNum(4,4)~ THEN REPLY @444 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.6b4
IF ~~ THEN REPLY @445 EXTERN ~B!GAVINJ~ BGavinTalk5.7
IF ~~ THEN REPLY @446 EXTERN ~B!GAVINJ~ BGavinTalk5.8
IF ~RandomNum(4,1)~ THEN REPLY @447 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.9a
IF ~RandomNum(4,2)~ THEN REPLY @447 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.9b
IF ~RandomNum(4,3)~ THEN REPLY @447 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.9c
IF ~RandomNum(4,4)~ THEN REPLY @447 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.9d
IF ~RandomNum(4,1)~ THEN REPLY @448 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.10a
IF ~RandomNum(4,2)~ THEN REPLY @448 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.10b
IF ~RandomNum(4,3)~ THEN REPLY @448 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.10c
IF ~RandomNum(4,4)~ THEN REPLY @448 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.10d
IF ~~ THEN REPLY @449 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.11
IF ~RandomNum(4,1)~ THEN REPLY @450 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.12a
IF ~RandomNum(4,2)~ THEN REPLY @450 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.12b
IF ~RandomNum(4,3)~ THEN REPLY @450 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.12c
IF ~RandomNum(4,4)~ THEN REPLY @450 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.12d
+ ~Global("B!GavinQuietLover","GLOBAL",0)~ + @15 DO ~SetGlobal("B!GavinQuietLover","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinQuietLover
+ ~Global("B!GavinQuietLover","GLOBAL",1)~ + @16 DO ~SetGlobal("B!GavinQuietLover","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinResumeLT
IF ~~ THEN REPLY @451 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.13
IF ~Global("B!LoveGavin","GLOBAL",1)~ THEN REPLY @452 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!NoLoveGavin","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.14
IF ~Global("B!DisableFlirts","GLOBAL",0)~ THEN REPLY @116 DO ~SetGlobal("B!DisableFlirts","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalkDisableFlirt
IF ~Global("B!DisableFlirts","GLOBAL",1)~ THEN REPLY @117  DO ~SetGlobal("B!DisableFlirts","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalkEnableFlirt
IF ~~ THEN REPLY @118 EXTERN ~B!GAVINJ~ BGavinVoice
IF ~~ THEN REPLY @119 EXTERN ~B!GAVINJ~ BGavinTalk5.16

APPEND ~B!GAVINJ~
IF ~~ THEN BEGIN BGavinTalk5.Bhaal
SAY @453
++ @454 + BGavinTalk5.Bhaal1
++ @455 + BGavinTalk5.Bhaal2
++ @456 + BGavinTalk5.Bhaal3
++ @457 + BGavinTalk5.Bhaal4
++ @458 + BGavinTalk5.Bhaal5
END

IF ~~ BGavinTalk5.Bhaal1
SAY @459
= @460
= @461
IF ~~ THEN DO ~SetGlobal("B!GavBhaalQuestion","GLOBAL",1)~ EXIT
END

IF ~~ BGavinTalk5.Bhaal2
SAY @462
IF ~~ THEN + BGavinTalk5.Bhaal1
END

IF ~~ BGavinTalk5.Bhaal3
SAY @463
IF ~~ THEN + BGavinTalk5.Bhaal1
END

IF ~~ BGavinTalk5.Bhaal4
SAY @464
IF ~~ THEN + BGavinTalk5.Bhaal1
END

IF ~~ BGavinTalk5.Bhaal5
SAY @465
= @466
IF ~~ THEN + BGavinTalk5.Bhaal1
END
END

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.sleep
@467 DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",2)~
EXIT


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.16 /* nothing */
@468
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.14 /* don't love Gavin */
@469
= @470
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.13 /* end relationship */
@471
= @472
EXIT

APPEND ~B!GAVINJ~
/* life before pc */

IF ~~ THEN BEGIN BGavinTalk5.12d
SAY @473
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.12c
SAY @474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.12b
SAY @475
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.12a
SAY @476
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.11
SAY @477
++ @478 EXTERN ~B!GAVINJ~ BGavinTalk5.11a
++ @479 EXTERN ~B!GAVINJ~ BGavinTalk5.11b
END

IF ~~ THEN BEGIN BGavinTalk5.11b
SAY @480
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.11a
SAY @481
= @482
= @483
IF ~~ THEN EXIT
END

/* Stay with me */
IF ~~ THEN BEGIN BGavinTalk5.10a
SAY @484
= @485
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.10b
SAY @486
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.10c
SAY @487
= @488
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.10d
SAY @489
IF ~~ THEN EXIT
END

/* Afraid */

IF ~~ THEN BEGIN BGavinTalk5.9a
SAY @490
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.9b
SAY @491
= @492
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.9c
SAY @493
= @494
= @495
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinTalk5.9d
SAY @496
IF ~~ THEN EXIT
END

/* Armor not buckled properly */

IF ~~ THEN BEGIN BGavinTalk5.8
SAY @497
+ ~RandomNum(4,1)~ + @498 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8a1
+ ~RandomNum(4,2)~ + @498 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8a2
+ ~RandomNum(4,3)~ + @498 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8a3
+ ~RandomNum(4,4)~ + @498 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8a4
+ ~RandomNum(4,1)~ + @499 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8b1
+ ~RandomNum(4,2)~ + @499 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8b2
+ ~RandomNum(4,3)~ + @499 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8b3
+ ~RandomNum(4,4)~ + @499 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8b4
+ ~RandomNum(4,1)~ + @500 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8c1
+ ~RandomNum(4,2)~ + @500 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8c2
+ ~RandomNum(4,3)~ + @500 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8c3
+ ~RandomNum(4,4)~ + @500 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8c4
+ ~RandomNum(4,1)~ + @501 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8d1
+ ~RandomNum(4,2)~ + @501 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8d2
+ ~RandomNum(4,3)~ + @501 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8d3
+ ~RandomNum(4,4)~ + @501 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8d4
+ ~RandomNum(4,1)~ + @502 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8e1
+ ~RandomNum(4,2)~ + @502 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8e2
+ ~RandomNum(4,3)~ + @502 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8e3
+ ~RandomNum(4,4)~ + @502 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8e4
+ ~RandomNum(4,1)~ + @503 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8f1
+ ~RandomNum(4,2)~ + @503 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8f2
+ ~RandomNum(4,3)~ + @503 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8f3
+ ~RandomNum(4,4)~ + @503 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8f4
+ ~RandomNum(4,1)~ + @504 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8g1
+ ~RandomNum(4,2)~ + @504 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8g2
+ ~RandomNum(4,3)~ + @504 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8g3
+ ~RandomNum(4,4)~ + @504 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8g4
++ @505 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ + BGavinTalk5.8h
END

END

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a1
@506
END
++ @507 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.8a1a
++ @508 EXTERN ~B!GAVINJ~ BGavinTalk5.8a1b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a1a
@509
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a1b
@510
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a2
@511
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a3
@512
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a4
@513
END
++ @514 EXTERN ~B!GAVINJ~ BGavinTalk5.8a4a
++ @515 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.8a4b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a4a
@516
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8a4b
@517
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8b1
@518
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8b2
@519
END
++ @520 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.8b2a
++ @521 EXTERN ~B!GAVINJ~ BGavinTalk5.8b2b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8b2a
@522
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8b2b
@523
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8b3
@524
= @525
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8b4
@526
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8d1
@527
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8d2
@528
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8d3
@529
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8d4
@530
= @531
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8c1
@532
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8c2
@533
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8c3
@534
END
++ @535 EXTERN ~B!GAVINJ~	BGavinTalk5.8c3a
++ @536 EXTERN ~B!GAVINJ~	BGavinTalk5.8c3b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8c3a
@537
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8c3b
@538 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8c4
@539
= @540
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8e1
@541
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8e2
@542
END
++ @543 EXTERN ~B!GAVINJ~ BGavinTalk5.8e2a
++ @544 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.8e2b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8e2a
@545
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8e2b
@546
EXIT


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8e3
@547
= @548
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8e4
@549
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8f1
@550
END
++ @551 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.8f1a
++ @552 EXTERN ~B!GAVINJ~ BGavinTalk5.8f1b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8f1a
@553
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8f1b
@554
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8f2
@555
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8f3
@556
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8f4
@557
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8g1
@558
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8g2
@559
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8g3
@560
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8g4
@561
EXIT


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.8h
@562
EXIT

/* Give PC a hand */
CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7
@563
END
+ ~HPPercentLT(Player1,80)~ + @564 EXTERN ~B!GAVINJ~ BGavinTalk5.7a
+ ~InParty(Player2) HPPercentLT(Player2,80)~ + @565 EXTERN ~B!GAVINJ~ BGavinTalk5.7b
+ ~InParty(Player3) HPPercentLT(Player3,80)~ + @566 EXTERN ~B!GAVINJ~ BGavinTalk5.7c
+ ~InParty(Player4) HPPercentLT(Player4,80)~ + @567 EXTERN ~B!GAVINJ~ BGavinTalk5.7d
+ ~InParty(Player5) HPPercentLT(Player5,80)~ + @568 EXTERN ~B!GAVINJ~ BGavinTalk5.7e
+ ~InParty(Player6) HPPercentLT(Player6,80)~ + @569 EXTERN ~B!GAVINJ~ BGavinTalk5.7f
++ @570 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.7g
++ @571 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.7h
++ @572 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.7i
+ ~Global("B!GavinSex","GLOBAL",1)~ + @573 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1) SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.7j
++ @574 DO ~IncrementGlobal("B!GavinFlirtCommitted","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk5.7k
++ @575 EXTERN ~B!GAVINJ~ BGavinTalk5.7l

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7a
@576 DO ~SetGlobal("B!HealPlayer1","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7b
@576 DO ~SetGlobal("B!HealPlayer2","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7c
@576 DO ~SetGlobal("B!HealPlayer3","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7d
@576 DO ~SetGlobal("B!HealPlayer4","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7e
@576 DO ~SetGlobal("B!HealPlayer5","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7f
@576 DO ~SetGlobal("B!HealPlayer6","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7g
@203
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7h
@577
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7i
@578
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7j
@579
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7k
@580
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.7l
@581
EXIT

/* PC loves Gavin */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.6a
@582
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.6b1
@583
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.6b2
@584
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.6b3
@585
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.6b4
@586
EXIT

/* PC wants Gavin */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.5a1
@587
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.5a2
@588
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.5a3
@589
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.5a4
@590
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.5b
@591
= @592
EXIT

/* Glad Gavin's here */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.4a
@593
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.4b
@594
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.4c
@595
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.4d
@596
EXIT

/* hug Gavin */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.3b
@597
= @598
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.3a1
@599
= @600
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.3a2
@601
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.3a3
@602
= @603
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.3a4
@604
EXIT

/* kiss Gavin */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2b
@605

EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a1
@606
= @607
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a2
@608
= @609
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a3
@610
= @611
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a4
@604
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a5
@612
= @607
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a6
@613
= @609
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a7
@614
= @615
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a8
@616
= @617
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a9
@618
= @619
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a10
@620
= @621
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a11
@346
= @622
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.2a12
@623
= @537
EXIT

/* hold Gavin's hand */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.1a
@624
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.1b
@625
= @626
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.1c
@627
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk5.1d
@628
= @629
EXIT


///* BROKEN RELATIONSHIP PID */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat() 
Global("B!GavinRomanceMatch","GLOBAL",1)
Global("B!GavinRomanceActive","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinTalk6
@630
= @1
END
+ ~OR(6) HPPercentLT(Player1,80) HPPercentLT(Player2,80) HPPercentLT(Player3,80) HPPercentLT(Player4,80) HPPercentLT(Player5,80) HPPercentLT(Player6,80)~ + @3 EXTERN ~B!GAVINJ~ BGavinTalk.Healing

++ @631 EXTERN ~B!GAVINJ~ BGavinTalk6.1
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",0)~ + @4 EXTERN ~B!GAVINJ~ BGavinHouse1
+ ~AreaCheck("%Beregost%") Global("B!GavinWhichHouse","GLOBAL",2)~ + @5 EXTERN ~B!GAVINJ~ BGavinHouse2
+ ~Global("B!GavinProstitute","GLOBAL",1)~ + @6 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore
+ ~!Global("B!GavinFriend","GLOBAL",3)~ + @7 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.2
+ ~!Global("B!GavinFriend","GLOBAL",3) GlobalLT("B!GavinPostFlirt","GLOBAL",7)~ + @8 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.3a
+ ~!Global("B!GavinFriend","GLOBAL",3) GlobalGT("B!GavinPostFlirt","GLOBAL",6)~ + @8 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.3b
+ ~!Global("B!GavinFriend","GLOBAL",3)~ + @9 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.4
+ ~!Global("B!GavinFriend","GLOBAL",3)~ + @10 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavinTalk6.5
+ ~!Global("B!GavinFriend","GLOBAL",3)~ + @11 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.6

+ ~!Global("B!GavinFriend","GLOBAL",3) Global("B!GavinRomPCEnded","GLOBAL",1) Global("B!GavinCommitment","GLOBAL",1)~ + @12 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.7a

+ ~!Global("B!GavinFriend","GLOBAL",3) Global("B!GavinRomPCEnded","GLOBAL",1) Global("B!GavinCommitment","GLOBAL",0)~ + @12 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.7b

+ ~!Global("B!GavinFriend","GLOBAL",3) Global("B!GavinRomGavinEnded","GLOBAL",1) Global("B!GavinCommitment","GLOBAL",1)~ + @12 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.7c

+ ~!Global("B!GavinFriend","GLOBAL",3) Global("B!GavinRomGavinEnded","GLOBAL",1) Global("B!GavinCommitment","GLOBAL",0)~ + @12 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.7d


+ ~!Global("B!GavinFriend","GLOBAL",3)~ + @632 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.8
+ ~!Global("B!GavinFriend","GLOBAL",3)~ + @633 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.9
+ ~!Global("B!GavinFriend","GLOBAL",3)~ + @634 DO ~IncrementGlobal("B!GavinPostFlirt","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk6.10
++ @18 EXTERN ~B!GAVINJ~ BGavinVoice
++ @119 EXTERN ~B!GAVINJ~ BGavinTalk6.12

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.1
@635
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.2
@636
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.3a
@637
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.3b
@638
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.4
@639
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.5
@640
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.6
@641
= @642
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.7a
@643
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.7b
@644
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.7c
@645
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.7d
@646
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.8
@647
END
++ @648 EXTERN ~B!GAVINJ~ BGavinTalk6.8a
++ @649 EXTERN ~B!GAVINJ~ BGavinTalk6.8b
++ @650 EXTERN ~B!GAVINJ~ BGavinTalk6.8c
++ @651  EXTERN ~B!GAVINJ~ BGavinTalk6.8d
++ @652 EXTERN ~B!GAVINJ~ BGavinTalk6.8e
++ @119 EXTERN ~B!GAVINJ~ BGavinTalk6.8f

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.8a
@653
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.8b
@654
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.8c
@655
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.8d
@656
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.8e
@657
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.8f
@246
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.9
@658
EXIT

//	B!GavinRomCutByOther	Restart		Another relationship became committed
//	B!GavinNoReturn			NO Restart	Gavin offended, heartbroken too many times, or other deal-breaker
//	B!GavinConcurrentBreak	Restart		PC has too many other active relationships
//	B!GavinRomPCEnded		Restart		PC elected to end the relationship or said something to that effect
//	B!GavinBhaalBreak		NO Restart	PC's heritage has been revealed too soon
//	B!GavinNotInterested	Restart		Gavin has perceived that the PC is not interested in him

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10	//can we talk?
@659
END
+ ~Global("B!GavinRomCutByOther","GLOBAL",1) !Global("B!GavinNoReturn","GLOBAL",1)~ + @660 EXTERN ~B!GAVINJ~ BGavinTalk6.10a1
+ ~Global("B!GavinNoReturn","GLOBAL",1) !GlobalGT("B!GavinBhaalBreak","GLOBAL",0)~ + @660 EXTERN ~B!GAVINJ~ BGavinTalk6.10a2
+ ~GlobalGT("B!GavinConcurrentBreak","GLOBAL",0) !Global("B!GavinNoReturn","GLOBAL",1)~ + @660 EXTERN ~B!GAVINJ~ BGavinTalk6.10a4
+ ~GlobalGT("B!GavinConcurrentBreak","GLOBAL",1)~ + @660 EXTERN ~B!GAVINJ~ BGavinTalk6.10f
+ ~GlobalGT("B!GavinRomPCEnded","GLOBAL",0) !Global("B!GavinNoReturn","GLOBAL",1)~ + @660 EXTERN ~B!GAVINJ~ BGavinTalk6.10a3
+ ~Global("B!GavinBhaalBreak","GLOBAL",1)~ + @660 EXTERN ~B!GAVINJ~ BGavinTalk6.10j
+ ~Global("B!GavinNotInterested","GLOBAL",2) !Global("B!GavinNoReturn","GLOBAL",1)~ + @660 EXTERN ~B!GAVINJ~ BGavinTalk6.10h
++ @661 EXTERN ~B!GAVINJ~ BGavinTalk6.10b
+ ~Global("B!GavinCommitment","GLOBAL",1) !GlobalGT("B!GavinOffend","GLOBAL",7)~ + @662 EXTERN ~B!GAVINJ~ BGavinTalk6.10c
+ ~Global("B!GavinCommitment","GLOBAL",1) GlobalGT("B!GavinOffend","GLOBAL",7)~ + @662 EXTERN ~B!GAVINJ~ BGavinTalk6.10i
+ ~!GlobalGT("B!GavinBhaalBreak","GLOBAL",0) OR(2) Global("B!GavinRomCutByOther","GLOBAL",1) Global("B!GavinConcurrentBreak","GLOBAL",1) !Global("B!GavinNoReturn","GLOBAL",1)~ + @663  EXTERN ~B!GAVINJ~ BGavinTalk6.10d1
+ ~!GlobalGT("B!GavinBhaalBreak","GLOBAL",0) GlobalGT("B!GavinConcurrentBreak","GLOBAL",1)~ + @663 EXTERN ~B!GAVINJ~ BGavinTalk6.10g
+ ~!GlobalGT("B!GavinBhaalBreak","GLOBAL",0) Global("B!GavinNoReturn","GLOBAL",1) !GlobalGT("B!GavinConcurrentBreak","GLOBAL",1) !GlobalGT("B!GavinPCBreak","GLOBAL",2)~ + @663  EXTERN ~B!GAVINJ~ BGavinTalk6.10d2
+ ~!GlobalGT("B!GavinBhaalBreak","GLOBAL",0) Global("B!GavinRomPCEnded","GLOBAL",1) !Global("B!GavinNoReturn","GLOBAL",1)~ + @663  EXTERN ~B!GAVINJ~ BGavinTalk6.10d3
+ ~!GlobalGT("B!GavinBhaalBreak","GLOBAL",0) GlobalGT("B!GavinPCBreak","GLOBAL",1)~ + @663  EXTERN ~B!GAVINJ~ BGavinTalk6.10d4
+ ~!GlobalGT("B!GavinBhaalBreak","GLOBAL",0) Global("B!GavinNotInterested","GLOBAL",2) !Global("B!GavinNoReturn","GLOBAL",1)~ + @663  EXTERN ~B!GAVINJ~ BGavinTalk6.10d3
+ ~GlobalGT("B!GavinBhaalBreak","GLOBAL",0)~ + @663 EXTERN ~B!GAVINJ~ BGavinTalk6.10k
+ ~Global("B!GavinQuietFriend","GLOBAL",0)~ + @15 DO ~SetGlobal("B!GavinQuietFriend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinQuietFriend
+ ~Global("B!GavinQuietFriend","GLOBAL",1)~ + @16 DO ~SetGlobal("B!GavinQuietFriend","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinResumeFT
++ @664 EXTERN ~B!GAVINJ~ BGavinTalk6.10e

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10a1
@665
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10a2
@666
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10a3
@667
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10a4
@668
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10b
@669
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10c
@670
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1
@671
END
+ ~GlobalGT("B!GavinOffend","GLOBAL",4) ~ + @87 EXTERN ~B!GAVINJ~ BGavinTalk6.10d1a
+ ~GlobalLT("B!GavinOffend","GLOBAL",5)~ + @87 EXTERN ~B!GAVINJ~ BGavinTalk6.10d1b
++ @673 EXTERN ~B!GAVINJ~ BGavinTalk6.10d1c
++ @674 EXTERN ~B!GAVINJ~ BGavinTalk6.10d1d

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1a
@675
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1b
@676
END
+ ~Global("B!GavinCommitment","GLOBAL",0)~ + @677 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",1) SetGlobal("B!GavinFriendOnly","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalk6.10d1b1
+ ~Global("B!GavinCommitment","GLOBAL",1)~ + @677 EXTERN ~B!GAVINJ~ BGavinTalk6.10d1b2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1b1
@678
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1b2
@679
END
++ @87 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",2) SetGlobal("B!GavinFriendOnly","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalk6.10d1b2a
++ @680 EXTERN ~B!GAVINJ~ BGavinTalk6.10d1b2b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1b2a
@681
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1b2b
@682
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1c
@683
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d1d
@684 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d2
@685
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3
@686
END
+ ~GlobalGT("B!GavinOffend","GLOBAL",4)~ + @87 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3a
+ ~GlobalLT("B!GavinOffend","GLOBAL",5)~ + @87 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b
++ @687 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3c
++ @674 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3d

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3a
@675
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b
@676
END
+ ~Global("B!GavinCommitment","GLOBAL",0)~ + @677 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",1) SetGlobal("B!GavinFriendOnly","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b1
+ ~Global("B!GavinCommitment","GLOBAL",1)~ + @677 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b2
+ ~Global("B!GavinCommitmentBreak","GLOBAL",1)~ + @677 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b4
++ @688 	EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b1
@678
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b2
@679
END
++ @87 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",2) SetGlobal("B!GavinFriendOnly","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b2a
++ @680 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b2b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b4
@689
END
++ @690 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",2) SetGlobal("B!GavinCommitment","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1) GiveItemCreate("B!PCRING",Player1,0,0,0) SetGlobal("B!GavinFriendOnly","GLOBAL",0)~ EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b4a
++ @680 EXTERN ~B!GAVINJ~ BGavinTalk6.10d3b2b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b4a
@691
= @692
= @693
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b2a
@681
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b2b
@682
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3b3
@694
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3c
@683
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d3d
@684 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10d4
@675
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10e
@246
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10f
@695
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10g
@696
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10h
@697
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10i
@698
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10j
@699
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.10k
@700
EXIT

CHAIN 
IF ~~ THEN ~B!GAVINJ~ BGavinTalk6.12
@246
EXIT

///* PID for Non-friends */
CHAIN
IF ~IsGabber(Player1)
// %BGT_VAR%
!ActuallyInCombat()
Global("B!GavinCheckFriendMatch","GLOBAL",1)
OR(2)
Global("B!GavinFriend","GLOBAL",0)
Global("B!GavinFriend","GLOBAL",3)
!Global("B!GavinRomanceActive","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinTalk7
@701
END

++ @702 EXTERN ~B!GAVINJ~ BGavinTalk7.1
+ ~OR(6) HPPercentLT(Player1,80) HPPercentLT(Player2,80) HPPercentLT(Player3,80) HPPercentLT(Player4,80) HPPercentLT(Player5,80) HPPercentLT(Player6,80)~ + @3 EXTERN ~B!GAVINJ~ BGavinTalk.Healing
++ @703 EXTERN ~B!GAVINJ~ BGavinTalk7.2
++ @704 EXTERN ~B!GAVINJ~ BGavinVoice

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk7.1
@705
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk7.2
@706
END
IF
~OR(2)
    Alignment(Player1,MASK_GOOD)
    Alignment(Player1,MASK_GENEUTRAL)
  !Kit(Player1,ASSASIN)~ THEN DO ~SetGlobal("B!GavinFriendMatch","GLOBAL",1) SetGlobal("B!GavinFriend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinTalk7.2a
IF ~Alignment(Player1,MASK_EVIL)~ THEN EXTERN ~B!GAVINJ~ BGavinTalk7.2b
IF ~Kit(Player1,ASSASIN)~ THEN EXTERN ~B!GAVINJ~ BGavinTalk7.2c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk7.2a
@707
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk7.2b
@708
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk7.2c
@709
EXIT


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinHouse1
@710 DO ~SetGlobal("B!GavinWhichHouse","GLOBAL",2)~
= @711
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinHouse2
@712
= @713
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalkDisableFlirt /* disables flirting */
@714
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalkEnableFlirt /* enables flirting */
@203
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinFeldpostWhore
@715 DO ~SetGlobal("B!GavinProstitute","GLOBAL",2)~
END
++ @716 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore1
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @717 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore6
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @717 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore7
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @718 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore8
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @718 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore9
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @719 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore10
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @719 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore11
++ @720 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFeldpostWhore2
+ ~GlobalGT("B!HarlotDeactivate","GLOBAL",0) Gender(Player1,FEMALE)~ + @721 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore3
+ ~GlobalGT("B!HarlotDeactivate","GLOBAL",0) Gender(Player1,MALE)~ + @721 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore4
++ @722 EXTERN ~B!GAVINJ~ BGavinFeldpostWhore5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinFeldpostWhore1
SAY @723
+ ~GlobalGT("B!HarlotDeactivate","GLOBAL",0) Gender(Player1,FEMALE)~ + @721 + BGavinFeldpostWhore3
+ ~GlobalGT("B!HarlotDeactivate","GLOBAL",0) Gender(Player1,MALE)~ + @721 + BGavinFeldpostWhore4
++ @722 + BGavinFeldpostWhore5
END

IF ~~ THEN BEGIN BGavinFeldpostWhore2
SAY @724
= @725 
+ ~GlobalGT("B!HarlotDeactivate","GLOBAL",0) Gender(Player1,FEMALE)~ + @721 + BGavinFeldpostWhore3
+ ~GlobalGT("B!HarlotDeactivate","GLOBAL",0) Gender(Player1,MALE)~ + @721 + BGavinFeldpostWhore4
++ @722 + BGavinFeldpostWhore5
END

IF ~~ THEN BEGIN BGavinFeldpostWhore3
SAY @726
= @727
+ ~Global("B!GavinRomanceActive","GLOBAL",0)~ + @728 + BGavinFeldpostWhore3a
+ ~Global("B!GavinRomanceActive","GLOBAL",1)~ + @728 + BGavinFeldpostWhore3b
+ ~Global("B!GavinRomanceActive","GLOBAL",2)~ + @728 + BGavinFeldpostWhore3c
+ ~Global("B!GavinRomanceActive","GLOBAL",3)~ + @728 + BGavinFeldpostWhore3d
++ @722 + BGavinFeldpostWhore5
END

IF ~~ THEN BEGIN BGavinFeldpostWhore3a
SAY @729
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore3b
SAY @730
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore3c
SAY @731
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore3d
SAY @732
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore4
SAY @733
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore5
SAY @734
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore6
SAY @735
= @736
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore7
SAY @737
= @738
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore8
SAY @739
= @740
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore9
SAY @741
= @742
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore10
SAY @743
= @738
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFeldpostWhore11
SAY @743
= @738
IF ~~ THEN EXIT
END

END

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinTalk.Healing
@744
END
+ ~HPPercentLT(Player1,80)~ + @564 EXTERN ~B!GAVINJ~ BGavinTalk5.7a
+ ~InParty(Player2) HPPercentLT(Player2,80)~ + @565 EXTERN ~B!GAVINJ~ BGavinTalk5.7b
+ ~InParty(Player3) HPPercentLT(Player3,80)~ + @566 EXTERN ~B!GAVINJ~ BGavinTalk5.7c
+ ~InParty(Player4) HPPercentLT(Player4,80)~ + @567 EXTERN ~B!GAVINJ~ BGavinTalk5.7d
+ ~InParty(Player5) HPPercentLT(Player5,80)~ + @568 EXTERN ~B!GAVINJ~ BGavinTalk5.7e
+ ~InParty(Player6) HPPercentLT(Player6,80)~ + @569 EXTERN ~B!GAVINJ~ BGavinTalk5.7f


//Thus ends an altogether too long PID sequence.