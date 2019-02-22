/* ~B!GAVINJ~ */
/* CONTENTS */
/* Reputation talks */
///* Reputation break point */
///* Unhappy */
///* Happy */
///* Delighted */
/* Interjections */
///* Song of the Morning - Dawn Priest Blane */
///* Song of the Morning - Dawn Priest Bram */
///* Song of the Morning - Drunk north of temple */
///* Beregost - Mirianne */
///* Beregost - Galteran in Gavin's old house */
///* Beregost - Neighbor Davis */
///* Beregost - Borland */
///* Beregost - Golin Vend, the tour guide */
///* Beregost - Bartender at the Red Sheaf */
///* Beregost - Karlat */
///* Friendly Arm Inn - Tarnesh */
///* Coastway - Jase, boy by Kagain's caravan */
///* Coastway - Bandit leader setup for Silvershield fibula */
///* Fisherman's Lake - Teyngan */
///* Fisherman's Lake - Drizzt */
///* Fire Leaf Forest - Albert */
///* Gibberling Mountains - Gellana and Samuel */
///* Nashkel - Oublek */
///* Nashkel - Oublek, regarding Brage */
///* Nashkel - Berrun Ghastkill */
///* Nashkel - Joseph's wife */
///* Nashkel - Noober */
///* Nashkel - Neira */
///* Nashkel - Nimbul */
///* Nashkel - Samantha and Jamie */
///* Dryad Falls - Caldo, Krumm and the Cloudpeak Dryad */
///* Eldoth */
///* Viconia */
///* West Baldur's Gate - Varci */
///* West Baldur's Gate - Tremain */
///* West Baldur's Gate - Abela the Nymph
///* North Baldur's Gate - Ramazith's proposal */
///* Flaming Fist - Neb */
///* Flaming Fist - Duke Eltan ill */
///* Nashkel Mines - Prism */
///* Cloakwood 2 - Tiber */
///* Cloakwood 2 - Centeol */
///* Candlekeep - Theodon */
///* Nashkel Carnival - The Great Gazib */
///* Nashkes Mines 1 - Dink and Kylee's Dagger */
///* Nashkel Mines 4 - Mulahey */
///* Baldur's Gate Docks - Basilisks loose */
///* Red Canyons - Bassilus Quest Interjections */
///* Cloakwood Mines */
///* Cloakwook Mines 4 - Davaeorn */
///* Tamoko */
///* Lighthouse - Arkushule */
///* Mutamin's Garden - Tamah */
///* Cloakwood 2 - Finding Chelak */
///* Cloakwood 2 - Centeol's Lair */
///* South Beregost Road - Roe's letter */
///* Beregost - Visiting Gavin's old house */
///* Beregost - Greta's house */
///* Spider body in party inventory */
///* spider body in Gavin's inventory */
///* Fire Leaf Forest - Rufie */
///* Coastway - Silvershield Fibula */
///* Joseph's Ring */
///* Girdle of Gender Bender */
///* On the roof of the Iron Throne */
///* Bhaal heritage revealed */
///* Many bounty notices */
/* Xan's break with a half-elf */
/* Saw a spider */
/* CHARM TALKING - doesn't work, as far as I know, but just in case */
/* DRUNKEN BANTERS */
///* Just friends */
///* Early Relationship */
///* Early Romance Aftermath */
///* Later relationship */
///* Later relationship aftermath */
///* Committed drunk */
///* Committed drunk aftermath */
///* Drunk sex */
///* Drunk sex aftermath */
///* Picking up Dynaheir */
///* Picking up Viconia */
/* FRIENDTALKS */
/* Friendship warnings and breaks */
///* Offense warning 1 */
///* Offense warning 2 */
///* Offense break */
/* Friendtalks */
///* Friendtalk 1 - Gavin, cleric of Lathander */
///* Friendtalk 2 - why is pc on the road */
///* Friendtalk 3 - Gavin on religion */
///* Friendtalk 4 - Lathander and racial harmony */
///* Friendtalk 5 - Gavin's brown thumb */
///* Friendtalk 6 - What will pc do when quest is over */
///* Baldur's Gate */
///* Entrance to the temple of Bhaal, final peptalk */
/* CHAPTER TALKS */
///* Chapter 2 - What to do about the iron shortage */
///* Chapter 3 - Mines are clear, now what? */
///* Chapter 4 - powerless in the face of human suffering */
///* Chapter 5 - reaction to Davaeorn's death */
///* Chapter 6 - About Lanie */
///* Chapter 7 - catacombs */
///* Chapter 8 - going to get Lanie */

///////////////////////////////////////////////////////////////////////
///////////////// Important Global Variables //////////////////////////
///////////////////////////////////////////////////////////////////////

//Globals: 
//	B!GavinCheckFriendMatch		PC has been compared to Gavin's friendship standards
//	B!GavinFriendMatch			PC is compatible with Gavin for friendship
//	B!GavinCheckRomanceMatch 	PC has been compared to Gavin's relationship standards
//	B!GavinRomanceMatch			PC is compatible with Gavin for romance
//	B!GavinFriend				PC has some friendship history with Gavin (0=never friend, 1=lover, 2=just friends, 3=friendship over)
//	B!GavinRomanceActive 		PC has some relationship history with Gavin (the usual: 1,2,3)
//	B!GavinFriendtalk			Gavin's friendly conversations with the PC
//	B!GavinLovetalk				Gavin's romantic conversations with the PC
//	B!GavinLove					Gavin's favorable reaction counter
//	B!GavinOffend				PC has said or done something which has offended Gavin (Rom Break = 7, Friend Break = 12)
//	B!GavinSex					Gavin and the PC have had sex
//	B!LoveGavin					PC has told Gavin she loves him
//	B!GavinConcurrent			Increases at every LT for every relationship active besides his
//	B!GavinNoReturn				It is no longer possible to restart Gavin's romance
//	B!KnowBhaal					PC knows he/she is the child of Bhaal
//	B!DurlyleKiss				PC has accepted Durlyle's kiss (TSC)
//  B!GavinWatchOver			Gavin watches over the PC when she sleeps
// 	B!NoLoveGavin				PC has told Gavin she no longer loves him
// 	B!GavinFriendFlirt			Friendly PID counter
//	B!GavinFlirtEarly			Early Pre-Commitment PID counter
// 	B!GavinFlirtLate			Later Pre-Commitment PID counter
//	B!GavinFlirtCommitted		Post-Commitment PID counter
// 	B!GavinPostFlirt			PID initiated after termination of the relationship
//	B!GavinRomPCEnded			PC ended the relationship
//	B!GavinRomGavinEnded		Gavin ended the relationship
//	B!GavinRomCutByOther		Gavin's relationship ended because another relationship moved to the committed phase
// 	B!GavinSexQuestion			Gavin has asked the PC if she would like to become more intimate
//	B!PCWantsSex				PC has expressed her interest in having sex with Gavin
//	B!PCReconsidersSex			PC has changed her mind about having sex with Gavin
// 	B!GavinCommitment			Goes to 1 when PC agrees to commit to Gavin
//	B!GavinConcurrentBreak	Gavin ended the relationship because of too many concurrent relationships
//	GavinJoined					Gavin joined the group
// 	B!GavinRomMustEnd			Global to signal end of Gavin-PC romance
//	B!GavinFriendMustEnd		Global to signal end of Gavin-PC friendship
//	B!GavinKnowGorion			Gavin knows about Gorion
//	B!GavinRingStory			Gavin told the story of Reed and his ring
//	B!GavinRepNotHighEnough		PC Reputation is not high enough to proceed past LT 16
//  B!GavinFriendtalk			Friendtalk (timer expires if it's odd, talk happens and timer reset if it's even)
//  B!GavinLovetalk				Lovetalk (timer expires if it's odd, talk happens and timer reset if it's even)
//  B!GavinDelayLT				PC has placed a LT on hold. Gavin will keep track, and when it gets too high, he'll break it off.
//	B!GavinLateConcurrent		PC has other romance interests after she has committed to Gavin
//  B!GavinPCInnocent			PC's sexual experience prior to Gavin 1=virgin 2=more experienced 3=declined to say
//  B!GavinWantsKids			PC's desire for a family 1=someday, 2=right now 3=never
//  B!DisableFlirts				Toggle for flirting 1=flirting 0=no flirting
//  B!GavinQuietFriend   		Keep the friendship active, but put friendtalks on hold
//  B!GavinQuietLover			Keep the romance active, but put lovetalks on hold
//  B!GavinBhaalBreak	 		Relationship broke because Gavin found out about Bhaal too early.
//  B!GavinNotInterested		Gavin has perceived that the PC has lost interest in him
//  B!GavinFinger				Gavin has cut his finger off to secure the trust of the pc
//  B!GavinWoman				PC has forced Gavin to don the girdle of masculinity/femininity
//  B!GavinMarried				Gavin and the PC were married in LT 27
//  B!GavinPCLikedSex			The PC told Gavin she liked it *or* agreed too late for it to make any difference
//  B!FriendOnlyCheck			Check to see if Gavin is only compatible for friendship
//  B!GavinFriendOnly			Gavin and the PC are only friends
//  B!GavAddTalk                Additional friendship talks


/* Reputation talks */

///* Reputation break point */
CHAIN
IF ~Global("B!RepLeaving","GLOBAL",1)~
THEN ~B!GAVINJ~ ReputationBreak
@0 
DO ~SetGlobal("B!GavinOffend","GLOBAL",15) SetGlobal("B!RepLeaving","GLOBAL",2) SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~
EXIT

///* Unhappy */
CHAIN
IF ~Global("B!RepComplain","GLOBAL",1)~
THEN ~B!GAVINJ~ ReputationWorry
@1 
DO ~SetGlobal("B!RepComplain","GLOBAL",2)~
EXIT

///* Happy */
CHAIN
IF ~Global("B!RepHappy","GLOBAL",1)~
THEN ~B!GAVINJ~ ReputationHappy
@2 
DO ~SetGlobal("B!RepHappy","GLOBAL",2) IncrementGlobal("B!GavinLove","GLOBAL",1)~
EXIT

///* Delighted */
CHAIN
IF ~Global("B!RepHighest","GLOBAL",1)~
THEN ~B!GAVINJ~ ReputationHighest
@3 
DO ~SetGlobal("B!RepHighest","GLOBAL",2) IncrementGlobal("B!GavinLove","GLOBAL",1)~
EXIT

/* Interjections */

///* Song of the Morning - Dawn Priest Blane */
I_C_T ~%tutu_var%BLANE~ 0 BGavinBlane
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @4
== ~%tutu_var%BLANE~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @5
END

///* Song of the Morning - Dawn Priest Bram */
I_C_T ~%tutu_var%BRAN~ 0 BGavinBran
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @6
== ~%tutu_var%BRAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @7
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @8
== ~%tutu_var%BRAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @9
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @10
END

///* Song of the Morning - Drunk north of temple */
I_C_T ~%tutu_var%DRUNK~ 0 BGavinTempleDrunk
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR% Global("B!GavinRedSheaf","GLOBAL",0)~ THEN @11
END


///* Beregost - Mirianne */
I_C_T ~%tutu_var%MIRIAN~ 0 BGavinMirianne1
== ~%tutu_var%MIRIAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @12 DO ~SetGlobal("B!HelpMirianne","GLOBAL",1)~
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @13
== ~%tutu_var%MIRIAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @14
END

I_C_T ~%tutu_var%MIRIAN~ 1 BGavinMirianne2
== ~%tutu_var%MIRIAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @15 DO ~SetGlobal("B!HelpMirianne","GLOBAL",2)~
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @16
== ~%tutu_var%MIRIAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @17
END

I_C_T ~%tutu_var%MIRIAN~ 2 BGavinMirianne3
== ~%tutu_var%MIRIAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @15 DO ~SetGlobal("B!HelpMirianne","GLOBAL",2)~
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @16
== ~%tutu_var%MIRIAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @17
END

///* Beregost - Galteran in Gavin's old house */
I_C_T ~%tutu_var%MTBE6~ 0 BGavinGalteran
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @18
== ~%tutu_var%MTBE6~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @19
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @20
= @21
= @22 DO ~SetGlobal("B!MetGalteran","GLOBAL",1)~
END

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("B!GAVIN")
InMyArea("B!GAVIN")
!StateCheck("B!GAVIN",CD_STATE_NOTVALID)
Global("B!MetGalteran","GLOBAL",1)
GlobalGT("B!GavinLovetalk","GLOBAL",24)~ THEN ~%tutu_var%MTBE6~ BGavinGalteran2
@23
DO ~SetGlobal("B!MetGalteran","GLOBAL",2)~
== ~B!GAVINJ~ @24
== ~%tutu_var%MTBE6~ @25
== ~B!GAVINJ~ @26
== ~%tutu_var%MTBE6~ @27
= @28
== ~B!GAVINJ~ @29
= @30
EXIT

///* Beregost - Neighbor Davis */
I_C_T ~%tutu_var%MTBE7~ 0 BGavinDavis1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @31
== ~%tutu_var%MTBE7~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @32
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @33
END

I_C_T ~%tutu_var%MTBE7~ 2 BGavinDavis2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @31
== ~%tutu_var%MTBE7~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @34
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @35
END

///* Beregost - Borland */
I_C_T ~%tutu_var%MTBE5~ 0 BGavinBorland1
== ~%tutu_var%MTBE5~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @36
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @37
== ~%tutu_var%MTBE5~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @38
END

///* Beregost - Golin Vend, the tour guide */
I_C_T ~%tutu_var%GOLINV~ 0 BGavinGolin
== ~%tutu_var%GOLINV~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @39
END

///* Beregost - Bartender at the Red Sheaf */
I_C_T ~%tutu_var%BART3~ 0 BGavinRedSheaf
== ~%tutu_var%BART3~ IF ~InParty("B!GAVIN") !Dead("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR% Global("B!GavinRedSheaf","GLOBAL",0)~ THEN @40
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @41 DO ~SetGlobal("B!GavinRedSheaf","GLOBAL",1)~
== ~%tutu_var%BART3~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @42
END

///* Beregost - Karlat */
I_C_T ~%tutu_var%KARLAT~ 0 BGavinKarlat1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @43 DO ~SetGlobal("B!GavinKarlat","GLOBAL",1) IncrementGlobal("B!GavinBountyNotice","GLOBAL",1)~
END

CHAIN
IF ~Global("B!GavinKarlat","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavKarlat2
@44
= @45
DO ~SetGlobal("B!GavinKarlat","GLOBAL",3)~
END
++ @46 EXTERN ~B!GAVINJ~ BGavKarlat.1
+ ~HPPercentLT(Player1,80)~ + @47 DO ~SetGlobal("B!HealPlayer1","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavKarlat.2
+ ~HPPercentLT(Player2,80)~ + @48 DO ~SetGlobal("B!HealPlayer2","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavKarlat.2
+ ~HPPercentLT(Player3,80)~ + @49 DO ~SetGlobal("B!HealPlayer3","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavKarlat.2
+ ~HPPercentLT(Player4,80)~ + @50 DO ~SetGlobal("B!HealPlayer4","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavKarlat.2
+ ~HPPercentLT(Player5,80)~ + @51 DO ~SetGlobal("B!HealPlayer5","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavKarlat.2
+ ~HPPercentLT(Player6,80)~ + @52 DO ~SetGlobal("B!HealPlayer6","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavKarlat.2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavKarlat.1
SAY @53
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavKarlat.2
SAY @54
IF ~~ THEN EXIT
END
END

///* Friendly Arm Inn - Tarnesh */
I_C_T ~%tutu_var%TARNES~ 1 BGavinTarnesh1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @55 DO ~SetGlobal("B!GavinTarnesh","GLOBAL",1) IncrementGlobal("B!GavinBountyNotice","GLOBAL",1)~
== ~%tutu_var%TARNES~  IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @56
END

I_C_T ~%tutu_var%TARNES~ 5 BGavinTarnesh2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @57 DO ~SetGlobal("B!GavinTarnesh","GLOBAL",1) IncrementGlobal("B!GavinBountyNotice","GLOBAL",1)~
== ~%tutu_var%TARNES~  IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @58
END

I_C_T ~%tutu_var%TARNES~ 7 BGavinTarnesh3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @59 DO ~SetGlobal("B!GavinTarnesh","GLOBAL",1) IncrementGlobal("B!GavinBountyNotice","GLOBAL",1)~
== ~%tutu_var%TARNES~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @983
END

CHAIN
IF ~Global("B!GavinTarnesh","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavTarnesh
@60
= @61
DO ~SetGlobal("B!GavinTarnesh","GLOBAL",3)~
END
++ @62 EXTERN ~B!GAVINJ~ BGavTarnesh.1
+ ~HPPercentLT(Player1,80)~ + @47 DO ~SetGlobal("B!HealPlayer1","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavTarnesh.2
+ ~HPPercentLT(Player2,80)~ + @48 DO ~SetGlobal("B!HealPlayer2","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavTarnesh.2
+ ~HPPercentLT(Player3,80)~ + @49 DO ~SetGlobal("B!HealPlayer3","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavTarnesh.2
+ ~HPPercentLT(Player4,80)~ + @50 DO ~SetGlobal("B!HealPlayer4","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavTarnesh.2
+ ~HPPercentLT(Player5,80)~ + @51 DO ~SetGlobal("B!HealPlayer5","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavTarnesh.2
+ ~HPPercentLT(Player6,80)~ + @52 DO ~SetGlobal("B!HealPlayer6","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavTarnesh.2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavTarnesh.1
SAY @63
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavTarnesh.2
SAY @54
IF ~~ THEN EXIT
END
END

///* Coastway - Jase, boy by Kagain's caravan */
I_C_T ~%tutu_var%JASE~ 0 BGavinJase
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @64 
END

///* Coastway - Bandit leader setup for Silvershield fibula */
      /* moved to B!X#KABAND.d */
      
///* Fisherman's Lake - Teyngan */
I_C_T ~%tutu_var%TEYNGA~ 0 BGavinTeyngan
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @65 
== ~%tutu_var%TEYNGA~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @66
END

///* Fisherman's Lake - Drizzt */
I_C_T ~%tutu_var%DRIZZT~ 3 BGavinDrizzt1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @67 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%DRIZZT~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @984
END

I_C_T ~%tutu_var%DRIZZT~ 7 BGavinDrizzt2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @68 
== ~%tutu_var%DRIZZT~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @69 
END

///* Fire Leaf Forest - Albert */
I_C_T ~%tutu_var%ALBERT~ 1 BGavinAlbert1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @70 DO ~SetGlobal("B!GavinAlbert","GLOBAL",1)~
== ~%tutu_var%ALBERT~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @71
END

///* Gibberling Mountains - Gellana and Samuel */
I_C_T ~%tutu_var%LENA~ 0 BGavinLena1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @72 
== ~%tutu_var%LENA~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @73
END

I_C_T ~%tutu_var%LENA~ 3 BGavinLena1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @74 
END

///* Nashkel - Oublek */
I_C_T ~%tutu_var%OUBLEK~ 1 BGavinOublek1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @75 
== ~%tutu_var%OUBLEK~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @985 
END

I_C_T ~%tutu_var%OUBLEK~ 2 BGavinOublek2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @76 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%OUBLEK~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @986
END

I_C_T ~%tutu_var%OUBLEK~ 27 BGavinOublek3
== ~B!GAVINJ~ IF ~!Dead("prism") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @77
== ~%tutu_var%OUBLEK~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @987
END

I_C_T ~%tutu_var%OUBLEK~ 28 BGavinOublek4
== ~B!GAVINJ~ IF ~!Dead("prism") InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @77
== ~%tutu_var%OUBLEK~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @987
END

///* Nashkel - Oublek, regarding Brage */
I_C_T ~%tutu_var%OUBLEK~ 3 BGavinOublek3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @78
== ~%tutu_var%OUBLEK~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @988
END

///* Nashkel - Berrun Ghastkill */
I_C_T ~%tutu_var%BERRUN~ 4 BGavinBerrun1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @79
END

I_C_T ~%tutu_var%BERRUN~ 5 BGavinBerrun2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @79
END

I_C_T ~%tutu_var%BERRUN~ 8 BGavinBerrun3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @80
== ~%tutu_var%BERRUN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @989
END

I_C_T ~%tutu_var%BERRUN~ 11 BGavinBerrun4
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @80
== ~%tutu_var%BERRUN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @989
END

I_C_T ~%tutu_var%BERRUN~ 12 BGavinBerrun5
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @80
== ~%tutu_var%BERRUN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @989
END

I_C_T ~%tutu_var%BERRUN~ 13 BGavinBerrun6
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @81
== ~%tutu_var%BERRUN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @990
END

///* Nashkel - Joseph's wife */
I_C_T ~%tutu_scriptbg%FTOWN2~ 1 BGavinJosephWife1 
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @82 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_scriptbg%FTOWN2~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @991
END

I_C_T ~%tutu_scriptbg%FTOWN2~ 3 BGavinJosephWife1a
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @83 DO ~SetGlobal("B!JosephRing","GLOBAL",1)~
== ~%tutu_scriptbg%FTOWN2~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @992
END

I_C_T ~%tutu_scriptbg%FTOWN2~ 6 BGavinJosephWife2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @84
END

I_C_T ~%tutu_scriptbg%FTOWN2~ 7 BGavinJosephWife3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @85 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",3)~
END

I_C_T ~%tutu_scriptbg%FTOWN2~ 8 BGavinJosephWife4
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @86
END

///* Nashkel - Noober */
I_C_T ~%tutu_var%NOOBER~ 2 BGavinNoober1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @87
== ~%tutu_var%NOOBER~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @88
END

I_C_T ~%tutu_var%NOOBER~ 11 BGavinNoober2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @89
== ~%tutu_var%NOOBER~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @993
END

///* Nashkel - Neira */
I_C_T ~%tutu_var%NEIRA~ 0 BGavinNeira1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @90 DO ~SetGlobal("B!GavinNeira","GLOBAL",1) IncrementGlobal("B!GavinBountyNotice","GLOBAL",1)~
END

CHAIN
IF ~Global("B!GavinNeira","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavTarnesh
@91
DO ~SetGlobal("B!GavinNeira","GLOBAL",3)~
EXIT

///* Nashkel - Nimbul */
I_C_T ~%tutu_var%NIMBUL~ 0 BGavinNimbul
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @92 
DO ~SetGlobal("B!GavinNimbul","GLOBAL",1) IncrementGlobal("B!GavinBountyNotice","GLOBAL",1)~
END

CHAIN
IF ~Global("B!GavinNimbul","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavNimbul
@93
= @94
DO ~SetGlobal("B!GavinNimbul","GLOBAL",3)~
END
++ @95 EXTERN ~B!GAVINJ~ BGavNimbul.1
+ ~HPPercentGT(Player1,80)~ + @96 EXTERN ~B!GAVINJ~ BGavNimbul.2
+ ~HPPercentLT(Player1,81) HPPercentGT(Player1,50)~ + @96 EXTERN ~B!GAVINJ~ BGavNimbul.3
+ ~HPPercentLT(Player1,71) HPPercentGT(Player1,50)~ + @97 EXTERN ~B!GAVINJ~ BGavNimbul.4
+ ~HPPercentLT(Player1,51)~ + @96 EXTERN ~B!GAVINJ~ BGavNimbul.5
+ ~HPPercentLT(Player1,51)~ + @47 EXTERN ~B!GAVINJ~ BGavNimbul.6
++ @98 EXTERN ~B!GAVINJ~ BGavNimbul.7

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavNimbul.1
SAY @63
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavNimbul.2
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavNimbul.3
SAY @100
++ @101 + BGavNimbul.8
++ @102 + BGavNimbul.9
END

IF ~~ THEN BEGIN BGavNimbul.4
SAY @103
++ @101 + BGavNimbul.8
++ @102 + BGavNimbul.9
END

IF ~~ THEN BEGIN BGavNimbul.5
SAY @104
++ @101 + BGavNimbul.10
++ @102 + BGavNimbul.9
END

IF ~~ THEN BEGIN BGavNimbul.6
SAY @105
IF ~~ THEN DO ~SetGlobal("B!HealPlayer1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavNimbul.7
SAY @106
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavNimbul.8
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavNimbul.9
SAY @108
IF ~~ THEN DO ~SetGlobal("B!HealPlayer1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavNimbul.10
SAY @109
++ @110 + BGavNimbul.8
++ @111 + BGavNimbul.9
END
END

///* Nashkel - Samantha and Jamie */

I_C_T ~%tutu_var%SAMANT~ 7 BGavSamant7
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1022 
DO ~SetGlobal("B!GavinFriend","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",3) ReputationInc(-1)~
== ~%tutu_var%SAMANT~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1023
END

/*INTERJECT ~%tutu_var%SAMANT~ 7 BGavSamantha
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1013
= @1014
END
++ @1015 + BGavSamantha1
++ @1016 + BGavSamantha2

APPEND ~B!GAVINJ~

IF ~~ THEN BGavSamantha1
SAY @1017
= @1018
IF ~~ THEN EXIT
END

IF ~~ THEN BGavSamantha2
SAY @1019
IF ~~ THEN DO ~ReputationInc(-1) SetGlobal("B!GavinFriend","GLOBAL",3) LeaveParty() ChangeAIScript("",DEFAULT) Enemy() Attack(Player1)~ + BGavSamantha3
END

IF ~~ THEN BGavSamantha3
SAY @1020
COPY_TRANS ~%tutu_var%SAMANT~ 7
END
END */

///* Dryad Falls - Caldo, Krumm and the Cloudpeak Dryad */
I_C_T ~%tutu_var%CALDO~ 0 BGavinCaldo1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @112
END

I_C_T ~%tutu_var%CALDO~ 1 BGavinCaldo2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @112
END

I_C_T ~%tutu_var%CALDO~ 6 BGavinCaldo2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @113 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
END

///* Eldoth */
I_C_T ~%tutu_var%ELDOTH~ 0 BGavinEldoth1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @114
END

I_C_T ~%tutu_var%ELDOTH~ 7 BGavinEldoth2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @115
== ~%tutu_var%ELDOTH~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @994
END

I_C_T ~%tutu_var%ELDOTH~ 10 BGavinEldoth3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @116 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%ELDOTH~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @995
END


///* Viconia */
I_C_T ~%tutu_scriptbg%VICONI~ 3 BGavinViconia1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @117
END


///* West Baldur's Gate - Varci */
I_C_T ~%tutu_var%VARCI~ 0 BGavinVarci1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @118
END

I_C_T ~%tutu_var%VARCI~ 4 BGavinVarci2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @119 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%VARCI~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @996
END

///* West Baldur's Gate - Tremain */
I_C_T ~%tutu_var%TREMAI~ 4 BGavinTremain2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @120
END

I_C_T ~%tutu_var%TREMAI~ 8 BGavinTremain1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @121
END

///* West Baldur's Gate - Abela the Nymph
I_C_T ~%tutu_var%ABELA~ 4 BGavinAbela1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @122 
= @123
== ~%tutu_var%ABELA~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @997
END

I_C_T ~%tutu_var%ABELA~ 7 BGavinAbela2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @122 
= @124
== ~%tutu_var%ABELA~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @997
END

I_C_T ~%tutu_var%ABELA~ 9 BGavinAbela3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @125 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%ABELA~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @998
END

///* North Baldur's Gate - Ramazith's proposal */
I_C_T ~%tutu_var%RAMAZI~ 3 BGavinRamazith1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @126
END

I_C_T ~%tutu_var%RAMAZI~ 6 BGavinRamazith2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @127
END

///* Flaming Fist - Neb */
I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 2 BGavinNeb1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @128
= @129
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("B!GAVIN") !Dead("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ @130
END

I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 8 BGavinNeb2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @131
END

I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 9 BGavinNeb3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @132
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @133
END

I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 12 BGavinNeb3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @134
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @135
END

I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 13 BGavinNeb2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @136
== ~%DYNAHEIR_JOINED%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR% InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @137
END


///* Flaming Fist - Duke Eltan ill */
I_C_T ~%tutu_var%DELTAN~ 12 BGavinEltan1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @138
== ~%tutu_var%DELTAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @999
END

///* Nashkel Mines - Prism */
I_C_T ~%tutu_var%PRISM~ 1 BGavinPrism1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @139
END

I_C_T ~%tutu_var%PRISM~ 3 BGavinPrism2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @140 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%PRISM~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1000
END

I_C_T ~%tutu_var%PRISM~ 7 BGavinPrism3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @141
== ~%tutu_var%PRISM~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1001
END

///* Cloakwood 2 - Tiber */
I_C_T ~%tutu_var%TIBER~ 1 BGavinTiber1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @142 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%TIBER~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1002 
END

I_C_T ~%tutu_var%TIBER~ 2 BGavinTiber2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @143 DO ~SetGlobal("B!GavinHelpTiber","GLOBAL",1)~
END

I_C_T ~%tutu_var%TIBER~ 3 BGavinTiber3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @144
END

I_C_T ~%tutu_var%TIBER~ 4 BGavinTiber4
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @145
== ~%tutu_var%TIBER~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1003
END

///* Cloakwood 2 - Centeol */
ADD_TRANS_TRIGGER ~%tutu_var%CENTEO~ 0 ~OR(3) !InParty("B!GAVIN") !InMyArea("B!GAVIN") StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ DO 0

EXTEND_BOTTOM ~%tutu_var%CENTEO~ 0
IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN REPLY @146 GOTO 1
END

///* Candlekeep - Theodon */
I_C_T ~%tutu_scriptbg%WILLIA%eet_var%~ 10 BGavinTheodon
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") !Dead("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR% Gender(Player1,FEMALE) !Global("B!GavinRomanceActive","GLOBAL",3)~ THEN @147
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1004
END

///* Nashkel Carnival - The Great Gazib */
I_C_T ~%tutu_var%GAZIB~ 1 BGavinGazib1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @148
== ~%tutu_var%GAZIB~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1012
END

///* Nashkes Mines 1 - Dink and Kylee's Dagger */
I_C_T ~%tutu_var%DINK~ 0 BGavinDink
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @149
== ~%tutu_var%DINK~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @150
END

///* Nashkel Mines 4 - Mulahey */
I_C_T ~%tutu_var%MULAHE~ 4 BGavinMulahey
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @151
== ~%tutu_var%MULAHE~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1005
END

///* Baldur's Gate Docks - Basilisks loose */
I_C_T ~%tutu_var%NADARI~ 1 BGavinBasiliskBaldursGate
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @152
END

///* Red Canyons - Bassilus Quest Interjections */
I_C_T ~%tutu_var%BASSIL~ 0 BGavinBassilus1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @153
END

I_C_T ~%tutu_var%BASSIL~ 2 BGavinBassilus2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @154
END

I_C_T ~%tutu_var%BASSIL~ 5 BGavinBassilus3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @155
== ~%tutu_var%BASSIL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1006
END

I_C_T ~%tutu_var%BASSIL~ 13 BGavinBassilus4
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @156
== ~%tutu_var%BASSIL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1007
END

I_C_T ~%tutu_var%BASSIL~ 7 BGavinBassilus5
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @157
END

I_C_T ~%tutu_var%BASSIL~ 6 BGavinBassilus6
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @158
== ~%tutu_var%BASSIL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1008
END

I_C_T ~%tutu_var%BASSIL~ 10 BGavinBassilus7
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @159
== ~%tutu_var%BASSIL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1008
END

I_C_T ~%tutu_var%BASSIL~ 11 BGavinBassilus8
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @160
== ~%tutu_var%BASSIL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1008
END

I_C_T ~%tutu_var%BASSIL~ 14 BGavinBassilus9
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @161
== ~%tutu_var%BASSIL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1008
END

///* Cloakwood Mines */
I_C_T ~%tutu_var%MINEC2~ 0 BGavinCWMines1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @162
END

I_C_T ~%tutu_var%MINEC2~ 9 BGavinCWMines2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @163 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
END

///* Cloakwook Mines 4 - Davaeorn */
I_C_T ~%tutu_var%DAVAEO~ 0 BGavinDavaeorn
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @164 
== ~%tutu_var%DAVAEO~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1010 
END

///* Tamoko */
I_C_T ~%tutu_var%TAMOKO~ 6 BGavinTamoko1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @165 
== ~%tutu_var%TAMOKO~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1009 
END

I_C_T ~%tutu_var%TAMOKO~ 7 BGavinTamoko2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @165 
== ~%tutu_var%TAMOKO~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1009 
END

///* Lighthouse - Arkushule */
I_C_T ~%tutu_var%ARKUSH~ 5 BGavinArkushule
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @166 
== ~%tutu_var%ARKUSH~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @997 
END

///* Mutamin's Garden - Tamah */
I_C_T ~%tutu_var%TAMAH~ 4 BGavinTamah1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @167 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
== ~%tutu_var%TAMAH~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @1011 
END

I_C_T ~%tutu_var%TAMAH~ 5 BGavinTamah2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @168 
== ~%tutu_var%TAMAH~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN @997
END

///* Cloakwood 2 - Finding Chelak */
CHAIN 
IF ~Global("B!GavinHelpTiber","GLOBAL",2) InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN ~B!GAVINJ~ BGavinFoundChelak
@169
DO ~SetGlobal("B!GavinHelpTiber","GLOBAL",3)~
= @170
EXIT

///* Cloakwood 2 - Centeol's Lair */
CHAIN 
IF ~Global("B!CenteolLair","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinCenteolLair
@171
DO ~SetGlobal("B!CenteolLair","GLOBAL",2)~
END
++ @172 EXTERN ~B!GAVINJ~ BGavinCenteolLair.1
++ @173 EXTERN ~B!GAVINJ~ BGavinCenteolLair.2
++ @174 EXTERN ~B!GAVINJ~ BGavinCenteolLair.3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinCenteolLair.1
@175
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinCenteolLair.2
@176
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinCenteolLair.3
@177
EXIT

///* South Beregost Road - Roe's letter */
CHAIN 
IF ~Global("B!GavinRoeLetter","GLOBAL",1) InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) %BGT_VAR%~ THEN ~B!GAVINJ~ BGavinFoundRoeLetter
@178 DO ~SetGlobal("B!GavinRoeLetter","GLOBAL",2)~
= @179
EXIT

///* Beregost - Visiting Gavin's old house */
CHAIN 
IF ~Global("B!GavinWhichHouse","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinThisHouse
@180 DO ~SetGlobal("B!GavinWhichHouse","GLOBAL",4)~
= @181
EXIT

///* Beregost - Greta's house */
CHAIN 
IF ~Global("B!GavinGretaHouse","GLOBAL",1) InMyArea("B!GAVIN")~ THEN ~B!GAVINJ~ BGavinGretaHouse
@182 DO ~SetGlobal("B!GavinGretaHouse","GLOBAL",2)~
END
++ @183 EXTERN ~B!GAVINJ~ BGavinGretaHouse1
++ @184 EXTERN ~B!GAVINJ~ BGavinGretaHouse2
++ @185 EXTERN ~B!GAVINJ~ BGavinGretaHouse3
++ @186 EXTERN ~B!GAVINJ~ BGavinGretaHouse4

CHAIN ~B!GAVINJ~ BGavinGretaHouse1
@187
EXIT

CHAIN ~B!GAVINJ~ BGavinGretaHouse2
@188
EXIT

CHAIN ~B!GAVINJ~ BGavinGretaHouse3
@189
EXIT

CHAIN ~B!GAVINJ~ BGavinGretaHouse4
@190
EXIT

///* Spider body in party inventory */
CHAIN
IF ~Global("B!GavinSpider","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinSpider
@191
DO ~SetGlobal("B!GavinSpider","GLOBAL",2)~
EXIT

///* spider body in Gavin's inventory */
CHAIN
IF ~Global("B!GavinCarrySpider","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinCarrySpider
@192
DO ~SetGlobal("B!GavinCarrySpider","GLOBAL",2)~ 
EXIT

///* Fire Leaf Forest - Rufie */
CHAIN
IF ~Global("B!GavinRufie","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinRufieNoKidding
@193
DO ~SetGlobal("B!GavinRufie","GLOBAL",3)~
EXIT

///* Silvershield Fibula */
CHAIN
IF ~Global("B!GavinFibula","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinFibula
@194
DO ~SetGlobal("B!GavinFibula","GLOBAL",2)~
EXIT

///* Joseph's Ring */
CHAIN
IF ~Global("B!GavinJosRing","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinJosRing
@195
DO ~SetGlobal("B!GavinJosRing","GLOBAL",2)~
EXIT

///* Girdle of Gender Bender */
CHAIN
IF ~Global("B!GavinBelt","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinGenderBender
@196 DO ~SetGlobal("B!GavinBelt","GLOBAL",2) SetGlobal("B!GavinWoman","GLOBAL",1)~
== ~%EDWIN_JOINED%~IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @197
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @198
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @199
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @200
EXIT

APPEND ~B!GAVINJ~

IF ~Global("B!GavinBelt","GLOBAL",3)~ THEN BEGIN BGavinGenderBender2
SAY @201
IF ~~ THEN DO ~SetGlobal("B!GavinWoman","GLOBAL",2) SetGlobal("B!GavinBelt","GLOBAL",4)~ EXIT
END

///* On the roof of the Iron Throne */
IF ~Global("B!GavinRoof","GLOBAL",1)~ THEN BEGIN BGavinRoof
SAY @202
++ @203 DO ~SetGlobal("B!GavinRoof","GLOBAL",2)~ + BGavinRoof1
++ @204 DO ~SetGlobal("B!GavinRoof","GLOBAL",2)~ + BGavinRoof2
END

IF ~~ THEN BEGIN BGavinRoof1
SAY @205
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinRoof2
SAY @206
IF ~~ THEN EXIT
END
END

///* Bhaal heritage revealed */
CHAIN
IF ~Global("B!KnowBhaal","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinBhaalTalk1
@207
DO ~SetGlobal("B!KnowBhaal","GLOBAL",3)~
END
++ @208 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a
++ @209 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1b
++ @210 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1c
++ @211 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1a
@212
= @213
END 
++ @214 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1
++ @215 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a2
++ @211 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a
++ @210 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1c

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1a1
@216
END
++ @217 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a
++ @218 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a1

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1a1a
@219
END
++ @220 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a1
++ @221 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a2

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1a1a1
@222
EXIT

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1a1a2
@223 DO ~LeaveParty() SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeArea()~
EXIT

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1a2
@224
END
++ @225 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a2a
++ @226 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a
++ @227 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a1

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1a2a
@228
EXIT

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1b
@229
END
++ @225 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a2a
++ @226 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a
++ @227 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a1

CHAIN ~B!GAVINJ~ BGavinBhaalTalk1c
@230
END
++ @225 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a2a
++ @226 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a
++ @227 EXTERN ~B!GAVINJ~ BGavinBhaalTalk1a1a1

///* Many bounty notices */
CHAIN
IF ~Global("B!GavinBountyNoticeTalk","GLOBAL",1)~ THEN ~B!GAVINJ~ BBounty
@231
DO ~SetGlobal("B!GavinBountyNoticeTalk","GLOBAL",2)~
EXIT

/* Xan's break with a half-elf */
CHAIN
IF ~Global("B!GavinXanHalfElf","GLOBAL",2)~ THEN ~BB!GAVIN~ BXanBreakupHalfElf
@232
DO ~SetGlobal("B!GavinXanHalfElf","GLOBAL",3)~
== ~%XAN_BANTER%~ @233
== ~BB!GAVIN~ @234
== ~%XAN_BANTER%~ @235
== ~BB!GAVIN~ @236
== ~%XAN_BANTER%~ @237
== ~BB!GAVIN~ @238
== ~%XAN_BANTER%~ @239
== ~BB!GAVIN~ @240
== ~%XAN_BANTER%~ @241
== ~BB!GAVIN~ @242
== ~%XAN_BANTER%~ @243
== ~BB!GAVIN~ @244
== ~%XAN_BANTER%~ @245
== ~BB!GAVIN~ @246
== ~%XAN_BANTER%~ @247
== ~BB!GAVIN~ @248
== ~%XAN_BANTER%~ @249
== ~BB!GAVIN~ @250
== ~%XAN_BANTER%~ @251
== ~BB!GAVIN~ @252
== ~%XAN_BANTER%~ @253
EXIT

/* Saw a spider */
APPEND ~B!GAVINJ~
IF ~Global("B!GavinSawSpider","GLOBAL",1)~ THEN BEGIN BGavSpider
SAY @1021
IF ~~ THEN DO ~SetGlobal("B!GavinSawSpider","GLOBAL",2)~ EXIT
END
END
/* CHARM TALKING - doesn't work, as far as I know, but just in case */
APPEND ~B!GAVINJ~

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) OR(2) Global("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3) GlobalGT("B!GavinFriend","GLOBAL",0) !Global("B!GavinFriend","GLOBAL",3) GlobalGT("B!GavinLove","GLOBAL",15) GlobalGT("B!GavinOffend","GLOBAL",2)~ THEN BEGIN BGavinCharmedFriend1a
SAY @254
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) OR(2) Global("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3) GlobalGT("B!GavinFriend","GLOBAL",0) !Global("B!GavinFriend","GLOBAL",3) GlobalGT("B!GavinLove","GLOBAL",15) !GlobalGT("B!GavinOffend","GLOBAL",2)~ THEN BEGIN BGavinCharmedFriend1b
SAY @255
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) OR(2) Global("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3) GlobalGT("B!GavinFriend","GLOBAL",0) !Global("B!GavinFriend","GLOBAL",3) !GlobalGT("B!GavinLove","GLOBAL",15) GlobalGT("B!GavinOffend","GLOBAL",2)~ THEN BEGIN BGavinCharmedFriend2a
SAY @256
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) OR(2) Global("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3) GlobalGT("B!GavinFriend","GLOBAL",0) !Global("B!GavinFriend","GLOBAL",3) !GlobalGT("B!GavinLove","GLOBAL",15) !GlobalGT("B!GavinOffend","GLOBAL",2)~ THEN BEGIN BGavinCharmedFriend2b
SAY @257
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",15) GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover1a
SAY @258
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",1) GlobalGT("B!GavinLove","GLOBAL",15) !GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover1b
SAY @259
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END


IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",1) !GlobalGT("B!GavinLove","GLOBAL",15) GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover2a
SAY @260
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",1) !GlobalGT("B!GavinLove","GLOBAL",15) !GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover2b
SAY @261
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",20) GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover3a
SAY @262
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",2) GlobalGT("B!GavinLove","GLOBAL",20) !GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover3b
SAY @263
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",2) !GlobalGT("B!GavinLove","GLOBAL",20) GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover4a
SAY @264
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) Global("B!GavinRomanceActive","GLOBAL",2) !GlobalGT("B!GavinLove","GLOBAL",20) !GlobalGT("B!GavinOffend","GLOBAL",0)~ THEN BEGIN BGavinCharmedLover4b
SAY @265
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) OR(2) Global("B!GavinFriend","GLOBAL",0) Global("B!GavinFriend","GLOBAL",3) GlobalGT("B!GavinOffend","GLOBAL",2)~ THEN BEGIN BGavinCharmed1a
SAY @266
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END

IF WEIGHT #-3
~Global("B!CharmTalking","GLOBAL",1) StateCheck(Myself,STATE_CHARMED) OR(2) Global("B!GavinFriend","GLOBAL",0) Global("B!GavinFriend","GLOBAL",3) !GlobalGT("B!GavinOffend","GLOBAL",2)~ THEN BEGIN BGavinCharmed1b
SAY @267
IF ~~ THEN DO ~SetGlobal("B!CharmTalking","GLOBAL",0)~ EXIT
END
END

/* DRUNKEN BANTERS */

///* Just friends */
CHAIN
IF ~Global("B!GavinDrunkenFriend","GLOBAL",1)~ THEN ~B!GAVINJ~ BDrunkFriend
@268
DO ~SetGlobal("B!GavinDrunkenFriend","GLOBAL",2)~
END
++ @269 EXTERN ~B!GAVINJ~ BDrunkFriend1
++ @270 EXTERN ~B!GAVINJ~ BDrunkFriend1
++ @271 EXTERN ~B!GAVINJ~ BDrunkFriend1
++ @272 EXTERN ~B!GAVINJ~ BDrunkFriend1
++ @273 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk

CHAIN ~B!GAVINJ~ BDrunkFriend1.drunk
@274
END
++ @275 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk1
++ @276 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk2
++ @277 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk3

CHAIN ~B!GAVINJ~ BDrunkFriend1.drunk1
@278
EXIT

CHAIN ~B!GAVINJ~ BDrunkFriend1.drunk2
@279
EXIT

CHAIN ~B!GAVINJ~ BDrunkFriend1.drunk3
@280
EXIT

CHAIN ~B!GAVINJ~ BDrunkFriend1
@281
END
++ @282 EXTERN ~B!GAVINJ~ BDrunkFriend1.1
++ @283 EXTERN ~B!GAVINJ~ BDrunkFriend1.2
++ @94 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk

CHAIN ~B!GAVINJ~ BDrunkFriend1.2
@284
EXIT

CHAIN ~B!GAVINJ~ BDrunkFriend1.1
@285
END
++ @286 EXTERN ~B!GAVINJ~ BDrunkFriend1.1.1
++ @287 EXTERN ~B!GAVINJ~ BDrunkFriend1.1.1
++ @288 EXTERN ~B!GAVINJ~ BDrunkFriend1.1.1
++ @289 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk

CHAIN ~B!GAVINJ~ BDrunkFriend1.1.1
@290
END
++ @282 EXTERN ~B!GAVINJ~ BDrunkFriend1.1.1.1
++ @283 EXTERN ~B!GAVINJ~ BDrunkFriend1.2
++ @291 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk

CHAIN ~B!GAVINJ~ BDrunkFriend1.1.1.1
@292
END
++ @293 EXTERN ~B!GAVINJ~ BDrunkFriend1.1.1.1.1
++ @294 EXTERN ~B!GAVINJ~ BDrunkFriend1.1.1.1.1
++ @295 EXTERN ~B!GAVINJ~ BDrunkFriend1.1.1.1.1
++ @94 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk

CHAIN ~B!GAVINJ~ BDrunkFriend1.1.1.1.1
@296
END
++ @282 EXTERN ~B!GAVINJ~ BDrunkFriend1.enough
++ @283 EXTERN ~B!GAVINJ~ BDrunkFriend1.2
++ @297 EXTERN ~B!GAVINJ~ BDrunkFriend1.drunk

CHAIN ~B!GAVINJ~ BDrunkFriend1.enough
@298
EXIT

/* Friendship */

APPEND ~B!GAVINJ~

IF ~Global("B!GavinDrunkenFriend","GLOBAL",3)~ THEN BFriendAftermath
SAY @299
++ @300 DO ~SetGlobal("B!GavinDrunkenFriend","GLOBAL",4)~ + BFriendAftermath1
++ @301 DO ~SetGlobal("B!GavinDrunkenFriend","GLOBAL",4)~ + BFriendAftermath2
++ @302 DO ~SetGlobal("B!GavinDrunkenFriend","GLOBAL",4)~ + BFriendAftermath3
++ @303 DO ~SetGlobal("B!GavinDrunkenFriend","GLOBAL",4)~ + BFriendAftermath4
END

IF ~~ THEN BEGIN BFriendAftermath1
SAY @304
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BFriendAftermath2
SAY @305
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BFriendAftermath3
SAY @306
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BFriendAftermath4
SAY @307
IF ~~ THEN EXIT
END
END

///* Early Relationship */
CHAIN
IF ~Global("B!GavinDrunkenEarly","GLOBAL",1)~ THEN ~B!GAVINJ~ BDrunkEarly
@308
DO ~SetGlobal("B!GavinDrunkenEarly","GLOBAL",2)~
END
++ @309 EXTERN ~B!GAVINJ~ BDrunkEarly1
+ ~OR(4) Race(Player1,HALFORC) Race(Player1,DWARF) Race(Player1,GNOME) Race(Player1,HALFLING)~ + @310 EXTERN ~B!GAVINJ~ BDrunkEarly2
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @311 EXTERN ~B!GAVINJ~ BDrunkEarly3
++ @312 EXTERN ~B!GAVINJ~ BDrunkEarly4
++ @313 EXTERN ~B!GAVINJ~ BDrunkEarly5
++ @314 EXTERN ~B!GAVINJ~ BDrunkEarly6

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BDrunkEarly1
SAY @315
++ @316 + BDrunkEarly1a
++ @314 + BDrunkEarly1a
++ @317 + BDrunkEarly1a.1
++ @318 + BDrunkEarly1d
END

IF ~~ THEN BEGIN BDrunkEarly1a
SAY @319
++ @320 + BDrunkEarly1a.1
++ @321 + BDrunkEarly1a.2
++ @322 + BDrunkEarly1a.3
++ @323 + BDrunkEarly1a.4
++ @324 + BDrunkEarly1a.5
END

IF ~~ THEN BEGIN BDrunkEarly1a.1
SAY @325
= @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkEarly1a.2
SAY @327
= @328
= @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkEarly1a.3
SAY @329
= @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkEarly1a.4
SAY @330
= @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkEarly1a.5
SAY @331
= @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkEarly1d
SAY @332
= @333
= @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkEarly2
SAY @334
++ @316 + BDrunkEarly1a
++ @314 + BDrunkEarly1a
++ @317 + BDrunkEarly1a.1
++ @318 + BDrunkEarly1d
END

IF ~~ THEN BEGIN BDrunkEarly3
SAY @335
++ @316 + BDrunkEarly1a
++ @314 + BDrunkEarly1a
++ @317 + BDrunkEarly1a.1
++ @318 + BDrunkEarly1d
END

IF ~~ THEN BEGIN BDrunkEarly4
SAY @336
++ @316 + BDrunkEarly1a
++ @314 + BDrunkEarly1a
++ @317 + BDrunkEarly1a.1
++ @318 + BDrunkEarly1d
END

IF ~~ THEN BEGIN BDrunkEarly5
SAY @337
++ @316 + BDrunkEarly1a
++ @314 + BDrunkEarly1a
++ @317 + BDrunkEarly1a.1
++ @318 + BDrunkEarly1d
END

IF ~~ THEN BEGIN BDrunkEarly6
SAY @338
++ @316 + BDrunkEarly1a
++ @314 + BDrunkEarly1a
++ @317 + BDrunkEarly1a.1
++ @318 + BDrunkEarly1d
END

///* Early Romance Aftermath */
IF ~Global("B!GavinDrunkenEarly","GLOBAL",3)~ THEN BEGIN BEarlyAftermath
SAY @339
++ @340 DO ~SetGlobal("B!GavinDrunkenEarly","GLOBAL",4)~ + BEarlyAftermath1
++ @341 DO ~SetGlobal("B!GavinDrunkenEarly","GLOBAL",4)~ + BEarlyAftermath2
++ @342 DO ~SetGlobal("B!GavinDrunkenEarly","GLOBAL",4)~ + BEarlyAftermath3
++ @343 DO ~SetGlobal("B!GavinDrunkenEarly","GLOBAL",4)~ + BEarlyAftermath4
++ @344 DO ~SetGlobal("B!GavinDrunkenEarly","GLOBAL",4)~ + BEarlyAftermath5
END

IF ~~ THEN BEGIN BEarlyAftermath1
SAY @345
= @346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BEarlyAftermath2
SAY @347
= @346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BEarlyAftermath3
SAY @348
= @346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BEarlyAftermath4
SAY @349
= @346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BEarlyAftermath5
SAY @350
= @346
IF ~~ THEN EXIT
END
END

///* Later relationship */
CHAIN
IF ~Global("B!GavinDrunkenLate","GLOBAL",1)~ THEN ~B!GAVINJ~ BDrunkLate
@351
DO ~SetGlobal("B!GavinDrunkenLate","GLOBAL",2)~
END
++ @352 EXTERN ~B!GAVINJ~ BDrunkLate1
++ @353 EXTERN ~B!GAVINJ~ BDrunkLate2
++ @354 EXTERN ~B!GAVINJ~ BDrunkLate3
++ @355 EXTERN ~B!GAVINJ~ BDrunkLate4
++ @314 EXTERN ~B!GAVINJ~ BDrunkLate5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BDrunkLate1
SAY @356
++ @357 + BDrunkLate6
++ @358 + BDrunkLate7
++ @359 + BDrunkLate8
++ @360 + BDrunkLate9
++ @361 + BDrunkLate10
END

IF ~~ THEN BEGIN BDrunkLate2
SAY @362
++ @357 + BDrunkLate6
++ @358 + BDrunkLate7
++ @359 + BDrunkLate8
++ @360 + BDrunkLate9
++ @361 + BDrunkLate10
END

IF ~~ THEN BEGIN BDrunkLate3
SAY @363
++ @357 + BDrunkLate6
++ @358 + BDrunkLate7
++ @359 + BDrunkLate8
++ @360 + BDrunkLate9
++ @361 + BDrunkLate10
END

IF ~~ THEN BEGIN BDrunkLate4
SAY @364
++ @365 + BDrunkLate11
++ @366 + BDrunkLate12
++ @367 + BDrunkLate13
++ @368 + BDrunkLate14
++ @369 + BDrunkLate10
END

IF ~~ THEN BEGIN BDrunkLate5
SAY @370
++ @357 + BDrunkLate6
++ @358 + BDrunkLate7
++ @359 + BDrunkLate8
++ @360 + BDrunkLate9
++ @361 + BDrunkLate10
END

IF ~~ THEN BEGIN BDrunkLate6
SAY @371
++ @366 + BDrunkLate12
++ @372 + BDrunkLate13
++ @373 + BDrunkLate15
++ @374 + BDrunkLate10
END

IF ~~ THEN BEGIN BDrunkLate7
SAY @375
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate8
SAY @376
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate9
SAY @377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate10
SAY @378
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate11
SAY @379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate12
SAY @380
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate13
SAY @381
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate14
SAY @382
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLate15
SAY @383
IF ~~ THEN EXIT
END
END

///* Later relationship aftermath */
CHAIN
IF ~Global("B!GavinDrunkenLate","GLOBAL",3)~ THEN ~B!GAVINJ~ BDrunkLateAfter
@339
DO ~SetGlobal("B!GavinDrunkenLate","GLOBAL",4)~
END
++ @384 EXTERN ~B!GAVINJ~ BDrunkLateAfter1
++ @385 EXTERN ~B!GAVINJ~ BDrunkLateAfter2
++ @386 EXTERN ~B!GAVINJ~ BDrunkLateAfter3
++ @387 EXTERN ~B!GAVINJ~ BDrunkLateAfter4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BDrunkLateAfter1
SAY @388
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLateAfter2
SAY @389
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLateAfter3
SAY @390
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkLateAfter4
SAY @391
IF ~~ THEN EXIT
END
END

///* Committed drunk */
CHAIN
IF ~Global("B!GavinDrunkenCommit","GLOBAL",1)~ THEN ~B!GAVINJ~ BDrunkCommit
@392
DO ~SetGlobal("B!GavinDrunkenCommit","GLOBAL",2)~
= @393
END
++ @394 EXTERN ~B!GAVINJ~ BDrunkCommit1
++ @395 EXTERN ~B!GAVINJ~ BDrunkCommit2
++ @396 EXTERN ~B!GAVINJ~ BDrunkCommit2
++ @397 EXTERN ~B!GAVINJ~ BDrunkCommit3
++ @398 EXTERN ~B!GAVINJ~ BDrunkCommit4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BDrunkCommit1
SAY @399
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkCommit2
SAY @400
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkCommit3
SAY @401
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkCommit4
SAY @402
IF ~~ THEN EXIT
END
END

///* Committed drunk aftermath */
CHAIN
IF ~Global("B!GavinDrunkenCommit","GLOBAL",3)~ THEN ~B!GAVINJ~ BDrunkCommitAfter
@403
DO ~SetGlobal("B!GavinDrunkenCommit","GLOBAL",4)~
END
++ @404 EXTERN ~B!GAVINJ~ BDrunkCommitAfter1
++ @405 EXTERN ~B!GAVINJ~ BDrunkCommitAfter2
++ @406 EXTERN ~B!GAVINJ~ BDrunkCommitAfter3
++ @407 EXTERN ~B!GAVINJ~ BDrunkCommitAfter4
++ @408 EXTERN ~B!GAVINJ~ BDrunkCommitAfter5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BDrunkCommitAfter1
SAY @409
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkCommitAfter2
SAY @410
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkCommitAfter3
SAY @411
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkCommitAfter4
SAY @412
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkCommitAfter5
SAY @413
IF ~~ THEN EXIT
END

END

///* Drunk sex */
CHAIN
IF ~Global("B!GavinDrunkenSex","GLOBAL",1)~ THEN ~B!GAVINJ~ BDrunkSex
@414
DO ~SetGlobal("B!GavinDrunkenSex","GLOBAL",2)~
= @415
= @416
END
++ @417 EXTERN ~B!GAVINJ~ BDrunkSex1
++ @418 DO ~SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BDrunkSex2
++ @419 DO ~SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BDrunkSex3
++ @420 DO ~SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BDrunkSex4
++ @421 DO ~SetGlobal("B!PCWantsSex","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BDrunkSex4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BDrunkSex1
SAY @422
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkSex2
SAY @423
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkSex3
SAY @424
= @425
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkSex4
SAY @426
IF ~~ THEN EXIT
END
END

///* Drunk sex aftermath */
CHAIN
IF ~Global("B!GavinDrunkenSex","GLOBAL",3)~ THEN ~B!GAVINJ~ BDrunkSexAfter
@427
DO ~SetGlobal("B!GavinDrunkenSex","GLOBAL",4)~
END
++ @428 EXTERN ~B!GAVINJ~ BDrunkSexAfter1
++ @429 EXTERN ~B!GAVINJ~ BDrunkSexAfter2
++ @430 EXTERN ~B!GAVINJ~ BDrunkSexAfter3
++ @431 EXTERN ~B!GAVINJ~ BDrunkSexAfter4
++ @432 EXTERN ~B!GAVINJ~ BDrunkSexAfter5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BDrunkSexAfter1
SAY @433
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkSexAfter2
SAY @434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkSexAfter3
SAY @435
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkSexAfter4
SAY @436
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BDrunkSexAfter5
SAY @437
IF ~~ THEN EXIT
END

END

///* Picking up Dynaheir */
CHAIN
IF ~Global("B!DrunkDynaheir","GLOBAL",1)~ THEN ~B!GAVINJ~ BDyDrunk
@438
DO ~SetGlobal("B!DrunkDynaheir","GLOBAL",2)~
== ~%DYNAHEIR_JOINED%~ @439
== ~B!GAVINJ~ @440
END
++ @441 EXTERN ~B!GAVINJ~ BDyDrunk.1
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @442 EXTERN ~%MINSC_JOINED%~ BDyDrunk.2
+ ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ + @442 EXTERN ~%DYNAHEIR_JOINED%~ BDyDrunk.3
++ @443 EXTERN ~B!GAVINJ~ BDyDrunk.4
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @444 EXTERN ~%MINSC_JOINED%~ BDyDrunk.2
+ ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ + @444 EXTERN ~%DYNAHEIR_JOINED%~ BDyDrunk.3

CHAIN ~B!GAVINJ~ BDyDrunk.1
@445
== ~%DYNAHEIR_JOINED%~ @446
== ~B!GAVINJ~ @447
== ~%DYNAHEIR_JOINED%~ @448
END
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~B!GAVINJ~ BDyDrunk.1A
IF ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~B!GAVINJ~ BDyDrunk.1B

CHAIN ~B!GAVINJ~ BDyDrunk.1A
@449
END
++ @450 EXTERN ~B!GAVINJ~ BDyDrunk.5
++ @451 EXIT

CHAIN ~B!GAVINJ~ BDyDrunk.1B
@452 
EXIT

CHAIN ~%MINSC_JOINED%~ BDyDrunk.2
@453
== ~B!GAVINJ~ @454
== ~%DYNAHEIR_JOINED%~ @446
== ~B!GAVINJ~ @447
== ~%DYNAHEIR_JOINED%~ @448
== ~B!GAVINJ~ @455
EXIT

CHAIN ~%DYNAHEIR_JOINED%~ BDyDrunk.3
@456
== ~B!GAVINJ~ @457
== ~%DYNAHEIR_JOINED%~ @446
== ~B!GAVINJ~ @447
== ~%DYNAHEIR_JOINED%~ @448
== ~B!GAVINJ~ @452
EXIT

CHAIN ~B!GAVINJ~ BDyDrunk.4
@458
== ~%DYNAHEIR_JOINED%~ @446
== ~B!GAVINJ~ @447
== ~%DYNAHEIR_JOINED%~ @448
END
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~B!GAVINJ~ BDyDrunk.1A
IF ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~B!GAVINJ~ BDyDrunk.1B

CHAIN ~B!GAVINJ~ BDyDrunk.5
@459
EXIT

///* Picking up Viconia */
CHAIN
IF ~Global("B!DrunkViconia","GLOBAL",1)~ THEN ~B!GAVINJ~ BViDrunk
@460
DO ~SetGlobal("B!DrunkViconia","GLOBAL",2)~
== ~%VICONIA_JOINED%~ @461
== ~B!GAVINJ~ @462
== ~%VICONIA_JOINED%~ @463
== ~B!GAVINJ~ @464
END
++ @465 EXTERN ~B!GAVINJ~ BViDrunk.1
++ @466 EXTERN ~B!GAVINJ~ BViDrunk.2
++ @467 EXTERN ~%VICONIA_JOINED%~ BViDrunk.3
++ @468 EXTERN ~%VICONIA_JOINED%~ BViDrunk.4
++ @469 EXTERN ~B!GAVINJ~ BViDrunk.5

CHAIN ~B!GAVINJ~ BViDrunk.1
@470
END
++ @471 EXTERN ~B!GAVINJ~ BViDrunk.6
++ @472 EXTERN ~B!GAVINJ~ BViDrunk.7
++ @473 EXTERN ~B!GAVINJ~ BViDrunk.6
++ @474 EXTERN ~B!GAVINJ~ BViDrunk.8

CHAIN ~B!GAVINJ~ BViDrunk.2
@475
= @476
= @477
== ~%VICONIA_JOINED%~ @478
== ~B!GAVINJ~ @479
END
++ @480 EXTERN ~B!GAVINJ~ BViDrunk.9
+ ~Gender(Player1,FEMALE)~ + @481 EXTERN ~B!GAVINJ~ BViDrunk.10
++ @482 EXTERN ~B!GAVINJ~ BViDrunk.11
++ @483 EXTERN ~B!GAVINJ~ BViDrunk.12
++ @484 EXTERN ~B!GAVINJ~ BViDrunk.13

CHAIN ~%VICONIA_JOINED%~ BViDrunk.3
@485
== ~B!GAVINJ~ @486
== ~%VICONIA_JOINED%~ @487
== ~B!GAVINJ~ @488
= @477
== ~%VICONIA_JOINED%~ @478
== ~B!GAVINJ~ @479
END
++ @480 EXTERN ~B!GAVINJ~ BViDrunk.9
+ ~Gender(Player1,FEMALE)~ + @481 EXTERN ~B!GAVINJ~ BViDrunk.10
++ @482 EXTERN ~B!GAVINJ~ BViDrunk.11
++ @483 EXTERN ~B!GAVINJ~ BViDrunk.12
++ @484 EXTERN ~B!GAVINJ~ BViDrunk.13

CHAIN ~%VICONIA_JOINED%~ BViDrunk.4
@489
== ~B!GAVINJ~ @486
== ~%VICONIA_JOINED%~ @487
== ~B!GAVINJ~ @488
= @477
== ~%VICONIA_JOINED%~ @478
== ~B!GAVINJ~ @479
END
++ @480 EXTERN ~B!GAVINJ~ BViDrunk.9
+ ~Gender(Player1,FEMALE)~ + @481 EXTERN ~B!GAVINJ~ BViDrunk.10
++ @482 EXTERN ~B!GAVINJ~ BViDrunk.11
++ @483 EXTERN ~B!GAVINJ~ BViDrunk.12
++ @484 EXTERN ~B!GAVINJ~ BViDrunk.13

CHAIN ~B!GAVINJ~ BViDrunk.5
@490
EXIT

CHAIN ~B!GAVINJ~ BViDrunk.6
@476
= @477
== ~%VICONIA_JOINED%~ @478
== ~B!GAVINJ~ @479
END
++ @480 EXTERN ~B!GAVINJ~ BViDrunk.9
+ ~Gender(Player1,FEMALE)~ + @481 EXTERN ~B!GAVINJ~ BViDrunk.10
++ @482 EXTERN ~B!GAVINJ~ BViDrunk.11
++ @483 EXTERN ~B!GAVINJ~ BViDrunk.12
++ @484 EXTERN ~B!GAVINJ~ BViDrunk.13

CHAIN ~B!GAVINJ~ BViDrunk.7
@491
EXIT

CHAIN ~B!GAVINJ~ BViDrunk.8
@492
= @476
= @477
== ~%VICONIA_JOINED%~ @478
== ~B!GAVINJ~ @479
END
++ @480 EXTERN ~B!GAVINJ~ BViDrunk.9
+ ~Gender(Player1,FEMALE)~ + @481 EXTERN ~B!GAVINJ~ BViDrunk.10
++ @482 EXTERN ~B!GAVINJ~ BViDrunk.11
++ @483 EXTERN ~B!GAVINJ~ BViDrunk.12
++ @484 EXTERN ~B!GAVINJ~ BViDrunk.13

CHAIN ~B!GAVINJ~ BViDrunk.9
@493
EXIT

CHAIN ~B!GAVINJ~ BViDrunk.10
@494
EXIT

CHAIN ~B!GAVINJ~ BViDrunk.11
@495
EXIT

CHAIN ~B!GAVINJ~ BViDrunk.12
@496
EXIT

CHAIN ~B!GAVINJ~ BViDrunk.13
@497
EXIT

/* FRIENDTALKS */
/* Friendship warnings and breaks */

///* Offense warning 1 */
CHAIN
IF WEIGHT #-2
~Global("B!GavinOffenseWarning","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinOffended1
@498 DO ~SetGlobal("B!GavinOffenseWarning","GLOBAL",2)~
EXIT

///* Offense warning 2 */
CHAIN
IF WEIGHT #-2
~Global("B!GavinOffenseWarning","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinOffended2
@499 DO ~SetGlobal("B!GavinOffenseWarning","GLOBAL",4)~
EXIT



///* Offense break */
CHAIN
IF WEIGHT #-2
~Global("B!GavinFriendMustEnd","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinFriendshipBreak
@500 DO ~SetGlobal("B!GavinFriendMustEnd","GLOBAL",2)~
EXIT

/* Friendtalks */
///* Friendtalk 1 - Gavin, cleric of Lathander */
CHAIN
IF WEIGHT #-2
~Global("B!GavinFriendtalk","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinFriendtalk1
@501
DO ~SetGlobal("B!GavinFriendtalk","GLOBAL",3) SetGlobal("B!GavinFriendtalkCheck","GLOBAL",0) RealSetGlobalTimer("B!GavinFriendTimer","GLOBAL",7200)~
END
++ @502 EXTERN ~B!GAVINJ~ BGavinFriendtalk1.1
++ @503 DO ~SetGlobal("B!GavinFriend","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk1.2

CHAIN ~B!GAVINJ~ BGavinFriendtalk1.2
@504
EXIT

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavinFriendtalk1.1
SAY @505
++ @506 + BGavinFriendtalk1.1a
++ @507 + BGavinFriendtalk1.1b
++ @508 + BGavinFriendtalk1.1c
++ @509 + BGavinFriendtalk1.1d
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1a
SAY @510
= @511
= @512
++ @513 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ + BGavinFriendtalk1.1a1
++ @514 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavinFriendtalk1.1a2
++ @515 + BGavinFriendtalk1.1a3
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1a1
SAY @516
++ @517 + BGavinFriendtalk1.1a1a
++ @518 + BGavinFriendtalk1.1a1b
++ @519 + BGavinFriendtalk1.1a1c
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1a1a
SAY @520
= @521
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1a1b
SAY @522
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1a1c
SAY @523
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1a2
SAY @524
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1a3
SAY @525
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1b
SAY @526
++ @527 + BGavinFriendtalk1.1b1
++ @528 + BGavinFriendtalk1.1b2
++ @529 + BGavinFriendtalk1.1b3
++ @530 + BGavinFriendtalk1.1b4
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1b1
SAY @531
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1b2
SAY @532
= @533
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1b3
SAY @534
= @535
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1b4
SAY @536
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1c
SAY @537
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinFriendtalk1.1d
SAY @538
IF ~~ THEN EXIT
END

END //APPEND

///* Friendtalk 2 - why is pc on the road */
CHAIN
IF WEIGHT #-2
~Global("B!GavinFriendtalk","GLOBAL",4)~ THEN ~B!GAVINJ~ BGavinFriendtalk2
@539
DO ~SetGlobal("B!GavinFriendtalk","GLOBAL",5) SetGlobal("B!GavinFriendtalkCheck","GLOBAL",0) RealSetGlobalTimer("B!GavinFriendTimer","GLOBAL",7200)~
END
++ @540 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1
++ @541 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.2
+ ~Alignment(Player1,MASK_GOOD)~ + @542 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.3
++ @543 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.4
++ @544 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.5

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1
@545
END
++ @546 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1a
++ @547 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b
++ @548 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1c
++ @549 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1d
++ @550EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1e
+ ~!Class(Player1,CLERIC_ALL)~ + @551 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1f
++ @552 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1f

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1a //pursuing Gorion's murderers - didn't have to live with him
@553
END
++ @554 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1a1
++ @555 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1a2

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1a1
@556
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1a2
@557
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1b //pursuing Gorion's murderers - just one enemy
@558
END
++ @559 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b1
++ @560 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b2
++ @561 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b1
++ @562 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b3

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1b1
@563
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1b2
@564
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1b3
@565
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1c //pursuing Gorion's murderers - bound to have a few enemies
@566
END
++ @567 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1c1
++ @568 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1c2
++ @569 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1c3
++ @562 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b3

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1c1
@570
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1c2
@571
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1c3
@572
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1d  //pursuing Gorion's murderers - too soon to talk
@573
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1e //pursuing Gorion's murderers - after <CHARNAME> instead of Gorion
@574
END
++ @575 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1e1
++ @576 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1e2
++ @577 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1e3
++ @562 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b3

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1e1
@578
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1e2
@579
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1e3
@580
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1f // pursuing Gorion's murderer - blowoff
@581
END
++ @582 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1f1
++ @583 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinFriend","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1f2

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1f1
@584
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.1f2
@536
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.2 
@585
END
++ @586 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.2a
++ @587 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1
+ ~Alignment(Player1,MASK_GOOD)~ + @542 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.3
++ @562 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b3

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.2a
@588
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.3
@589
END
++ @590 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1
++ @591 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b2
++ @592 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.3a
++ @562 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b3

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.3a
@593
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.4
@594
END
++ @595 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1
++ @596 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b2
++ @592 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.3a
++ @597 EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1b3

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.5
@598
END
++ @599 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.5a
++ @583 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinFriend","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk2.1f2

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.5a
@600
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk2.5b
@536
EXIT

///* Friendtalk 3 - Gavin on religion */
CHAIN
IF WEIGHT #-2
~Global("B!GavinFriendtalk","GLOBAL",6)~ THEN ~B!GAVINJ~ BGavinFriendtalk3
@601
DO ~SetGlobal("B!GavinFriendtalk","GLOBAL",7) SetGlobal("B!GavinFriendtalkCheck","GLOBAL",0) RealSetGlobalTimer("B!GavinFriendTimer","GLOBAL",7200)~

END
+ ~Class(Player1,CLERIC_ALL) Alignment(Player1,MASK_GOOD)~ + @602 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1
+ ~Class(Player1,CLERIC_ALL) Alignment(Player1,MASK_GENEUTRAL)~ + @603 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.2
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @604 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.3
++ @605 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.4
++ @606 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.5
++ @607 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.2
++ @608 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.7
++ @609 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.8
++ @610 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1
++ @611 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.9
++ @612 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.10
++ @613 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.11
++ @614 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.12
++ @615 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.13
++ @616 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.14
++ @617 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.10
++ @618 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.14
++ @619 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.15
++ @620 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.16
++ @621 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.6
++ @622 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.17
+ ~Race(Player1,DWARF)~ + @623 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.18
+ ~Race(Player1,DWARF)~ + @624 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.15
+ ~Race(Player1,DWARF)~ + @625 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.5
+ ~Race(Player1,DWARF)~ + @626 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.19
+ ~Race(Player1,DWARF)~ + @627 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.20
+ ~Race(Player1,DWARF)~ + @628 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.5
+ ~Race(Player1,DWARF)~ + @629 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.21
+ ~Race(Player1,DWARF)~ + @630 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.16
+ ~Race(Player1,DWARF)~ + @631 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23
+ ~Race(Player1,ELF)~ + @632 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.22
+ ~Race(Player1,ELF)~ + @633 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.14
+ ~Race(Player1,ELF)~ + @634 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.10
+ ~Race(Player1,ELF)~ + @635 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23
+ ~Race(Player1,GNOME)~ + @636 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.10
+ ~Race(Player1,GNOME)~ + @637 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.11
+ ~Race(Player1,GNOME)~ + @638 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.5
+ ~Race(Player1,GNOME)~ + @639 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.20
+ ~Race(Player1,GNOME)~ + @640 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23
+ ~Race(Player1,HALFLING)~ + @641 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.11
+ ~Race(Player1,HALFLING)~ + @642 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.11
+ ~Race(Player1,HALFLING)~ + @643 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.18
+ ~Race(Player1,HALFLING)~ + @644 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.14
+ ~Race(Player1,HALFLING)~ + @645 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.20
+ ~Race(Player1,HALFLING)~ + @646 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23
++ @647 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.24
++ @648 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @649 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.25
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @650 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.26

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.1      //Lathander, too
@651
= @652
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.1a
@656
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.1b
@657
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.1c
@658
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.2      //Helm
@659
= @660
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.3  //Cleric, not Lathander
@661
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.4      //Chauntea
@663
= @664
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.5      //Gond, Dugmaren Brightmantle, Moradin, Flandal Steelskin
@665
= @666
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.6      //Tyr
@667
= @666
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.7      //Ilmater
@668
= @669
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.8      //Kelemvor
@670
= @671
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.8a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.8b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.8c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.8a
@672
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.8b
@673
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.8c
@656
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.9      //Lliira
@674
= @662
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.10      //Mielikki, Silvanus, Rillifane Rallathil, Baervan Wildwanderer, 
@675
= @676
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.11      //Mystra, Baravar Cloakshadow, Arvoreen, Brandobaris
@677
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.12      //Oghma
@678 DO ~SetGlobal("B!GavinRingStory","GLOBAL",1)~
= @679
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.13      //Selune
@680
= @662
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.14      //Sharess, Sune, Hanali Celanil, Sheela Peryroyl
@681
= @682
END 
++ @683 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.14a
++ @684 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.14b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.14c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.14a
@685
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.14b
@686
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.14c
@687
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.15      //Tempus, Clangeddin Silverbeard, 
@688
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.16      //Tymora, Vergadain 
@689
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.17      //Umberlee
@690
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.18      //Berronar Truesilver, Cyrrollalee
@691
= @662
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.19      //Dumathoin
@692
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.20     //Gorm Gulthyn, Garl Glittergold, Yondalla
@693
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.21    //Sharindlar
@694
= @662
END 
++ @653 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.22    //Corellon Larethian
@695
= @662
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.23    //the Morndinsamman, the Seladarine, the Lords of the Golden Hills, Yondalla’s Children, all the gods
@696
= @697
END 
++ @698 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23a
++ @699 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.23c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.23a
@700
EXIT

CHAIN  ~B!GAVINJ~ BGavinFriendtalk3.23b
@701
EXIT

CHAIN  ~B!GAVINJ~ BGavinFriendtalk3.23c
@702
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.24    //different, unspecified god
@703
END 
++ @653 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1a
++ @654 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1b
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)~ + @655 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.25   //indifferent toward religion
@704
END 
++ @705 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk3.25a
++ @706 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.25b
++ @707 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.25c
++ @708 EXTERN ~B!GAVINJ~ BGavinFriendtalk3.25c

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.25a
@709
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.25b
@710
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.25c
@711
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.25d
@712
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk3.26   //antagonistic toward religion
@713
EXIT

///* Friendtalk 4 - Lathander and racial harmony */
CHAIN
IF WEIGHT #-2
~Global("B!GavinFriendtalk","GLOBAL",8)~ THEN ~B!GAVINJ~ BGavinFriendtalk4
@714
DO ~SetGlobal("B!GavinFriendtalk","GLOBAL",9) SetGlobal("B!GavinFriendtalkCheck","GLOBAL",0) RealSetGlobalTimer("B!GavinFriendTimer","GLOBAL",7200)~
END
++ @715 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1
++ @716 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.2
++ @717 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinFriend","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk4.3

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.3   //wants nothing to do with Gavin
@718
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.2   //not a good time
@719
EXIT

/* shoot */
CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1   
@720
END 
++ @721 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1a
++ @722 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1b
++ @723 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1c
++ @724 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d
++ @725 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1e
++ @726 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1f

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1f 
@727
EXIT

/* don't want to talk about it */
CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1e  
@728
EXIT

/* possible and desirable */
CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d 
@729
END 
++ @730 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1a
++ @731 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b
++ @732 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1c
++ @733 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1d
++ @734 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1e

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1a  //possible and desirable - doesn't want to talk about it
@735
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b //possible and desirable - people should do as they're told
@736
END 
++ @737 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b1
++ @738 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b2
++ @739 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b3
++ @740 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b4
++ @741 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b5

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b1 
@742
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b2 
@743
END
++ @744 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",2)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b2a
++ @745 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1b2b

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b2a
@746
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b2b
@747
EXIT


CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b3
@748
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b4
@749
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1b5
@750
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1c  //possible and desirable - long road to understanding
@751
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1d  //possible and desirable - no easy answer
@752
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1d1e  //head might explode
@753
EXIT

/* neither possible nor desirable */
CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1c 
@754
END 
++ @730 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1c1a
++ @755 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1c1b
++ @756 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1c1c
++ @734 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1e

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1c1a  //neither possible nor desirable - doesn't want to talk about it
@735
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1c1b  //neither possible nor desirable - not gonna happen
@757
END
++ @758 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1b1a
++ @185 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1b1b
++ @759 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1b1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1b1a
@760
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1b1b  
@761
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1b1c  
@762
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1c1c //neither possible nor desirable - give up identity
@763
= @764
EXIT

/* desirable but not possible */
CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1b
@765
END 
++ @766 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1b1
++ @767 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1b2
++ @768 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1b3
++ @734 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1e

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1b1  
@769
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1b2
@770
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1b3
@771
EXIT

/* Possible but not desirable */
CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1a 
@754
END 
++ @772 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1a1
+ ~!Race(Player1,HALF_ELF) !Race(Player1,HALFORC)~ + @773 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1a2
++ @774 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1c1c
++ @734 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1d1e

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1a1
@775
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1a2
@776
END
++ @777 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1a2a
++ @778 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1a2b
++ @779 EXTERN ~B!GAVINJ~ BGavinFriendtalk4.1a2c

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1a2a
@780
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1a2b
@781
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk4.1a2c
@782
EXIT

///* Friendtalk 5 - Gavin's brown thumb */
CHAIN
IF WEIGHT #-2
~Global("B!GavinFriendtalk","GLOBAL",10)~ THEN ~B!GAVINJ~ BGavinFriendtalk5
@783
DO ~SetGlobal("B!GavinFriendtalk","GLOBAL",11) SetGlobal("B!GavinFriendtalkCheck","GLOBAL",0) RealSetGlobalTimer("B!GavinFriendTimer","GLOBAL",7200)~
END
++ @784 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.1
++ @785 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.1a
++ @786 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.3
++ @787 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.4

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.1
@788
END
++ @789 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.1a
++ @790 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.1b
++ @791 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.1c

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.1a
@792
= @793
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.1b
@794
= @795
= @793
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.1c
@796
= @795
= @793
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.3
@797
= @795
= @793
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.4
@798
END
++ @799 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.4a
++ @800 EXTERN ~B!GAVINJ~ BGavinFriendtalk5.4b
++ @801 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk5.4c

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.4a
@802
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.4b
@803
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk5.4c
@804
EXIT

///* Friendtalk 6 - What will pc do when quest is over */
CHAIN
IF WEIGHT #-2
~Global("B!GavinFriendtalk","GLOBAL",12)~ THEN ~B!GAVINJ~ BGavinFriendtalk6
@805 DO ~SetGlobal("B!GavinFriendtalk","GLOBAL",13) SetGlobal("B!GavinFriendtalkCheck","GLOBAL",0)~
END
++ @806 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.1
++ @807 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2c
++ @808 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.3
+ ~OR(2) Global("B!GavinRomanceActive","GLOBAL",0) Global("B!GavinRomanceActive","GLOBAL",3) ~ + @809 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.4
+ ~GlobalGT("B!GavinRomanceActive","GLOBAL",0) !Global("B!GavinRomanceActive","GLOBAL",3)~ + @809 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.5

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.1
@810
END
++ @811 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2a
++ @812 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2b
++ @813 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2c1
++ @814 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2d

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.2a
@815
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.2b
@816
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.2c
@817
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.2c1
@818
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.3
@819
END
++ @820 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2a
++ @821 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2b
++ @813 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2c
++ @814 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.2d

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.4
@822
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.5
@823
END
++ @824 EXTERN ~B!GAVINJ~ BGavinFriendtalk6.5a
++ @825 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinFriendtalk6.5b

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.2d
@826
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.5a
@827
EXIT

CHAIN ~B!GAVINJ~ BGavinFriendtalk6.5b
@828
EXIT

///* Baldur's Gate */
CHAIN
IF WEIGHT #-2
~Global("B!GavinBaldurTalk","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavinBaldursGate
@829 DO ~SetGlobal("B!GavinBaldurTalk","GLOBAL",3)~
END
++ @830 EXTERN ~B!GAVINJ~ BGavinBaldursGate1
++ @831 EXTERN ~B!GAVINJ~ BGavinBaldursGate2
++ @832 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1
++ @833 EXTERN ~B!GAVINJ~ BGavinBaldursGate4


CHAIN ~B!GAVINJ~ BGavinBaldursGate1
@834
= @835
END
++ @836 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1
++ @837 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinBaldursGate1.2
++ @838 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.3
++ @839  EXTERN ~B!GAVINJ~ BGavinBaldursGate1.4

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.1
@840
END
++ @841 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1a
++ @842 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1b
++ @843 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1c
++ @844 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1a
++ @845 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1d
++ @846 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1e

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.1a
@847
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.1b
@848
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.1c
@849
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.1d
@850
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.1e
@851
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.2
@852
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.3
@853
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate1.4
@854
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate2
@855
EXIT

CHAIN ~B!GAVINJ~ BGavinBaldursGate4
@856
END
++ @836 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.1
++ @837 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinBaldursGate1.2
++ @838 EXTERN ~B!GAVINJ~ BGavinBaldursGate1.3
++ @839  EXTERN ~B!GAVINJ~ BGavinBaldursGate1.4

///* Entrance to the temple of Bhaal, final peptalk */
CHAIN
IF WEIGHT #-2
~Global("B!GavinLastWords","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinShowdown
@857 DO ~SetGlobal("B!GavinLastWords","GLOBAL",2)~
= @858
EXIT

/* CHAPTER TALKS */

APPEND ~B!GAVINJ~

///* Chapter 2 - What to do about the iron shortage */
IF WEIGHT #-1 ~Global("B!GavinChapter2","GLOBAL",2)~ THEN BEGIN BGavinChapter2
SAY @859
++ @860 DO ~SetGlobal("B!GavinChapter2","GLOBAL",3)~ + BGavinChapter2.1
++ @861 DO ~SetGlobal("B!GavinChapter2","GLOBAL",3)~ + BGavinChapter2.2
++ @862 DO ~SetGlobal("B!GavinChapter2","GLOBAL",3)~ + BGavinChapter2.3
++ @863 DO ~SetGlobal("B!GavinChapter2","GLOBAL",3)~ + BGavinChapter2.3
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @864 DO ~SetGlobal("B!GavinChapter2","GLOBAL",3)~ + BGavinChapter2.4
END

IF ~~ THEN BEGIN BGavinChapter2.1
SAY @865
++ @866 + BGavinChapter2.1a
++ @867 + BGavinChapter2.1b
++ @868 + BGavinChapter2.1c
++ @869 + BGavinChapter2.1d
END

IF ~~ THEN BEGIN BGavinChapter2.1a
SAY @870
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter2.1b
SAY @871
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter2.1c
SAY @872
++ @873 + BGavinChapter2.1a
++ @867 + BGavinChapter2.1b
++ @869 + BGavinChapter2.1d
END

IF ~~ THEN BEGIN BGavinChapter2.1d
SAY @874
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN BGavinChapter2.2
SAY @870
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter2.3
SAY @871
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter2.4
SAY @875
++ @873 + BGavinChapter2.1a
++ @867 + BGavinChapter2.1b
++ @869 + BGavinChapter2.1d
END

///* Chapter 3 - Mines are clear, now what? */
IF WEIGHT #-1 ~Global("B!GavinChapter3","GLOBAL",2)~ THEN BEGIN BGavinChapter3
SAY @876
+ ~OR(6) CheckStatGT(Player1,4,FATIGUE) CheckStatGT(Player2,4,FATIGUE) CheckStatGT(Player3,4,FATIGUE) CheckStatGT(Player4,4,FATIGUE) CheckStatGT(Player5,4,FATIGUE) CheckStatGT(Player6,4,FATIGUE)~ + @877 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.1a
+ ~!CheckStatGT(Player1,4,FATIGUE) !CheckStatGT(Player2,4,FATIGUE) !CheckStatGT(Player3,4,FATIGUE) !CheckStatGT(Player4,4,FATIGUE) !CheckStatGT(Player5,4,FATIGUE) !CheckStatGT(Player6,4,FATIGUE)~ + @877 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.1a
+ ~OR(2) GlobalGT("B!GavinLove","GLOBAL",5) ReputationGT(Player1,14)~ + @878 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.2
+ ~!GlobalGT("B!GavinLove","GLOBAL",5) !ReputationGT(Player1,14)~ + @878 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.3
++ @879 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.4
+ ~GlobalGT("B!GavinLove","GLOBAL",3)~ + @880 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.5
+ ~!GlobalGT("B!GavinLove","GLOBAL",3)~ + @880 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.6
+ ~HappinessLT("B!GAVIN",0)~ + @881 DO ~SetGlobal("B!GavinChapter3","GLOBAL",3)~ + BGavinChapter3.7
END

IF ~~ THEN BEGIN BGavinChapter3.1a
SAY @882
+ ~OR(2) GlobalGT("B!GavinLove","GLOBAL",5) ReputationGT(Player1,14)~ + @878 + BGavinChapter3.2
+ ~!GlobalGT("B!GavinLove","GLOBAL",5) !ReputationGT(Player1,14)~ + @878 + BGavinChapter3.3
++ @879 + BGavinChapter3.4
+ ~GlobalGT("B!GavinLove","GLOBAL",3)~ + @880 + BGavinChapter3.5
+ ~!GlobalGT("B!GavinLove","GLOBAL",3)~ + @880 + BGavinChapter3.6
+ ~HappinessLT("B!GAVIN",0)~ + @881 + BGavinChapter3.7
END

IF ~~ THEN BEGIN BGavinChapter3.1b
SAY @883
+ ~OR(2) GlobalGT("B!GavinLove","GLOBAL",5) ReputationGT(Player1,14)~ + @878 + BGavinChapter3.2
+ ~!GlobalGT("B!GavinLove","GLOBAL",5) !ReputationGT(Player1,14)~ + @878 + BGavinChapter3.3
++ @879 + BGavinChapter3.4
+ ~GlobalGT("B!GavinLove","GLOBAL",3)~ + @880 + BGavinChapter3.5
+ ~!GlobalGT("B!GavinLove","GLOBAL",3)~ + @880 + BGavinChapter3.6
+ ~HappinessLT("B!GAVIN",0)~ + @881 + BGavinChapter3.7
END

IF ~~ THEN BEGIN BGavinChapter3.2
SAY @884
++ @885 + BGavinChapter3.2a
++ @886 + BGavinChapter3.2b
++ @887 + BGavinChapter3.2c
++ @888 + BGavinChapter3.2d
END

IF ~~ THEN BEGIN BGavinChapter3.2a
SAY @889
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.2b
SAY @890
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.2c
SAY @891
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.2d
SAY @892
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.3
SAY @893
++ @885 + BGavinChapter3.2a
++ @886 + BGavinChapter3.2b
++ @887 + BGavinChapter3.2c
++ @888 + BGavinChapter3.2d
END

IF ~~ THEN BEGIN BGavinChapter3.4
SAY @894
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.5
SAY @895
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.6
SAY @896
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.7
SAY @897
++ @898 + BGavinChapter3.7a
++ @899 + BGavinChapter3.7b
END

IF ~~ THEN BEGIN BGavinChapter3.7a
SAY @900
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter3.7b
SAY @901
IF ~~ THEN DO ~LeaveParty() SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

///* Chapter 4 - powerless in the face of human suffering */
IF WEIGHT #-1 ~Global("B!GavinChapter4","GLOBAL",2)~ THEN BEGIN BGavinChapter4
SAY @902
+ ~ReputationGT(Player1,14)~ + @903 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.1a
+ ~ReputationLT(Player1,15)~ + @903 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.1b
+ ~ReputationGT(Player1,14)~ + @904 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.2a
+ ~ReputationLT(Player1,15)~ + @904 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.2b
++ @905 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.3
+ ~Gender(Player1,MALE)~ + @906 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.4
+ ~Gender(Player1,FEMALE)~ + @906 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.5
+ ~GlobalGT("B!GavinLove","GLOBAL",5)~ + @907 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.6
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @907 DO ~SetGlobal("B!GavinChapter4","GLOBAL",3)~ + BGavinChapter4.7
END

IF ~~ THEN BEGIN BGavinChapter4.1a
SAY @908
++ @909 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinChapter4.1a1
++ @910 + BGavinChapter4.1a2
END

IF ~~ THEN BEGIN BGavinChapter4.1a1
SAY @911
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter4.1a2
SAY @912
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter4.1b
SAY @913
++ @909 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinChapter4.1b1
++ @910 + BGavinChapter4.1b2
END

IF ~~ THEN BEGIN BGavinChapter4.1b1
SAY @914
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter4.1b2
SAY @915
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinChapter4.2a
SAY @916
++ @909 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinChapter4.1a1
++ @910 + BGavinChapter4.1a2
END

IF ~~ THEN BEGIN BGavinChapter4.2b
SAY @917
++ @909 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinChapter4.1b1
++ @910 + BGavinChapter4.1b2
END

IF ~~ THEN BEGIN BGavinChapter4.3
SAY @918
++ @909 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinChapter4.1b1
++ @910 + BGavinChapter4.1b2
END

IF ~~ THEN BEGIN BGavinChapter4.4
SAY @919
= @920
++ @909 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinChapter4.1b1
++ @910 + BGavinChapter4.1b2
END

IF ~~ THEN BEGIN BGavinChapter4.5
SAY @921
= @920
++ @909 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavinChapter4.1b1
++ @910 + BGavinChapter4.1b2
END

IF ~~ THEN BEGIN BGavinChapter4.6
SAY @922
++ @909 + BGavinChapter4.1b1
++ @910 + BGavinChapter4.1b2
END

IF ~~ THEN BEGIN BGavinChapter4.7
SAY @923
IF ~~ THEN EXIT
END

///* Chapter 5 - reaction to Davaeorn's death */
IF WEIGHT #-1 ~Global("B!GavinChapter5","GLOBAL",2)~ THEN BEGIN BGavChap5
SAY @924
++ @925 DO ~SetGlobal("B!GavinChapter5","GLOBAL",3)~ + BGavChap5.1
++ @926 DO ~SetGlobal("B!GavinChapter5","GLOBAL",3)~ + BGavChap5.1
++ @927 DO ~SetGlobal("B!GavinChapter5","GLOBAL",3)~ + BGavChap5.2
++ @928 DO ~SetGlobal("B!GavinChapter5","GLOBAL",3)~ + BGavChap5.3
END

IF ~~ THEN BEGIN BGavChap5.1
SAY @929
++ @930 + BGavChap5.4
++ @931 + BGavChap5.5
++ @932 + BGavChap5.6
++ @933 + BGavChap5.7
END

IF ~~ THEN BEGIN BGavChap5.2
SAY @934
++ @930 + BGavChap5.4
++ @931 + BGavChap5.5
++ @932 + BGavChap5.6
++ @933 + BGavChap5.7
END

IF ~~ THEN BEGIN BGavChap5.3
SAY @935
++ @930 + BGavChap5.4
++ @931 + BGavChap5.5
++ @932 + BGavChap5.6
++ @933 + BGavChap5.7
END

IF ~~ THEN BEGIN BGavChap5.4
SAY @936
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap5.5
SAY @937
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap5.6
SAY @938
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap5.7
SAY @939
IF ~~ THEN EXIT
END

///* Chapter 6 - About Lanie */
IF WEIGHT #-1 ~Global("B!GavinChapter6","GLOBAL",2)~ THEN BEGIN BGavChap6
SAY @940
+ ~Global("B!GavinJaheira2","GLOBAL",3)~ + @941 DO ~SetGlobal("B!GavinChapter6","GLOBAL",3)~ + BGavChap6.1
++ @942 DO ~SetGlobal("B!GavinChapter6","GLOBAL",3)~ + BGavChap6.2
++ @943 DO ~SetGlobal("B!GavinChapter6","GLOBAL",3)~ + BGavChap6.3
++ @944 DO ~SetGlobal("B!GavinChapter6","GLOBAL",3)~ + BGavChap6.4
END

IF ~~ THEN BEGIN BGavChap6.1
SAY @945
++ @583 + BGavChap6.5
++ @946 + BGavChap6.6
++ @947 + BGavChap6.7
++ @948 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavChap6.8
END

IF ~~ THEN BEGIN BGavChap6.2
SAY @949
= @950
++ @583 + BGavChap6.5
++ @946 + BGavChap6.6
++ @947 + BGavChap6.7
++ @948 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavChap6.8
END

IF ~~ THEN BEGIN BGavChap6.3
SAY @951
= @950
++ @583 + BGavChap6.5
++ @946 + BGavChap6.6
++ @947 + BGavChap6.7
++ @948 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavChap6.8
END

IF ~~ THEN BEGIN BGavChap6.4
SAY @953
= @952
= @950
++ @583 + BGavChap6.5
++ @946 + BGavChap6.6
++ @947 + BGavChap6.7
++ @948 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavChap6.8
END

IF ~~ THEN BEGIN BGavChap6.5
SAY @954
= @955
= @956
= @957
= @958
= @959
= @960
++ @961 + BGavChap6.9
++ @962 + BGavChap6.10
++ @963 + BGavChap6.11
++ @964 + BGavChap6.12
END

IF ~~ THEN BEGIN BGavChap6.6
SAY @955
= @956
= @965
= @958
= @959
= @960
++ @961 + BGavChap6.9
++ @962 + BGavChap6.10
++ @963 + BGavChap6.11
++ @964 + BGavChap6.12
END

IF ~~ THEN BEGIN BGavChap6.7
SAY @966
= @956
= @965
= @958
= @959
= @960
++ @961 + BGavChap6.9
++ @962 + BGavChap6.10
++ @963 + BGavChap6.11
++ @964 + BGavChap6.12
END

IF ~~ THEN BEGIN BGavChap6.8
SAY @967
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap6.9
SAY @968
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap6.10
SAY @969
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap6.11
SAY @970
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap6.12
SAY @971
IF ~~ THEN EXIT
END

///* Chapter 7 - catacombs */
IF WEIGHT #-1 ~Global("B!GavinChapter7","GLOBAL",2)~ THEN BEGIN BGavChap7
SAY @972
++ @314 DO ~SetGlobal("B!GavinChapter7","GLOBAL",3)~ + BGavChap7.1
++ @973 DO ~SetGlobal("B!GavinChapter7","GLOBAL",3)~ + BGavChap7.2
++ @974 DO ~SetGlobal("B!GavinChapter7","GLOBAL",3)~ + BGavChap7.3
++ @975 DO ~SetGlobal("B!GavinChapter7","GLOBAL",3)~ + BGavChap7.4
END

IF ~~ THEN BEGIN BGavChap7.1
SAY @976
= @977
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap7.2
SAY @978
= @977
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap7.3
SAY @979
= @977
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavChap7.4
SAY @980
= @977
IF ~~ THEN EXIT
END

///* Chapter 8 - going to get Lanie */
IF WEIGHT #-1 ~Global("B!GavinChapter8","GLOBAL",2)~ THEN BEGIN BGavinChapter8
SAY @981
= @982
IF ~~ THEN  DO ~SetGlobal("B!GavinChapter8","GLOBAL",3)~ EXIT
END
END