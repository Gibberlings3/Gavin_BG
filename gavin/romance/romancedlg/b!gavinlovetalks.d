
/* CONTENTS */
/* LOVE TALKS */
///* Love Talk 1 - PC's role in the cosmos */
///* Love Talk 2 - Attitude toward GE/LC */
///* Love Talk 3 - PC's relationship with Gorion */
///* Love Talk 4 - Gavin's family and early life */
///* Love Talk 5 - Pick on Gavin 1: Gavin's sketchbook */
///* Love Talk 6 - Meaning of flowers, pc views on emotion */
///* Love Talk 7 - What is pc looking for */
///* Love Talk 8 - Meaning of dreams: Gavin worries about PC's safety */
///* Love Talk 9 - Gavin's "dance" */
///* Love Talk 10 - Pick on Gavin 2: Gavin the klutz */
///* Love Talk 11 - The value of humor */
///* Love Talk 12 - A passerby's attention seque to trust issues (Lanie!) */
///* Love Talk 13 - New beginings */
///* Love Talk 14 - Mortality */
///* Love Talk 15 - Pick on Gavin 3: Gavin the arachnophobe */
///* Love Talk 16 - Discussion on fear segue into talking about the future */
///* Love Talk 17 - Romantic attachments segue into Gavin's proposal */
///* Love Talk 18 - Gavin's gift */
///* Love Talk 19 - emotional vs. physical love */
///* Love Talk 20 - Getting it on, or not */
///* Love Talk 21 - Morning After talk */
///* Love Talk 22 - When shall we marry? */
///* Love Talk 23 - The future, part 2: Where to live */
///* Love Talk 24 - holding our breath */
///* Love Talk 25 - Bhaal Heritage */
///* Love Talk 26 - Forgiveness */
///* Love Talk 27 - getting married in BG1? */
///* Love Talk 28 - Morning after talk 2 */
///* Love Talk 29 - Facing fear */
///* Love Talk 30 - Facing Sarevok */
/* WARNINGS AND BREAKS */
/* Reputation Not High Enough */
/* Break over Reputation */
/* Romance Break over Offence */
/* CONCURRENCY */
///* Concurrency Warning 1 */
///* Concurrency Warning 2 */
///* Concurrency Warning 3 */
///* Concurrency Break */
///* Warning if concurrency exceeded after breaking */
///* Not a doormat - final break */
/* PC isn't really interested */
/* PC broke it off a second time */
/* PC wants to keep it professional */
/* Liar */
/* Premature Knowledge of Bhaal Break */
/* MISCELLANEOUS LOVETALKS */
/* PC initially refused to sleep with Gavin, but has changed her mind */
/* PC initially refused to have sex with Gavin, but has changed her mind */
/* Morning After Reconsidering Sex */
/* Gavin cut his finger off */
/* Retrying intimacy after finding it distasteful */
/* HINTS */
///* LT 5 */
///* LT 9 */
///* LT 12 */
///* Ring Delivery */
/* Racial specials */
///* Half-orc */
///* Halfling */
/* Girdle of Masculinity */

/* LOVE TALKS */
///* Love Talk 1 - PC's role in the cosmos */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavLT1
@0
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",3) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1 EXTERN ~B!GAVINJ~ BGavLT1.1
++ @2 DO ~SetGlobal("B!GavinLT1Delay","GLOBAL",1) IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.2
++ @3 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.3
++ @4 EXTERN ~B!GAVINJ~ BGavLT1.4
+ ~OR(4) Race(Player1,ELF) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF)~ + @5 EXTERN ~B!GAVINJ~ BGavLT1.5
+ ~OR(2) Race(Player1,HALF_ELF) Race(Player1,HALFORC)~ + @6 EXTERN ~B!GAVINJ~ BGavLT1.6
++ @7 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.5
@8
END
++ @9 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinFriend","GLOBAL",2)~ EXTERN ~B!GAVINJ~ BGavLT1.5a
++ @10 EXTERN ~B!GAVINJ~ BGavLT1.5b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.5a
@11
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.5b
@12
EXTERN ~B!GAVINJ~ BGavLT1.1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.6
@8
END
++ @13 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinFriend","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavLT1.5a
++ @10 EXTERN ~B!GAVINJ~ BGavLT1.5b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1 //Go ahead, talk about philosophy
@14
= @15
= @16
END
++ @17 EXTERN ~B!GAVINJ~ BGavLT1.1a
++ @18 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a2
++ @19 EXTERN ~B!GAVINJ~ BGavLT1.1c
++ @20 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1d
++ @21 DO ~SetGlobal("B!GavinLT1Delay","GLOBAL",1) IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1e

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1d //Gavin is an indecisive bleater
@22
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1e //Never really thought about it
@23
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1a //Go ahead, talk about philosophy - doer
@24
END
++ @25 EXTERN ~B!GAVINJ~ BGavLT1.1a1
++ @26 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a2
++ @27 EXTERN ~B!GAVINJ~ BGavLT1.1a3
++ @28 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1a1
@29
EXTERN ~B!GAVINJ~ BGavinLT1Cont1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1a4
@30
EXTERN ~B!GAVINJ~ BGavinLT1Cont1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1a2 //more of a blend
@31
EXTERN ~B!GAVINJ~ BGavinLT1Cont1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1a3
@32
END
++ @33 EXTERN ~B!GAVINJ~ BGavLT1.1a1
++ @34 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a2
++ @35 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a3a

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1a3a
@36
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1c //Go ahead, talk about philosophy - not a doer
@37
END
++ @38 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a2
++ @39 EXTERN ~B!GAVINJ~ BGavLT1.1c1
++ @40 EXTERN ~B!GAVINJ~ BGavLT1.1c2
++ @41 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a3a

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1c1
@42
EXTERN ~B!GAVINJ~ BGavinLT1Cont1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.3 //no interest in philosophy
@43
END
++ @44 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1c2a
++ @45 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a3a

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.4 //different opinions
@43
END
++ @44 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1c2a
++ @46 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.4a
++ @45 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a3a

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.4a //Doesn't want conflict
@47
EXTERN ~B!GAVINJ~ BGavinLT1Cont1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1c2a //Doesn't want to talk philosophy
@48
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.2 //Not now, Gavin
@49
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1
@50
END
++ @51 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinLT1Cont1.1
++ @52 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinLT1Cont1.2
++ @53 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinLT1Cont1.3
++ @54 EXTERN ~B!GAVINJ~ BGavinLT1Cont1.4
++ @55 EXTERN ~B!GAVINJ~ BGavinLT1Cont1.5
++ @56 EXTERN ~B!GAVINJ~ BGavinLT1Cont1.6
++ @57 EXTERN ~B!GAVINJ~ BGavinLT1Cont1.7

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1.1
@58
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1.2
@59
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1.3
@60
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1.4
@61
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1.5
@62
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1.6
@63
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT1Cont1.7
@64
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1.1c2
@65
END
++ @66 EXTERN ~B!GAVINJ~ BGavLT1.1c2a
++ @67 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1.1a3a

//RESTART LT1
CHAIN
IF ~Global("B!GavinLovetalk1Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT1Restart //LT restarted after a delay
@68 DO ~SetGlobal("B!GavinLovetalk1Retry","GLOBAL",2)~ 
END
++ @69 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT1Restart1
++ @70 EXTERN ~B!GAVINJ~ BGavLT1.1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT1Restart1 //Skipping LT 1
@71
EXIT


///* Love Talk 2 - Attitude toward GE/LC */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",4)~ THEN ~B!GAVINJ~ BGavLT2
@72
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",5) SetGlobal("B!GavinLTCheck","GLOBAL",0)~

END
++ @73 EXTERN ~B!GAVINJ~ BGavLT2.1
++ @74 EXTERN ~B!GAVINJ~ BGavLT2.2
++ @75 DO ~SetGlobal("B!GavinLT2Delay","GLOBAL",1) IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.3
++ @76 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.1 //Not another philosophical discussion!
@77
END
++ @78 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.1a
++ @79 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.1b
++ @80 DO ~SetGlobal("B!GavinLT2Delay","GLOBAL",1) IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2 //Go ahead
@81
END
++ @82 EXTERN ~B!GAVINJ~ BGavLT2.2a
++ @83 EXTERN ~B!GAVINJ~ BGavLT2.2b
++ @84 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.2c
++ @85 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.2d

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2a //Go ahead - selfish motivation for good deeds
@86
END
++ @87 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.2a1
++ @88 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.2a2
++ @89 EXTERN ~B!GAVINJ~ BGavLT2.2a3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2a1
@90
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2a2
@91
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2a3
@92
= @93
END
++ @94 EXTERN  ~B!GAVINJ~ BGavLT2L1
++ @95 EXTERN  ~B!GAVINJ~ BGavLT2L2
++ @96 EXTERN  ~B!GAVINJ~ BGavLT2L3
++ @97 EXTERN  ~B!GAVINJ~ BGavLT2L4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2L1
@98
= @99
= @100
EXTERN  ~B!GAVINJ~ BGavinLT2Coninue

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2L2
@101
= @99
= @100
EXTERN  ~B!GAVINJ~ BGavinLT2Coninue

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2L3
@102
= @99
= @100
EXTERN  ~B!GAVINJ~ BGavinLT2Coninue

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2L4
@103
= @99
= @100
EXTERN  ~B!GAVINJ~ BGavinLT2Coninue

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2b //Go ahead - act out of habit
@104
END
++ @105 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.2a1
++ @88 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2.2a2
++ @89 EXTERN ~B!GAVINJ~ BGavLT2.2a3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2c //Go ahead - sounds like something I would do
@106 
= @107
END
++ @94 EXTERN ~B!GAVINJ~ BGavLT2L1
++ @108 EXTERN  ~B!GAVINJ~ BGavLT2L2
++ @96 EXTERN  ~B!GAVINJ~ BGavLT2L3
++ @97 EXTERN  ~B!GAVINJ~ BGavLT2L4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.2d //Go ahead - conscious decision
@109 
= @107
END
++ @94 EXTERN  ~B!GAVINJ~ BGavLT2L1
++ @108 EXTERN  ~B!GAVINJ~ BGavLT2L2
++ @96 EXTERN  ~B!GAVINJ~ BGavLT2L3
++ @97 EXTERN  ~B!GAVINJ~ BGavLT2L4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.1a
@36
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.1b
@110
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2.3 // Delaying LT 2
@111
EXIT

// ON THE NATURE OF EVIL
CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT2Coninue
@112
END
++ @113 EXTERN  ~B!GAVINJ~ BGavinLT2Coninue1
++ @114 EXTERN  ~B!GAVINJ~ BGavinLT2Coninue2
++ @115 EXTERN  ~B!GAVINJ~ BGavinLT2Coninue3
++ @116 EXTERN  ~B!GAVINJ~ BGavinLT2Coninue4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT2Coninue1
@117
= @118
= @119
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT2Coninue2
@120
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT2Coninue3
@121
= @119
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinLT2Coninue4
@122
= @123
= @119
EXIT

// RESTART LT 2
CHAIN
IF ~Global("B!GavinLovetalk2Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT2Restart //Retrying LT 2 after a delay
@124 DO ~SetGlobal("B!GavinLovetalk2Retry","GLOBAL",2)~
END
++ @125 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT2Restart1
++ @70 EXTERN ~B!GAVINJ~ BGavLT2.2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT2Restart1 // Delaying LT 2
@126
EXIT

///* Love Talk 3 - PC's relationship with Gorion */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",6)~ THEN ~B!GAVINJ~ BGavLT3
@127
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",7) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @128 EXTERN ~B!GAVINJ~ BGavLT3.1
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @129 EXTERN ~B!GAVINJ~ BGavLT3.2
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @130 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.1
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @131 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.2
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @132 EXTERN ~B!GAVINJ~ BGavLT3.3
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @132 EXTERN ~B!GAVINJ~ BGavLT3.4
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @133 EXTERN ~B!GAVINJ~ BGavLT3.5
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @133 EXTERN ~B!GAVINJ~ BGavLT3.6
++ @134 EXTERN ~B!GAVINJ~ BGavLT3.5a
++ @135 DO ~SetGlobal("B!GavinLT3Delay","GLOBAL",1) IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.8
++ @136 EXTERN ~B!GAVINJ~ BGavLT3.2b
++ @137 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1 //Raised by Gorion, good memories
@138 
= @139
END
++ @140 EXTERN  ~B!GAVINJ~ BGavLT3.1a
++ @141 EXTERN  ~B!GAVINJ~ BGavLT3.1b
++ @142 EXTERN  ~B!GAVINJ~ BGavLT3.1end4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1a //Raised by Gorion, good memories - Imoen like sister
@143 
END
++ @144 EXTERN  ~B!GAVINJ~ BGavLT3.1end1
++ @145 EXTERN  ~B!GAVINJ~ BGavLT3.1end2
++ @146 EXTERN  ~B!GAVINJ~ BGavLT3.1end3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1b //Raised by Gorion, good memories - adults were kind
@147 
END
++ @148 EXTERN  ~B!GAVINJ~ BGavLT3.1end1
++ @149 EXTERN  ~B!GAVINJ~ BGavLT3.1end4
++ @146 EXTERN  ~B!GAVINJ~ BGavLT3.1end5

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1end1 // Raised by Gorion, good memories - endings
@150
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1end2
@151
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1end3
@152
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1end4
@153
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.1end5
@154
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.2 //Raised by Gorion, bad memories
@155
= @156 
= @139
END
++ @140 EXTERN  ~B!GAVINJ~ BGavLT3.1a
++ @141 EXTERN  ~B!GAVINJ~ BGavLT3.1b
++ @142 EXTERN  ~B!GAVINJ~ BGavLT3.1end4
++ @157 EXTERN  ~B!GAVINJ~ BGavLT3.2b
++ @158 EXTERN  ~B!GAVINJ~ BGavLT3.2b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.2b //poor, misunderstood <CHARNAME>
@159
END
++ @160 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.2b1
++ @161 EXTERN  ~B!GAVINJ~ BGavLT3.2b2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.2b1
@162
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.2b2
@163
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.3 //Gavin knows about Gorion, happy about the books and distinguished visitors
@164 
= @165
END
++ @166 EXTERN  ~B!GAVINJ~ BGavLT3.1a
++ @167 EXTERN  ~B!GAVINJ~ BGavLT3.3a
++ @168 EXTERN  ~B!GAVINJ~ BGavLT3.1b
++ @169 EXTERN  ~B!GAVINJ~ BGavLT3.3b
++ @142 EXTERN  ~B!GAVINJ~ BGavLT3.1end4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.3a
@170 
END
++ @144 EXTERN  ~B!GAVINJ~ BGavLT3.1end1
++ @145 EXTERN  ~B!GAVINJ~ BGavLT3.1end2
++ @146 EXTERN  ~B!GAVINJ~ BGavLT3.1end3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.3b
@171 
END
++ @148 EXTERN  ~B!GAVINJ~ BGavLT3.1end1
++ @149 EXTERN  ~B!GAVINJ~ BGavLT3.1end4
++ @146 EXTERN  ~B!GAVINJ~ BGavLT3.1end5

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.4 //Gavin does not know about Gorion, pc is happy about the books and distinguished visitors
@164 
= @172
END
++ @173 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.1a
++ @174 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.3a
++ @175 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.1b
++ @176 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.3b
++ @142 EXTERN  ~B!GAVINJ~ BGavLT3.1end4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.5 //Gavin knows about Gorion, Candlekeep was boring
@177 
= @165
END
++ @178 EXTERN  ~B!GAVINJ~ BGavLT3.5a
++ @179 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.5a1
++ @166 EXTERN  ~B!GAVINJ~ BGavLT3.1a
++ @167 EXTERN  ~B!GAVINJ~ BGavLT3.3a
++ @168 EXTERN  ~B!GAVINJ~ BGavLT3.1b
++ @169 EXTERN  ~B!GAVINJ~ BGavLT3.3b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.5a
@180
END
++ @181 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional
++ @182 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.5a1
++ @183 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.5a2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.5a1
@184
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.5a2
@185
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.6 //Gavin does not know about Gorion, Candlekeep was boring
@177 
= @172
END
++ @178 EXTERN  ~B!GAVINJ~ BGavLT3.5a
++ @179 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.5a1
++ @186 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.1a
++ @187 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.3a
++ @188 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.1b
++ @189 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT3.3b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3.8
@49
EXIT

//RESTART LT 3
CHAIN
IF
~Global("B!GavinLovetalk3Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT3Restart //Retrying LT 3 after a delay
@190 DO ~SetGlobal("B!GavinLovetalk3Retry","GLOBAL",2)~
END
++ @191 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3Retry1
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @128 EXTERN ~B!GAVINJ~ BGavLT3.1
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @129 EXTERN ~B!GAVINJ~ BGavLT3.2
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @130 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.1
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @131 DO ~SetGlobal("B!GavinKnowGorion","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT3.2
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @132 EXTERN ~B!GAVINJ~ BGavLT3.3
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @132 EXTERN ~B!GAVINJ~ BGavLT3.4
+ ~Global("B!GavinKnowGorion","GLOBAL",1)~ + @133 EXTERN ~B!GAVINJ~ BGavLT3.5
+ ~Global("B!GavinKnowGorion","GLOBAL",0)~ + @133 EXTERN ~B!GAVINJ~ BGavLT3.6
++ @134 EXTERN ~B!GAVINJ~ BGavLT3.5a
++ @136 EXTERN ~B!GAVINJ~ BGavLT3.2b
++ @137 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT3Retry1
@192
EXIT

///* Love Talk 4 - Gavin's family and early life */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",8)~ THEN ~B!GAVINJ~ BGavLT4
@193
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",9) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @194 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT4.3e
++ @195 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT4.1
++ @196 DO ~SetGlobal("B!GavinLT4Delay","GLOBAL",1) IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT4.2
++ @197 EXTERN ~B!GAVINJ~ BGavLT4.3
++ @198 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3 //Tell me about your family
@199
= @200 
END
+ ~Global("B!GavinRingStory","GLOBAL",1)~ + @201 EXTERN  ~B!GAVINJ~ BGavLT4.3a
+ ~Global("B!GavinRingStory","GLOBAL",1) InParty("%IMOEN_DV%")~ + @202 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT4.3b
+ ~Global("B!GavinRingStory","GLOBAL",1) !InParty("%IMOEN_DV%")~ + @203 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT4.3c
++ @204 DO ~SetGlobal("B!GavinRingStory","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT4.3d
++ @205 EXTERN  ~B!GAVINJ~ BGavLT4.3e
+ ~Global("B!GavinRingStory","GLOBAL",1)~ + @206 EXTERN  ~B!GAVINJ~ BGavLT4.3f
+ ~Global("B!GavinRingStory","GLOBAL",0)~ + @206 EXTERN  ~B!GAVINJ~ BGavLT4.3g
++ @207 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN  ~B!GAVINJ~ BGavLT4.3h

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3a //Tell me about your family - wouldn't take the ring off if he could
@208
EXTERN ~B!GAVINJ~ BGavLT4EarlyLife

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3b //Tell me about your family - Imoen is a prankster, PC reminds him of Reed
@209
= @210
= @211
EXTERN ~B!GAVINJ~ BGavLT4EarlyLife

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3c //Tell me about your family - PC reminds him of Reed
@212
= @210
= @211
EXTERN ~B!GAVINJ~ BGavLT4EarlyLife

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3d //Tell me about your family - ring story
@213
= @214
= @215
= @210
= @211
EXTERN ~B!GAVINJ~ BGavLT4EarlyLife

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3e //Tell me about your family - but shut up, already
@216
END
++ @217 EXTERN ~B!GAVINJ~ BGavLT4.3e1
++ @218 EXTERN ~B!GAVINJ~ BGavLT4.3e2
++ @219 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavLT4.3e3
++ @220 EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3e1
@221
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3e2
@222
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3e3
@223
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3f //Knows ring story - nice to be part of a big family
@224
EXTERN ~B!GAVINJ~ BGavLT4EarlyLife

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3g //Doesn't know the ring story - nice to be part of a big family
@225
= @226
= @214
= @215
= @210
= @211
EXTERN ~B!GAVINJ~ BGavLT4EarlyLife

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3h
@227
END
++ @228 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT4.3e3
++ @229 EXTERN ~B!GAVINJ~ BGavLT4.3h1
++ @230 EXTERN ~B!GAVINJ~ BGavLT4.3h2
++ @231 EXTERN ~B!GAVINJ~ BGavLT4.3h3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3h1
@232
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3h2
@233
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.3h3
@234 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",-1)~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.1 //shut up already
@235
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4.2 //not now
@49
EXIT

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT4EarlyLife
SAY @236
++ @237 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT4EarlyLife1
++ @238 + BGavLT4EarlyLife2
++ @239 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT4EarlyLife3
++ @240 + BGavLT4EarlyLife4
++ @241 + BGavLT4EarlyLife5
END

IF ~~ THEN BEGIN BGavLT4EarlyLife2
SAY @242
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT4EarlyLife3
SAY @243
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1
SAY @244
++ @245 + BGavLT4EarlyLife1a
++ @246 + BGavLT4EarlyLife1b
++ @247 + BGavLT4EarlyLife1c
++ @248 + BGavLT4EarlyLife1a.1
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a
SAY @249
= @250
++ @251 + BGavLT4EarlyLife1c
++ @252 + BGavLT4EarlyLife1a.1
++ @253 + BGavLT4EarlyLife1a.2
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1
SAY @254
= @255
= @256
++ @257 + BGavLT4EarlyLife1a.1a
++ @258 + BGavLT4EarlyLife1a.1b
++ @259 + BGavLT4EarlyLife1a.1c
++ @260 + BGavLT4EarlyLife1a.1d
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1a
SAY @261
++ @262 + BGavLT4EarlyLife1a.1a.1
++ @263 + BGavLT4EarlyLife1a.1a.2
++ @264 + BGavLT4EarlyLife1a.1a.3
++ @265 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT4EarlyLife1a.1a.4
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1a.1
SAY @266
= @267
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1a.2
SAY @268
= @267
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1a.3
SAY @269
= @267
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1a.4
SAY @270
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1b
SAY @271
= @272
= @273
++ @262 + BGavLT4EarlyLife1a.1a.1
++ @263 + BGavLT4EarlyLife1a.1a.2
++ @264 + BGavLT4EarlyLife1a.1a.3
++ @265 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT4EarlyLife1a.1a.4
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1c
SAY @274
= @275
++ @262 + BGavLT4EarlyLife1a.1a.1
++ @263 + BGavLT4EarlyLife1a.1a.2
++ @264 + BGavLT4EarlyLife1a.1a.3
++ @265 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT4EarlyLife1a.1a.4
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.1d
SAY @276
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1a.2
SAY @277
= @255
= @256
++ @257 + BGavLT4EarlyLife1a.1a
++ @258 + BGavLT4EarlyLife1a.1b
++ @259 + BGavLT4EarlyLife1a.1c
++ @260 + BGavLT4EarlyLife1a.1d
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1b
SAY @278
= @250
++ @251 + BGavLT4EarlyLife1c
++ @252 + BGavLT4EarlyLife1a.1
++ @253 + BGavLT4EarlyLife1a.2
END

IF ~~ THEN BEGIN BGavLT4EarlyLife1c
SAY @279
++ @252 + BGavLT4EarlyLife1a.1
++ @253 + BGavLT4EarlyLife1a.2
END

IF ~~ THEN BEGIN BGavLT4EarlyLife4
SAY @280
++ @245 + BGavLT4EarlyLife1a
++ @246 + BGavLT4EarlyLife1b
++ @247 + BGavLT4EarlyLife1c
++ @248 + BGavLT4EarlyLife1a.1
END

IF ~~ THEN BEGIN BGavLT4EarlyLife5
SAY @281
++ @245 + BGavLT4EarlyLife1a
++ @246 + BGavLT4EarlyLife1b
++ @247 + BGavLT4EarlyLife1c
++ @248 + BGavLT4EarlyLife1a.1
END

END

//RESTART LT 4
CHAIN
IF ~Global("B!GavinLovetalk4Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT4Restart //Retrying LT 4 after a delay
@193 DO ~SetGlobal("B!GavinLovetalk4Retry","GLOBAL",2)~
END
++ @194 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT4Restart1
++ @195 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT4.1
++ @197 EXTERN ~B!GAVINJ~ BGavLT4.3
++ @198 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT4Restart1 //Abort after delay
@282
EXIT

///* Love Talk 5 - Pick on Gavin 1: Gavin's sketchbook */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",10)~ THEN ~B!GAVINJ~ BGavLT5
@283 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",11) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @284 EXTERN ~B!GAVINJ~ BGavLT5.1
++ @285 EXTERN ~B!GAVINJ~ BGavLT5.2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.1 //leave Gavin alone
@286
= @287
END
++ @288 EXTERN ~B!GAVINJ~ BGavLT5.1a
++ @289 EXTERN ~B!GAVINJ~ BGavLT5.1b
++ @290 EXTERN ~B!GAVINJ~ BGavLT5.1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.1a //just happened to be looking that way
@291 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.1b //fire banked down?
@292 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.1c //what are you drawing?
@293
END
++ @294 EXTERN ~B!GAVINJ~ BGavLT5.1c1
++ @295 EXTERN ~B!GAVINJ~ BGavLT5A

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.2 //walk over to Gavin
@296
= @297
END
++ @298 EXTERN ~B!GAVINJ~ BGavLT5.2a
++ @289 EXTERN ~B!GAVINJ~ BGavLT5.1b
++ @299 EXTERN ~B!GAVINJ~ BGavLT5.2b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.2a //don't want to distract an avid artist
@300 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.1c1 //see to the fire
@74 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5.2b //what are you drawing?
@301
END
++ @294 EXTERN ~B!GAVINJ~ BGavLT5.1c1
++ @302 EXTERN ~B!GAVINJ~ BGavLT5A

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A //looking at Gavin's sketchbook
@303
END
++ @304 EXTERN ~B!GAVINJ~ BGavLT5A1
++ @305 EXTERN ~B!GAVINJ~ BGavLT5A2
++ @306 EXTERN ~B!GAVINJ~ BGavLT5A3
++ @307 EXTERN ~B!GAVINJ~ BGavLT5A4
++ @308 EXTERN ~B!GAVINJ~ BGavLT5A5
++ @309 EXTERN ~B!GAVINJ~ BGavLT5A6
++ @310 EXTERN ~B!GAVINJ~ BGavLT5A7

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A1 //cleric with an eye for natural beauty - don't look at the rest
@311 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2 //cleric with an eye for natural beauty - look at the rest
@312
= @313
= @314
= @315
END
++ @316 EXTERN ~B!GAVINJ~ BGavLT5A2.1
++ @317 EXTERN ~B!GAVINJ~ BGavLT5A2.2
++ @318 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.3
++ @319 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.4
++ @320 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.5
++ @321 EXTERN ~B!GAVINJ~ BGavLT5A2.6
++ @322 EXTERN ~B!GAVINJ~ BGavLT5A2.7
++ @323 EXTERN ~B!GAVINJ~ BGavLT5A2.8


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.1 //don't know what to make of it - praise
@324 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.2 //don't know what to make of it - no comment
@325 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.3 //pleased - praise with comment
@326 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.4 //pleased - praise
@327 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.5 // not pleased - just friends
@328 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.6 // not pleased - no comment
@329 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.7 // playful jab
@330 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A2.8 // serious jab
@331 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A3 // don't look at the rest - praise
@332 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A4 // look at the rest - praise
@333
= @313
= @314
= @315
END
++ @316 EXTERN ~B!GAVINJ~ BGavLT5A2.1
++ @317 EXTERN ~B!GAVINJ~ BGavLT5A2.2
++ @318 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.3
++ @319 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.4
++ @320 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.5
++ @321 EXTERN ~B!GAVINJ~ BGavLT5A2.6
++ @322 EXTERN ~B!GAVINJ~ BGavLT5A2.7
++ @323 EXTERN ~B!GAVINJ~ BGavLT5A2.8

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A5 // don't look at the rest - poetic soul
@334 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A6 // look at the rest - poetic soul
@335
= @313
= @314
= @315
END
++ @316 EXTERN ~B!GAVINJ~ BGavLT5A2.1
++ @317 EXTERN ~B!GAVINJ~ BGavLT5A2.2
++ @318 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.3
++ @319 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.4
++ @320 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT5A2.5
++ @321 EXTERN ~B!GAVINJ~ BGavLT5A2.6
++ @322 EXTERN ~B!GAVINJ~ BGavLT5A2.7
++ @323 EXTERN ~B!GAVINJ~ BGavLT5A2.8
 
CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT5A7 // go pound dents out of your armor
@336 DO ~RestParty()~
EXIT

///* Love Talk 6 - Meaning of flowers, pc views on emotion */

CHAIN
IF WEIGHT #-2 ~Global("B!GavinLovetalk","GLOBAL",12)~ THEN ~B!GAVINJ~ BGavLT6
@337
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",13) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @338 EXTERN ~B!GAVINJ~ BGavLT6.1
++ @339 EXTERN ~B!GAVINJ~ BGavLT6.2
++ @340 EXTERN ~B!GAVINJ~ BGavLT6.3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1 //not used to sleeping during daylight
@341
= @342
END
++ @343 EXTERN ~B!GAVINJ~ BGavLT6.1a
++ @344 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT6.1b
++ @345 EXTERN ~B!GAVINJ~ BGavLT6.1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a //so much for Gavin's poetic soul
@346
= @347
END
++ @348 EXTERN ~B!GAVINJ~ BGavLT6.1a1
++ @349 EXTERN ~B!GAVINJ~ BGavLT6.1a2
++ @350 EXTERN ~B!GAVINJ~ BGavLT6.3
++ @351 EXTERN ~B!GAVINJ~ BGavLT6.1a3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1 //so what else are the flowers good for
@352
END
++ @353 EXTERN ~B!GAVINJ~ BGavLT6.1a1a
++ @354 EXTERN ~B!GAVINJ~ BGavLT6.1a1a
++ @355 EXTERN ~B!GAVINJ~ BGavLT6.1a1b
++ @356 EXTERN ~B!GAVINJ~ BGavLT6.1a1c
++ @357 EXTERN ~B!GAVINJ~ BGavLT6.3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1a //symbolic meanings
@358
END
++ @359 EXTERN ~B!GAVINJ~ BGavLT6.1a1a1
++ @360 EXTERN ~B!GAVINJ~ BGavLT6.1a1a2
++ @361 EXTERN ~B!GAVINJ~ BGavLT6.1a1a3
++ @362 EXTERN ~B!GAVINJ~ BGavLT6.1a1a4
++ @363 EXTERN ~B!GAVINJ~ BGavLT6.1a1a5

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1a1 // encouraging symbolism, but Gavin's baffled
@364
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1a2 // all that, from a flower
@365
= @366
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1a3 // feel funny drinking something culturally importance
@367
= @368
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1a4 // Gavin, the expert in comparative botanical symbolism
@369
= @368
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1a5 // What does Gavin think?
@370
= @371
= @368
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1b //no idea Gavin would be interested in it
@372
= @373
END
++ @359 EXTERN ~B!GAVINJ~ BGavLT6.1a1a1
++ @360 EXTERN ~B!GAVINJ~ BGavLT6.1a1a2
++ @361 EXTERN ~B!GAVINJ~ BGavLT6.1a1a3
++ @362 EXTERN ~B!GAVINJ~ BGavLT6.1a1a4
++ @363 EXTERN ~B!GAVINJ~ BGavLT6.1a1a5

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a1c // no more philosophy
@374
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a2 //Gavin waxing lyrical
@375
= @376
END
++ @353 EXTERN ~B!GAVINJ~ BGavLT6.1a1a
++ @354 EXTERN ~B!GAVINJ~ BGavLT6.1a1a
++ @355 EXTERN ~B!GAVINJ~ BGavLT6.1a1b
++ @356 EXTERN ~B!GAVINJ~ BGavLT6.1a1c
++ @357 EXTERN ~B!GAVINJ~ BGavLT6.3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1a3 //Gavin's fascination with beauty
@377
= @378
END
++ @353 EXTERN ~B!GAVINJ~ BGavLT6.1a1a
++ @354 EXTERN ~B!GAVINJ~ BGavLT6.1a1a
++ @355 EXTERN ~B!GAVINJ~ BGavLT6.1a1b
++ @356 EXTERN ~B!GAVINJ~ BGavLT6.1a1c
++ @357 EXTERN ~B!GAVINJ~ BGavLT6.3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1b //beauty, and function, too
@379
= @347
END
++ @348 EXTERN ~B!GAVINJ~ BGavLT6.1a1
++ @349 EXTERN ~B!GAVINJ~ BGavLT6.1a2
++ @350 EXTERN ~B!GAVINJ~ BGavLT6.3
++ @351 EXTERN ~B!GAVINJ~ BGavLT6.1a3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.1c //drink poison if it woke me up
@380
= @347
END
++ @348 EXTERN ~B!GAVINJ~ BGavLT6.1a1
++ @349 EXTERN ~B!GAVINJ~ BGavLT6.1a2
++ @350 EXTERN ~B!GAVINJ~ BGavLT6.3
++ @351 EXTERN ~B!GAVINJ~ BGavLT6.1a3

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.2 //not Gavin's turn to watch
@381
= @342
END
++ @343 EXTERN ~B!GAVINJ~ BGavLT6.1a
++ @344 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT6.1b
++ @345 EXTERN ~B!GAVINJ~ BGavLT6.1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT6.3 // What's for breakfast?
@382
EXIT

///* Love Talk 7 - What is pc looking for */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",14)~ THEN ~B!GAVINJ~ BGavLT7
@383
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",15) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @384 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT7.1
++ @385 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT7Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT7.2
++ @386 EXTERN ~B!GAVINJ~ BGavLT7.3
++ @387 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT7.4
++ @388 EXTERN ~B!GAVINJ~ BGavLT7.5
++ @389 EXTERN ~B!GAVINJ~ BGavLT7.6
++ @390 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~   EXTERN ~B!GAVINJ~ BGavLT7.7
+ ~Class(Player1,PALADIN)~ + @391  EXTERN ~B!GAVINJ~ BGavLT7.8
++ @392 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT7.9
++ @393 DO ~IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.1 // NO.
@394
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.2 // Not now
@49
EXIT

//RESTART LT 7
CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk7Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT7Restart //Retrying LT 7 after a delay
@383 DO ~SetGlobal("B!GavinLovetalk7Retry","GLOBAL",2)~
END
++ @384 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT7Restart1
++ @386 EXTERN ~B!GAVINJ~ BGavLT7.3
++ @387 EXTERN ~B!GAVINJ~ BGavLT7.4
++ @388 EXTERN ~B!GAVINJ~ BGavLT7.5
++ @389 EXTERN ~B!GAVINJ~ BGavLT7.6
++ @390 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~   EXTERN ~B!GAVINJ~ BGavLT7.7
+ ~Class(Player1,PALADIN)~ + @391  EXTERN ~B!GAVINJ~ BGavLT7.8
++ @392 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT7.9

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7Restart1 // Not now
@395
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.3 // Adventure
@396
= @397
END
++ @398  EXTERN ~B!GAVINJ~ BGavLT7.3a
++ @399  EXTERN ~B!GAVINJ~ BGavLT7.3b
++ @400 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT7.3c
++ @401 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT7.3d

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.3a // Fade into anonymity
@402
EXTERN ~B!GAVINJ~ BGavLT7A

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.3b // Just like the thrills
@403
EXTERN ~B!GAVINJ~ BGavLT7A

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.3c // Means to an end
@404
EXTERN ~B!GAVINJ~ BGavLT7A

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.3d // Means to an end
@405
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.4 // Experience
@406
= @397
END
++ @398  EXTERN ~B!GAVINJ~ BGavLT7.3a
++ @399  EXTERN ~B!GAVINJ~ BGavLT7.3b
++ @407  EXTERN ~B!GAVINJ~ BGavLT7.3c
++ @401 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT7.3d

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.5 // Fame
@408
= @397
END
++ @398  EXTERN ~B!GAVINJ~ BGavLT7.3a
++ @409  EXTERN ~B!GAVINJ~ BGavLT7.3b
++ @410 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT7.3c
++ @401 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT7.3d

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.6 // Wealth
@411
END
++ @412 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT7.6a
++ @413 EXTERN ~B!GAVINJ~ BGavLT7.6b
++ @414 EXTERN ~B!GAVINJ~ BGavLT7.6c


CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.6c
@415
END
++ @416 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT7.6c1
++ @417 EXTERN ~B!GAVINJ~ BGavLT7.6c2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.6c1
@418
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.6c2
@419
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.6a
@420
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.6b
@421
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.7 // Good deeds
@422
EXTERN ~B!GAVINJ~ BGavLT7A

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.8 // Duty of a paladin
@423
EXTERN ~B!GAVINJ~ BGavLT7A

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT7.9 // Beauty, poetry, and song
@424
EXTERN ~B!GAVINJ~ BGavLT7A

APPEND ~B!GAVINJ~ 

IF ~~ THEN BEGIN BGavLT7A
SAY @425
++ @426 + BGavLT7A.1
++ @427 + BGavLT7A.2
++ @428 + BGavLT7A.3
END

IF ~~ THEN BEGIN BGavLT7A.3
SAY @429
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.2
SAY @430
++ @431 + BGavLT7A.2a
++ @432 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavinKeepItProfessional
END

IF ~~ THEN BEGIN BGavLT7A.2a
SAY @433
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1
SAY @434
++ @435 + BGavLT7A.3
++ @436 + BGavLT7A.1b
++ @437 + BGavLT7A.1c
++ @438 + BGavLT7A.1d
++ @439 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT7A.1e
END

IF ~~ THEN BEGIN BGavLT7A.1e
SAY @440
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d
SAY @441
++ @442 + BGavLT7A.1d.1
++ @443 + BGavLT7A.1d.2
++ @444 + BGavLT7A.1d.3
END

IF ~~ THEN BEGIN BGavLT7A.1d.1
SAY @445
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.2
SAY @446
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3
SAY @447
= @448
++ @449 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT7A.1d.3a
++ @450 + BGavLT7A.1d.3b
++ @451 + BGavLT7A.1d.3c
END

IF ~~ THEN BEGIN BGavLT7A.1d.3c
SAY @452
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b
SAY @453
++ @454 + BGavLT7A.1d.3b.1
++ @455 + BGavLT7A.1d.3b.2
++ @456 + BGavLT7A.1d.3b.3
++ @457 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT7A.1d.3b.4
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b.4
SAY @458
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b.3
SAY @459
= @460
++ @461 + BGavLT7A.1d.3b.3a
++ @462 + BGavLT7A.1d.3b.3b
++ @463 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT7A.1d.3b.3c
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b.3c
SAY @464
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b.3b
SAY @465
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b.3a
SAY @466
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b.2
SAY @467
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3b.1
SAY @468
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1d.3a
SAY @469
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT7A.1b
SAY @448
++ @449 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT7A.1d.3a
++ @450 + BGavLT7A.1d.3b
++ @451 + BGavLT7A.1d.3c
END

IF ~~ THEN BEGIN BGavLT7A.1c
SAY @470
++ @449 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT7A.1d.3a
++ @450 + BGavLT7A.1d.3b
++ @451 + BGavLT7A.1d.3c
END

END

///* Love Talk 8 - Meaning of dreams: Gavin worries about PC's safety */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",16)~ THEN ~B!GAVINJ~ BGavLT8
@471
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",17) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @472 EXTERN ~B!GAVINJ~ BGavLT8.1
++ @473 EXTERN ~B!GAVINJ~ BGavLT8.2
++ @474 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT8Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.3
++ @475 EXTERN ~B!GAVINJ~ BGavLT8.2c
++ @476 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.2b
++ @477 EXTERN ~B!GAVINJ~ BGavLT8.4
++ @478 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.5
++ @479 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.1 // Stop trying to mother me
@480
END
++ @481 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.1a
++ @482 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.1b
++ @483 EXTERN ~B!GAVINJ~ BGavLT8.1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.5 // Thanks for looking out for me
@484
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.1a // Stop trying to mother me - Get over yourself, already
@485
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.1b // Stop trying to mother me - We're just friends, you know
@486
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.1c // Stop trying to mother me - all you're doing is scaring me
@487
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2 // Aren't you overreacting?
@488
END
++ @481 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.1a
++ @482 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.1b
++ @483 EXTERN ~B!GAVINJ~ BGavLT8.1c
++ @489 EXTERN ~B!GAVINJ~ BGavLT8.2a
++ @490 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.2b
++ @491 EXTERN ~B!GAVINJ~ BGavLT8.2c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2a // Aren't you overreacting? - Are you calling me a coward?
@492
END
++ @493 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.2a1
+ ~Class(Player1,PALADIN)~ + @494 EXTERN ~B!GAVINJ~ BGavLT8.2a2
+ ~Class(Player1,THIEF_ALL)~ + @495 EXTERN ~B!GAVINJ~ BGavLT8.2a3
++ @496 EXTERN ~B!GAVINJ~ BGavLT8.2a4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2a1 // Aren't you overreacting? - Are you calling me a coward? - You are a coward
@497
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2a2 // Aren't you overreacting? - Are you calling me a coward? - I'm a paladin!
@498
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2a3 // Aren't you overreacting? - Are you calling me a coward? - I'm a thief!
@499
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2a4 // Aren't you overreacting? - Are you calling me a coward? - Oh, all right.
@500
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2b // Aren't you overreacting? - I can take care of myself, you know.
@501
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.2c // Aren't you overreacting? - What are you worried about?
@502
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.3 // Can we talk about this later?
@503
EXIT

//RESTART LT 8

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk8Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT8Restart //Retrying LT 8 after a delay
@504 DO ~SetGlobal("B!GavinLovetalk8Retry","GLOBAL",2)~
END
++ @472 EXTERN ~B!GAVINJ~ BGavLT8.1
++ @505 EXTERN ~B!GAVINJ~ BGavLT8.2
++ @506DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8Restart1
++ @475 EXTERN ~B!GAVINJ~ BGavLT8.2c
++ @476 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.2b
++ @477 EXTERN ~B!GAVINJ~ BGavLT8.4
++ @478 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.5

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8Restart1 // Don't want to talk about it at all.
@507
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.4 // Naught but a delicate maiden
@508
END
++ @481 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.1a
++ @482 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.1b
++ @483 EXTERN ~B!GAVINJ~ BGavLT8.1c
++ @509 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT8.2b
++ @510 EXTERN ~B!GAVINJ~ BGavLT8.4a

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT8.4a // Naught but a delicate maiden - I resent you treating me that way.
@511
EXIT

///* Love Talk 9 - Gavin's "dance" */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",18)~ THEN ~B!GAVINJ~ BGavLT9
@512 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",19) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
= @513
= @514
END
++ @515 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1
++ @516 EXTERN ~B!GAVINJ~ BGavLT9.1
++ @517 EXTERN ~B!GAVINJ~ BGavLT9.1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1 // Go to him
@518
END
++ @519 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a
++ @520 EXTERN ~B!GAVINJ~ BGavLT9.1b
++ @521 EXTERN ~B!GAVINJ~ BGavLT9.1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a // Go to him - are you all right?
@522
END
++ @523 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1
++ @524 EXTERN ~B!GAVINJ~ BGavLT9.1a2
++ @525 EXTERN ~B!GAVINJ~ BGavLT9.1a1b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a2 // Go to him - are you all right? - no problem
@526
END
++ @527 EXTERN ~B!GAVINJ~ BGavLT9.1a1a
++ @528 EXTERN ~B!GAVINJ~ BGavLT9.1a1b
++ @529 EXTERN ~B!GAVINJ~ BGavLT9.1a1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1c // What the heck is going on
@530
END
+ ~PartyGoldGT(49)~ + @531 DO ~TakePartyGold(50) DestroyGold(50)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a1
+ ~PartyGoldGT(49)~ + @532 DO ~TakePartyGold(50) DestroyGold(50) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a2
++ @533 DO ~ReputationInc(-1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a3
++ @534 DO ~ReputationInc(-1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1 // Go to him - are you all right? - no problem
@535
END
++ @527 EXTERN ~B!GAVINJ~ BGavLT9.1a1a
++ @528 EXTERN ~B!GAVINJ~ BGavLT9.1a1b
++ @529 EXTERN ~B!GAVINJ~ BGavLT9.1a1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1a // Go to him - are you all right? - no problem - who is your friend?
@536
= @537
END
+ ~PartyGoldGT(49)~ + @531 DO ~TakePartyGold(50) DestroyGold(50)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a1
+ ~PartyGoldGT(49)~ + @532 DO ~TakePartyGold(50) DestroyGold(50) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a2
++ @533 DO ~ReputationInc(-1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a3
++ @534 DO ~ReputationInc(-1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1a1 // Go to him - are you all right? - no problem - who is your friend? - buy round, not happy to see each other
@538
= @539 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1a2 // Go to him - are you all right? - no problem - who is your friend? - buy round, all for the best.
@540
= @539 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1a3 // Go to him - are you all right? - no problem - who is your friend? - DON'T buy round, not happy to see each other
@541
= @542 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1a4 // Go to him - are you all right? - no problem - who is your friend? - DON'T buy round, all for the best.
@543
= @542 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1a1b // Go to him - are you all right? - unfortunate - who is your friend?
@536
= @544
END
+ ~PartyGoldGT(49)~ + @531 DO ~TakePartyGold(50) DestroyGold(50)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a1
+ ~PartyGoldGT(49)~ + @532 DO ~TakePartyGold(50) DestroyGold(50) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a2
++ @533 DO ~ReputationInc(-1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a3
++ @534 DO ~ReputationInc(-1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1a4

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1b // Go to him - you caused a scene
@545
END
++ @546 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1
++ @524 EXTERN ~B!GAVINJ~ BGavLT9.1a2
++ @525 EXTERN ~B!GAVINJ~ BGavLT9.1a1b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1c // Go back to the table
@547
END
++ @548 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1a1
++ @549 EXTERN ~B!GAVINJ~ BGavLT9.1a2
++ @550 EXTERN ~B!GAVINJ~ BGavLT9.1a1b
++ @551 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1c1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1c1 // you should have left the building
@552
END
++ @553  EXTERN ~B!GAVINJ~ BGavLT9.1c1a
++ @554 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1c1b
++ @555 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT9.1c1c

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1c1a // No, don't go. But we should all retire.
@556 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1c1b // No, don't go. But go go your room.
@557 DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT9.1c1c // Yes, you should go.
@558 DO ~ChangeAIScript("","DEFAULT") SetGlobal("GavinJoined","GLOBAL",0) LeaveParty() EscapeArea()~
EXIT

///* Love Talk 10 - Pick on Gavin 2: Gavin the klutz */

CHAIN
IF WEIGHT #-2 ~Global("B!GavinLovetalk","GLOBAL",20)~ THEN ~B!GAVINJ~ BGavLT10
@559
= @560
= @561
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",21) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @562 EXTERN ~B!GAVINJ~ BGavLT10.1
++ @563 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.2
++ @564 EXTERN ~B!GAVINJ~ BGavLT10.3
++ @565 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT10.4
++ @566 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.5
++ @567 EXTERN ~B!GAVINJ~ BGavLT10.3b

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1 // I thought you'd left
@568
END
++ @569 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT10.1a
++ @570 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1b
++ @571 EXTERN ~B!GAVINJ~ BGavLT10.1c
++ @572 EXTERN ~B!GAVINJ~ BGavLT10.1d
++ @573 EXTERN ~B!GAVINJ~ BGavLT10.1e
++ @574 EXTERN ~B!GAVINJ~ BGavLT10.1f
++ @575 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1a // I thought you'd left - don't let it unhinge you
@576 
= @577
END
++ @578 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT10.1a1
++ @579 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1a2
++ @571 EXTERN ~B!GAVINJ~ BGavLT10.1c
++ @580 EXTERN ~B!GAVINJ~ BGavLT10.1a3
++ @573 EXTERN ~B!GAVINJ~ BGavLT10.1e
++ @574 EXTERN ~B!GAVINJ~ BGavLT10.1f

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1a1 // I thought you'd left - don't let it unhinge you - you worry too much
@581
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1a2 // I thought you'd left - don't let it unhinge you - let it slide this once
@582
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1c //  not upset by the stares of a few townsfolk
@583
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1a3 // I thought you'd left - don't let it unhinge you - not today
@584
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1e // get an early start on the day
@585
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1d // Gavin attractive when he blushes
@586
= @587
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1f // hoping for a repeat performance
@586
= @587
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.1b // I thought you'd left - let them stare
@588
= @589 
= @577
END
++ @578 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT10.1a1
++ @579 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1a2
++ @571 EXTERN ~B!GAVINJ~ BGavLT10.1c
++ @580 EXTERN ~B!GAVINJ~ BGavLT10.1a3
++ @573 EXTERN ~B!GAVINJ~ BGavLT10.1e
++ @574 EXTERN ~B!GAVINJ~ BGavLT10.1f

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.2 // People *do* make mistakes
@590
END
++ @569 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1a
++ @570 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1b
++ @571 EXTERN ~B!GAVINJ~ BGavLT10.1c
++ @572 EXTERN ~B!GAVINJ~ BGavLT10.1d
++ @573 EXTERN ~B!GAVINJ~ BGavLT10.1e
++ @574 EXTERN ~B!GAVINJ~ BGavLT10.1f
++ @575 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.3 // *sit in silence*
@591
= @592
END
++ @593 EXTERN ~B!GAVINJ~ BGavLT10.3a
++ @594DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT10.3b
++ @569 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1a
++ @570 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1b
++ @571 EXTERN ~B!GAVINJ~ BGavLT10.1c
++ @572 EXTERN ~B!GAVINJ~ BGavLT10.1d
++ @573 EXTERN ~B!GAVINJ~ BGavLT10.1e
++ @574 EXTERN ~B!GAVINJ~ BGavLT10.1f
++ @575 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.3a // silent treatment - forget it
@595
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.3b // silent treatment - shut up and let's go
@596
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.4 // Gavin the acrobat
@597
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT10.5 // Don't do that! - I thought you'd left
@598
END
++ @569 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~  EXTERN ~B!GAVINJ~ BGavLT10.1a
++ @570 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT10.1b
++ @571 EXTERN ~B!GAVINJ~ BGavLT10.1c
++ @572 EXTERN ~B!GAVINJ~ BGavLT10.1d
++ @573 EXTERN ~B!GAVINJ~ BGavLT10.1e
++ @574 EXTERN ~B!GAVINJ~ BGavLT10.1f
++ @575 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavinKeepItProfessional

///* Love Talk 11 - The value of humor */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",22)~ THEN ~B!GAVINJ~ BGavLT11
@599
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",23) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @600 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT11Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT11a
++ @601 EXTERN ~B!GAVINJ~ BGavLT11b
++ @602 EXTERN ~B!GAVINJ~ BGavLT11c
++ @603 EXTERN ~B!GAVINJ~ BGavLT11d
++ @604 EXTERN ~B!GAVINJ~ BGavLT11e
++ @605 EXTERN ~B!GAVINJ~ BGavLT11f

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT11a // Can we talk about this later?
@606
EXIT

//RESTART LT 11

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk11Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT11Restart //Retrying LT 11 after a delay
@607 DO ~SetGlobal("B!GavinLovetalk11Retry","GLOBAL",2)~
END
++ @608 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT11Restart1
++ @609 EXTERN ~B!GAVINJ~ BGavLT11b
++ @602 EXTERN ~B!GAVINJ~ BGavLT11c
++ @603 EXTERN ~B!GAVINJ~ BGavLT11d
++ @604 EXTERN ~B!GAVINJ~ BGavLT11e
++ @605 EXTERN ~B!GAVINJ~ BGavLT11f

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT11Restart1 // Don't want to talk about it
@610
EXIT

//Really bothered you

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT11b
SAY @611
++ @612 + BGavLT11b.1
++ @613 + BGavLT11b.2
++ @614 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
++ @615 + BGavLT11b.3
END

IF ~~ THEN BEGIN BGavLT11b.1 /* Really bothered you - you just slipped */
SAY @616
++ @617 + BGavLT11b.1a
++ @618 + BGavLT11b.1b
++ @619 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
++ @620 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1c
END

IF ~~ THEN BEGIN BGavLT11b.1a /* Really bothered you - you just slipped - could have gotten ugly */
SAY @621
++ @622 + BGavLT11b.1a.1
++ @623 + BGavLT11b.1a.2
++ @624 + BGavLT11b.1a.1b.1
++ @625 + BGavLT11b.1a.3
END

IF ~~ THEN BEGIN BGavLT11b.1a.1 /* trying to impress me */
SAY @626
++ @627 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1a.1a
++ @628  + BGavLT11b.1a.1b
++ @629 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
END

IF ~~ THEN BEGIN BGavLT11b.1a.1a
SAY @630
IF ~~ THEN GOTO BGavLT11end
END

IF ~~ THEN BEGIN BGavLT11b.1a.1b
SAY @631
++ @632 + BGavLT11b.1a.1b.1
++ @633 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1a.1b.2
++ @634 + BGavLT11b.1a.1b.1
++ @635 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
END

IF ~~ THEN BEGIN BGavLT11b.1a.1c //FEELINGS DON'T GO BEYOND FRIENDSHIP
SAY @636
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT11b.1a.1b.1
SAY @637
++ @638 + BGavLT11b.1a.1b.2
++ @639 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
END

IF ~~ THEN BEGIN BGavLT11b.1a.1b.2
SAY @640
IF ~~ THEN GOTO BGavLT11end
END

IF ~~ THEN BEGIN BGavLT11b.1a.2 /* you don't have to impress me */
SAY @641
++ @627 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1a.1a
++ @628  + BGavLT11b.1a.1b
++ @629 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
END

IF ~~ THEN BEGIN BGavLT11b.1a.3 /* friends do not have to impress each other */
SAY @642
++ @627 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1a.1a
++ @628  + BGavLT11b.1a.1b
++ @629 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
END

IF ~~ THEN BEGIN BGavLT11b.1b /* How did you want me to see you? */
SAY @643
++ @622 + BGavLT11b.1a.1
++ @623 + BGavLT11b.1a.2
++ @624 + BGavLT11b.1a.1b.1
++ @625 + BGavLT11b.1a.3
END

IF ~~ THEN BEGIN BGavLT11b.1c /* Some women like a man with a few flaws */
SAY @644
++ @622 + BGavLT11b.1a.1
++ @623 + BGavLT11b.1a.2
++ @624 + BGavLT11b.1a.1b.1
++ @625 + BGavLT11b.1a.3
END

IF ~~ THEN BEGIN BGavLT11b.2 /* Some women like a man who can make them laugh */
SAY @645
++ @646 + BGavLT11b.2a
++ @618 + BGavLT11b.1b
++ @619 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
++ @620 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1c
END

IF ~~ THEN BEGIN BGavLT11b.2a /* done the same myself */
SAY @647
++ @627 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1a.1a
++ @628  + BGavLT11b.1a.1b
++ @629 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
END

IF ~~ THEN BEGIN BGavLT11b.3 /* What are you trying to tell me? */
SAY @648
= @616
++ @617 + BGavLT11b.1a
++ @618 + BGavLT11b.1b
++ @619 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
++ @620 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT11b.1c
END

//FORGET IT

IF ~~ THEN BEGIN BGavLT11c
SAY @649
++ @612 + BGavLT11b.1
++ @613 + BGavLT11b.2
++ @614 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
++ @615 + BGavLT11b.3
END

//Why do you keep bringing this up?

IF ~~ THEN BEGIN BGavLT11d
SAY @650
++ @612 + BGavLT11b.1
++ @613 + BGavLT11b.2
++ @614 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
++ @615 + BGavLT11b.3
END

//Give it a rest

IF ~~ THEN BEGIN BGavLT11e
SAY @651
++ @652 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT11e.1
++ @653 + BGavLT11e.2
END

IF ~~ THEN BEGIN BGavLT11e.1
SAY @654
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT11e.2
SAY @655
++ @612 + BGavLT11b.1
++ @613 + BGavLT11b.2
++ @614 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
++ @615 + BGavLT11b.3
END

IF ~~ THEN BEGIN BGavLT11f
SAY @656
++ @612 + BGavLT11b.1
++ @613 + BGavLT11b.2
++ @614 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT11b.1a.1c
END

IF ~~ THEN BEGIN BGavLT11end
SAY @657
= @658
= @659
IF ~~ THEN EXIT
END
END

///* Love Talk 12 - A passerby's attention seque to trust issues (Lanie!) */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",24)~ THEN ~B!GAVINJ~ BGavLT12
@660
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",25) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @661 EXTERN ~B!GAVINJ~ BGavLT12.1
++ @662 EXTERN ~B!GAVINJ~ BGavLT12.2
+ ~Race(Player1,ELF)~ + @663 EXTERN ~B!GAVINJ~ BGavLT12.3
+ ~Race(Player1,HALF_ELF)~ + @664 EXTERN ~B!GAVINJ~ BGavLT12.4
+ ~Race(Player1,HUMAN)~ + @665 EXTERN ~B!GAVINJ~ BGavLT12.5
+ ~Race(Player1,DWARF)~ + @666 EXTERN ~B!GAVINJ~ BGavLT12.6
+ ~Race(Player1,HALFLING)~ + @667 EXTERN ~B!GAVINJ~ BGavLT12.7
+ ~Race(Player1,GNOME)~ + @668 EXTERN ~B!GAVINJ~ BGavLT12.7
+ ~Race(Player1,HALFORC)~ + @669 EXTERN ~B!GAVINJ~ BGavLT12.8
++ @670 EXTERN ~B!GAVINJ~ BGavLT12.9
++ @671 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT12Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT12.10


APPEND ~B!GAVINJ~

IF ~~ THEN BGavLT12.1
SAY @672
++ @673 + BGavLT12.1a
++ @674 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT12.1b
++ @662 + BGavLT12.2
END

IF ~~ THEN BGavLT12.1a
SAY @675
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.1b
SAY @679
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.2
SAY @680
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.3
SAY @681
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.4
SAY @682
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.5
SAY @675
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.6
SAY @683
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.7
SAY @684
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.8
SAY @685
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.9
SAY @686
++ @676 + BGavLT12.1a.1
++ @677 + BGavLT12.1a.2
++ @678 + BGavLT12.1a.3
END

IF ~~ THEN BGavLT12.1a.1
SAY @687
++ @688 + BGavLT12.1a.1a
++ @689 + BGavLT12.1a.1a
++ @690 + BGavLT12.1a.1a
END

IF ~~ THEN BGavLT12.1a.2
SAY @691
++ @688 + BGavLT12.1a.1a
++ @689 + BGavLT12.1a.1a
++ @690 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a
END

IF ~~ THEN BGavLT12.1a.3
SAY @692
++ @688 + BGavLT12.1a.1a
++ @689 + BGavLT12.1a.1a
++ @690 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a
END

IF ~~ THEN BGavLT12.1a.1a
SAY @693
++ @694 + BGavLT12.1a.1a.1
++ @695 + BGavLT12.1a.1a.2
++ @696 + BGavLT12.1a.1a.3
END

IF ~~ THEN BGavLT12.1a.1a.1
SAY @697
++ @698 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a.1a
++ @699 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT12.1a.1a.1b
++ @700 + BGavLT12.1a.1a.1c
++ @701 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT12.1a.1a.1d
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.1a
SAY @702
IF ~~ THEN GOTO BGavLT12.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.1b
SAY @703
IF ~~ THEN GOTO BGavLT12.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.1c
SAY @704
IF ~~ THEN GOTO BGavLT12.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.1d
SAY @705
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.3
SAY @706
IF ~~ THEN GOTO BGavLT12.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2
SAY @707
++ @708 + BGavLT12.1a.1a.2a
++ @709  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BGavLT12.1a.1a.2b
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2b
SAY @710
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a
SAY @711
= @712
++ @708 + BGavLT12.1a.1a.2a.1
++ @713 + BGavLT12.1a.1a.2a.2
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.2
SAY @714
++ @715 + BGavLT12.1a.1a.2a.1
++ @709  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BGavLT12.1a.1a.2b
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1
SAY @716
= @717
++ @708 + BGavLT12.1a.1a.2a.1a
++ @709  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BGavLT12.1a.1a.2b
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a
SAY @718
= @719
= @720
= @721
++ @722 + BGavLT12.1a.1a.2a.1a.1
++ @723 + BGavLT12.1a.1a.2a.1a.1
++ @724 + BGavLT12.1a.1a.2a.1a.2
++ @725 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BGavLT12.1a.1a.2b
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1
SAY @726
= @727
= @728
= @729
= @730
++ @731 + BGavLT12.1a.1a.2a.1a.1a
++ @732 + BGavLT12.1a.1a.2a.1a.1b
++ @733 + BGavLT12.1a.1a.2a.1a.1c
++ @734 + BGavLT12.1a.1a.2a.1a.1d
++ @735 + BGavLT12.1a.1a.2a.1a.1e
END
 
IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.2
SAY @736
IF ~~ THEN GOTO BGavLT12.1a.1a.2a.1a.1
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a
SAY @737
= @738
++ @739 + BGavLT12.1a.1a.2a.1a.1a.1
++ @740 + BGavLT12.1a.1a.2a.1a.1a.2
++ @741 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.3
++ @742 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.4
++ @743 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.5
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a.5
SAY @744
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a.4
SAY @745
= @746
++ @747 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinOffend","GLOBAL",15)ChangeAIScript("","DEFAULT") SetGlobal("GavinJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
++ @748 DO ~SetGlobal("B!GavinFriend","GLOBAL",3)~ + BGavLT12.1a.1a.2a.1a.1a.4a
++ @749 + BGavLT12.1a.1a.2a.1a.1a.4b
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a.4a
SAY @750
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a.4b
SAY @751
= @752
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a.3
SAY @753
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a.2
SAY @754
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1a.1
SAY @755
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1b
SAY @756
= @738
++ @739 + BGavLT12.1a.1a.2a.1a.1a.1
++ @740 + BGavLT12.1a.1a.2a.1a.1a.2
++ @741 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.3
++ @742 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.4
++ @743 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.5
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1c
SAY @757
= @758
= @738
++ @739 + BGavLT12.1a.1a.2a.1a.1a.1
++ @740 + BGavLT12.1a.1a.2a.1a.1a.2
++ @741 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.3
++ @742 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.4
++ @743 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.5
++ @759 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.3
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1d
SAY @760
= @738
++ @739 + BGavLT12.1a.1a.2a.1a.1a.1
++ @740 + BGavLT12.1a.1a.2a.1a.1a.2
++ @741 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.3
++ @742 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.4
++ @743 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.5
END

IF ~~ THEN BEGIN BGavLT12.1a.1a.2a.1a.1e
SAY @761
= @738
++ @739 + BGavLT12.1a.1a.2a.1a.1a.1
++ @740 + BGavLT12.1a.1a.2a.1a.1a.2
++ @741 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.3
++ @742 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.4
++ @743 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT12.1a.1a.2a.1a.1a.5
END


END

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT12.10 // Can we talk about this later?
@762
EXIT

//RESTART LT 12

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk12Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT12Restart //Retrying LT 12 after a delay
@763 DO ~SetGlobal("B!GavinLovetalk12Retry","GLOBAL",2)~
END
++ @661 EXTERN ~B!GAVINJ~ BGavLT12.1
++ @662 EXTERN ~B!GAVINJ~ BGavLT12.2
+ ~Race(Player1,ELF)~ + @663 EXTERN ~B!GAVINJ~ BGavLT12.3
+ ~Race(Player1,HALF_ELF)~ + @664 EXTERN ~B!GAVINJ~ BGavLT12.4
+ ~Race(Player1,HUMAN)~ + @665 EXTERN ~B!GAVINJ~ BGavLT12.5
+ ~Race(Player1,DWARF)~ + @666 EXTERN ~B!GAVINJ~ BGavLT12.6
+ ~Race(Player1,HALFLING)~ + @667 EXTERN ~B!GAVINJ~ BGavLT12.7
+ ~Race(Player1,GNOME)~ + @668 EXTERN ~B!GAVINJ~ BGavLT12.7
+ ~Race(Player1,HALFORC)~ + @669 EXTERN ~B!GAVINJ~ BGavLT12.8
++ @670 EXTERN ~B!GAVINJ~ BGavLT12.9
++ @764 EXTERN ~B!GAVINJ~ BGavLT12Restart.1

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT12Restart.1
SAY @765
++ @708 + BGavLT12.1a.1a.2a
++ @709  DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BGavLT12.1a.1a.2b
END

END

///* Love Talk 13 - New beginings */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",26)~ THEN ~B!GAVINJ~ BGavLT13
@766
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",27) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @767 EXTERN ~B!GAVINJ~ BGavLT13.1
++ @768 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT13Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT13.2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT13.2
SAY @74
IF ~~ THEN EXIT
END
END

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk13Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT13Restart //Retrying LT 13 after a delay
@769 DO ~SetGlobal("B!GavinLovetalk13Retry","GLOBAL",2)~
END
++ @770 EXTERN ~B!GAVINJ~ BGavLT13.1
++ @771 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT13Restart1

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT13Restart1
SAY @772
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT13.1
SAY @773
++ @774 + BGavLT13.1a
++ @775 + BGavLT13.1b
++ @776 + BGavLT13.1c
++ @777 + BGavLT13.1a
END

IF ~~ THEN BEGIN BGavLT13.1a
SAY @778
++ @779 + BGavLT13.1a.1
++ @780 + BGavLT13.1a.x
++ @781 + BGavLT13.1a.3
++ @782 + BGavLT13.1a.4
END

IF ~~ THEN BEGIN BGavLT13.1b
SAY @783
++ @779 + BGavLT13.1a.1
++ @780 + BGavLT13.1a.x
++ @781 + BGavLT13.1a.3
++ @782 + BGavLT13.1a.4
END

IF ~~ THEN BEGIN BGavLT13.1c
SAY @784
++ @779 + BGavLT13.1a.1
++ @780 + BGavLT13.1a.x
++ @781 + BGavLT13.1a.3
++ @782 + BGavLT13.1a.4
END

IF ~~ THEN BEGIN BGavLT13.1a.1
SAY @785
= @786
++ @787 + BGavLT13.1a.1a
++ @788 + BGavLT13.1a.1b
++ @789 + BGavLT13.1a.1c
++ @790 + BGavLT13.1a.1b
END

IF ~~ THEN BEGIN BGavLT13.1a.3
SAY @791
= @792
= @786
++ @787 + BGavLT13.1a.1a
++ @788 + BGavLT13.1a.1b
++ @789 + BGavLT13.1a.1c
++ @790 + BGavLT13.1a.1b
END

IF ~~ THEN BEGIN BGavLT13.1a.x
SAY @793
= @792
= @786
++ @787 + BGavLT13.1a.1a
++ @788 + BGavLT13.1a.1b
++ @789 + BGavLT13.1a.1c
++ @790 + BGavLT13.1a.1b
END

IF ~~ THEN BEGIN BGavLT13.1a.4
SAY @794
= @792
= @786
++ @787 + BGavLT13.1a.1a
++ @788 + BGavLT13.1a.1b
++ @789 + BGavLT13.1a.1c
++ @790 + BGavLT13.1a.1b
END

IF ~~ THEN BEGIN BGavLT13.1a.1a
SAY @795
IF ~~ THEN GOTO BGavLT13.1a.2
END

IF ~~ THEN BEGIN BGavLT13.1a.1b
SAY @796
IF ~~ THEN GOTO BGavLT13.1a.2
END

IF ~~ THEN BEGIN BGavLT13.1a.1c
SAY @797
IF ~~ THEN GOTO BGavLT13.1a.2
END

IF ~~ THEN BEGIN BGavLT13.1a.2
SAY @798
= @799
++ @800 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT13.1a.2a
++ @801 + BGavLT13.1a.2b
++ @802 + BGavLT13.1a.2c
END

IF ~~ THEN BEGIN BGavLT13.1a.2a
SAY @803
= @804
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT13.1a.2b
SAY @805
= @803
= @804
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT13.1a.2c
SAY @806
= @807
= @804
IF ~~ THEN EXIT
END
END


///* Love Talk 14 - Mortality */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",28)~ THEN ~B!GAVINJ~ BGavLT14
@808
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",29) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
+ ~Race(Player1,ELF)~ + @809 EXTERN ~B!GAVINJ~ BGavLT14.1
+ ~OR(3) Race(Player1,HUMAN) Race(Player1,HALFLING) Race(Player1,HALFORC)~ + @809 EXTERN ~B!GAVINJ~ BGavLT14.2
+ ~OR(3) Race(Player1,HALF_ELF) Race(Player1,GNOME) Race(Player1,DWARF)~ + @809 EXTERN ~B!GAVINJ~ BGavLT14.3
+ ~Race(Player1,ELF)~ + @810 EXTERN ~B!GAVINJ~ BGavLT14.1
+ ~OR(3) Race(Player1,HUMAN) Race(Player1,HALFLING) Race(Player1,HALFORC)~ + @810 EXTERN ~B!GAVINJ~ BGavLT14.2
+ ~OR(3) Race(Player1,HALF_ELF) Race(Player1,GNOME) Race(Player1,DWARF)~ + @810 EXTERN ~B!GAVINJ~ BGavLT14.3
+ ~Race(Player1,ELF)~ + @811 EXTERN ~B!GAVINJ~ BGavLT14.4
+ ~OR(3) Race(Player1,HALF_ELF) Race(Player1,GNOME) Race(Player1,DWARF)~ + @811 EXTERN ~B!GAVINJ~ BGavLT14.5
+ ~OR(3) Race(Player1,HUMAN) Race(Player1,HALFLING) Race(Player1,HALFORC)~ + @811 EXTERN ~B!GAVINJ~ BGavLT14.6

/* this is a workaround for all the races that could have been introduced by mods */

+ ~!Race(Player1,HUMAN) !Race(Player1,ELF) !Race(Player1,HALF_ELF) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME) !Race(Player1,HALFORC)~ + @809 EXTERN ~B!GAVINJ~ BGavLT14.2
+ ~!Race(Player1,HUMAN) !Race(Player1,ELF) !Race(Player1,HALF_ELF) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME) !Race(Player1,HALFORC)~ + @810 EXTERN ~B!GAVINJ~ BGavLT14.2
+ ~!Race(Player1,HUMAN) !Race(Player1,ELF) !Race(Player1,HALF_ELF) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME) !Race(Player1,HALFORC)~ + @811 EXTERN ~B!GAVINJ~ BGavLT14.6


APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT14.1
SAY @812
++ @813 + BGavLT14.1a
++ @814 + BGavLT14.1b
++ @815 + BGavLT14.1c
++ @816 + BGavLT14.1d
++ @817 + BGavLT14.1e
+ ~Class(Player1,MAGE_ALL)~ + @818  + BGavLT14.1f
END

IF ~~ THEN BEGIN BGavLT14.1a
SAY @819
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1a.1
SAY @824
= @825
= @826
++ @827 + BGavLT14.1a.1a
++ @828 + BGavLT14.1a.1b
++ @829 + BGavLT14.1a.1c
++ @830 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1a.1a
SAY @831
++ @832 + BGavLT14.1a.1a.1
++ @833 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT14.1a.1a.2
++ @834 + BGavLT14.1a.1a.3
++ @835 + BGavLT14.1a.1a.4
END

IF ~~ THEN BEGIN BGavLT14.1a.1a.1
SAY @836
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.1a.1a.2
SAY @837
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.1a.1a.3
SAY @838
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.1a.1a.4
SAY @839
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.1a.1b
SAY @840
++ @832 + BGavLT14.1a.1a.1
++ @833 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT14.1a.1a.2
++ @834 + BGavLT14.1a.1a.3
++ @835 + BGavLT14.1a.1a.4
END

IF ~~ THEN BEGIN BGavLT14.1a.1c
SAY @841
++ @832 + BGavLT14.1a.1a.1
++ @833 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT14.1a.1a.2
++ @834 + BGavLT14.1a.1a.3
++ @835 + BGavLT14.1a.1a.4
END

IF ~~ THEN BEGIN BGavLT14.1a.1d
SAY @842
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.1a.2
SAY @825
= @826
++ @827 + BGavLT14.1a.1a
++ @828 + BGavLT14.1a.1b
++ @829 + BGavLT14.1a.1c
++ @830 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1b
SAY @843
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1c
SAY @844
++ @845 + BGavLT14.1c.1
++ @846 + BGavLT14.1c.2
++ @847 + BGavLT14.1c.3
END

IF ~~ THEN BEGIN BGavLT14.1c.1
SAY @848
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1c.2
SAY @849
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1c.3
SAY @850
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1d
SAY @851
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1e
SAY @852
= @853
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.1f
SAY @854
= @853
++ @820 + BGavLT14.1a.1
++ @821 + BGavLT14.1a.2
++ @822 + BGavLT14.1a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.1a.1d
END

IF ~~ THEN BEGIN BGavLT14.2
SAY @855
++ @856 + BGavLT14.2a
++ @814 + BGavLT14.2b
++ @815 + BGavLT14.2c
+ ~Class(Player1,MAGE_ALL)~ + @818  + BGavLT14.2d
END

IF ~~ THEN BEGIN BGavLT14.2a
SAY @857
++ @858 + BGavLT14.2a1
++ @859 + BGavLT14.2a2
++ @860 + BGavLT14.2a3
++ @861 + BGavLT14.2a4
END

IF ~~ THEN BEGIN BGavLT14.2a1
SAY @862
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.2a2
SAY @863
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.2a3
SAY @864
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.2a4
SAY @865
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.2b
SAY @866
++ @858 + BGavLT14.2a1
++ @859 + BGavLT14.2a2
++ @860 + BGavLT14.2a3
++ @861 + BGavLT14.2a4
END

IF ~~ THEN BEGIN BGavLT14.2c
SAY @867
++ @858 + BGavLT14.2a1
++ @859 + BGavLT14.2a2
++ @860 + BGavLT14.2a3
++ @861 + BGavLT14.2a4
END

IF ~~ THEN BEGIN BGavLT14.2d
SAY @854
= @868
++ @858 + BGavLT14.2a1
++ @859 + BGavLT14.2a2
++ @860 + BGavLT14.2a3
++ @861 + BGavLT14.2a4
END

IF ~~ THEN BEGIN BGavLT14.3
SAY @869
++ @813 + BGavLT14.3a
++ @814 + BGavLT14.3b
++ @815 + BGavLT14.3c
++ @870 + BGavLT14.3d
+ ~Class(Player1,MAGE_ALL)~ + @818  + BGavLT14.3e
END

IF ~~ THEN BEGIN BGavLT14.3a
SAY @871
++ @820 + BGavLT14.3a.1
++ @872 + BGavLT14.3a.2
++ @822 + BGavLT14.3a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3a.1
SAY @824
= @873
= @874
++ @875 + BGavLT14.3a.1a
++ @828 + BGavLT14.3a.1b
++ @829 + BGavLT14.3a.1c
++ @830 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3a.1a
SAY @831
++ @832 + BGavLT14.3a.1a.1
++ @833 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT14.3a.1a.2
++ @834 + BGavLT14.3a.1a.3
++ @835 + BGavLT14.3a.1a.4
END

IF ~~ THEN BEGIN BGavLT14.3a.1a.1
SAY @836
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.3a.1a.2
SAY @837
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.3a.1a.3
SAY @838
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.3a.1a.4
SAY @839
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.3a.1b
SAY @840
++ @832 + BGavLT14.3a.1a.1
++ @833 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT14.3a.1a.2
++ @834 + BGavLT14.3a.1a.3
++ @835 + BGavLT14.3a.1a.4
END

IF ~~ THEN BEGIN BGavLT14.3a.1c
SAY @841
++ @832 + BGavLT14.3a.1a.1
++ @833 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT14.3a.1a.2
++ @834 + BGavLT14.3a.1a.3
++ @835 + BGavLT14.3a.1a.4
END

IF ~~ THEN BEGIN BGavLT14.3a.1d
SAY @842
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT14.3a.2
SAY @876
= @826
++ @827 + BGavLT14.3a.1a
++ @828 + BGavLT14.3a.1b
++ @829 + BGavLT14.3a.1c
++ @830 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3b
SAY @877
++ @820 + BGavLT14.3a.1
++ @872 + BGavLT14.3a.2
++ @822 + BGavLT14.3a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3c
SAY @844
++ @845 + BGavLT14.3c.1
++ @878 + BGavLT14.3c.2
++ @847 + BGavLT14.3c.3
END

IF ~~ THEN BEGIN BGavLT14.3c.1
SAY @879
++ @820 + BGavLT14.3a.1
++ @872 + BGavLT14.3a.2
++ @822 + BGavLT14.3a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3c.2
SAY @880
++ @820 + BGavLT14.3a.1
++ @872 + BGavLT14.3a.2
++ @822 + BGavLT14.3a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3c.3
SAY @881
++ @820 + BGavLT14.3a.1
++ @872 + BGavLT14.3a.2
++ @822 + BGavLT14.3a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3d
SAY @882
++ @820 + BGavLT14.3a.1
++ @872 + BGavLT14.3a.2
++ @822 + BGavLT14.3a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.3e
SAY @854
= @883
++ @820 + BGavLT14.3a.1
++ @872 + BGavLT14.3a.2
++ @822 + BGavLT14.3a.1a.2
++ @823 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinPCEnded","GLOBAL",1)~ + BGavLT14.3a.1d
END

IF ~~ THEN BEGIN BGavLT14.4
SAY @884
++ @813 + BGavLT14.1a
++ @814 + BGavLT14.1b
++ @815 + BGavLT14.1c
++ @816 + BGavLT14.1d
++ @817 + BGavLT14.1e
+ ~Class(Player1,MAGE_ALL)~ + @818  + BGavLT14.1f
END

IF ~~ THEN BEGIN BGavLT14.5
SAY @885
++ @813 + BGavLT14.3a
++ @814 + BGavLT14.3b
++ @815 + BGavLT14.3c
++ @870 + BGavLT14.3d
+ ~Class(Player1,MAGE_ALL)~ + @818  + BGavLT14.3e
END

IF ~~ THEN BEGIN BGavLT14.6
SAY @886
++ @856 + BGavLT14.2a
++ @814 + BGavLT14.2b
++ @815 + BGavLT14.2c
+ ~Class(Player1,MAGE_ALL)~ + @818  + BGavLT14.2d
END
END

///* Love Talk 15 - Pick on Gavin 3: Gavin the arachnophobe */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",30)~ THEN ~B!GAVINJ~ BGavLT15
@887
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",31) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @888 EXTERN ~B!GAVINJ~ BGavLT15.1
++ @889 EXTERN ~B!GAVINJ~ BGavLT15.2
++ @890 EXTERN ~B!GAVINJ~ BGavLT15.3
++ @891 EXTERN ~B!GAVINJ~ BGavLT15.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT15.1
SAY @892
++ @893 + BGavLT15.1a
++ @894 + BGavLT15.1b
++ @895 + BGavLT15.1c
++ @896 + BGavLT15.1d
END

IF ~~ THEN BEGIN BGavLT15.1a
SAY @897
++ @898 + BGavLT15.1a.1
++ @899 + BGavLT15.1a.2
++ @900 + BGavLT15.1a.3
++ @901 + BGavLT15.1a.4
++ @902 + BGavLT15.1a.5
END

IF ~~ THEN BEGIN BGavLT15.1a.1
SAY @903
++ @904 + BGavLT15.1a.1a
++ @905 + BGavLT15.1a.1b
++ @906 + BGavLT15.1a.1c
++ @907 + BGavLT15.1a.1d
END

IF ~~ THEN BEGIN BGavLT15.1a.1a
SAY @908
++ @909 + BGavLT15.1a.1a.1
++ @910 + BGavLT15.1a.1a.2
++ @911 + BGavLT15.1a.1a.3
END

IF ~~ THEN BEGIN BGavLT15.1a.1a.1
SAY @912
++ @913 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT15.1a.1a.1a
++ @914 + BGavLT15.1a.1a.1b
++ @915 + BGavLT15.1a.1a.1c
++ @916 + BGavLT15.1a.1a.1d
++ @917 + BGavLT15.1a.1a.1e
END

IF ~~ THEN BEGIN BGavLT15.1a.1a.1a
SAY @918
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.1a.1b
SAY @919
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.1a.1c
SAY @920
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.1a.1d
SAY @921
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.1a.1e
SAY @922
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN BGavLT15.1a.1a.2
SAY @923
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.1a.3
SAY @924
++ @913 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT15.1a.1a.1a
++ @914 + BGavLT15.1a.1a.1b
++ @915 + BGavLT15.1a.1a.1c
++ @916 + BGavLT15.1a.1a.1d
++ @917 + BGavLT15.1a.1a.1e
END

IF ~~ THEN BEGIN BGavLT15.1a.1b
SAY @925
= @926
++ @909 + BGavLT15.1a.1a.1
++ @910 + BGavLT15.1a.1a.2
++ @911 + BGavLT15.1a.1a.3
END

IF ~~ THEN BEGIN BGavLT15.1a.1c
SAY @927
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.1d
SAY @928
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.2
SAY @929
= @926
++ @909 + BGavLT15.1a.1a.1
++ @910 + BGavLT15.1a.1a.2
++ @911 + BGavLT15.1a.1a.3
END

IF ~~ THEN BEGIN BGavLT15.1a.3
SAY @930
++ @904 + BGavLT15.1a.1a
++ @905 + BGavLT15.1a.1b
++ @906 + BGavLT15.1a.1c
++ @907 + BGavLT15.1a.1d
END

IF ~~ THEN BEGIN BGavLT15.1a.4
SAY @931
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT15.1a.5
SAY @932
++ @913 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT15.1a.1a.1a
++ @914 + BGavLT15.1a.1a.1b
++ @915 + BGavLT15.1a.1a.1c
++ @916 + BGavLT15.1a.1a.1d
++ @917 + BGavLT15.1a.1a.1e
END


IF ~~ THEN BEGIN BGavLT15.1b
SAY @933
++ @898 + BGavLT15.1a.1
++ @899 + BGavLT15.1a.2
++ @900 + BGavLT15.1a.3
++ @901 + BGavLT15.1a.4
++ @902 + BGavLT15.1a.5
END

IF ~~ THEN BEGIN BGavLT15.1c
SAY @934
++ @898 + BGavLT15.1a.1
++ @899 + BGavLT15.1a.2
++ @900 + BGavLT15.1a.3
++ @901 + BGavLT15.1a.4
++ @902 + BGavLT15.1a.5
END

IF ~~ THEN BEGIN BGavLT15.1d
SAY @935
++ @898 + BGavLT15.1a.1
++ @899 + BGavLT15.1a.2
++ @900 + BGavLT15.1a.3
++ @901 + BGavLT15.1a.4
++ @902 + BGavLT15.1a.5
END

IF ~~ THEN BEGIN BGavLT15.2
SAY @936
++ @893 + BGavLT15.1a
++ @894 + BGavLT15.1b
++ @895 + BGavLT15.1c
++ @896 + BGavLT15.1d
END

IF ~~ THEN BEGIN BGavLT15.3
SAY @937
++ @893 + BGavLT15.1a
++ @894 + BGavLT15.1b
++ @895 + BGavLT15.1c
++ @896 + BGavLT15.1d
END

IF ~~ THEN BEGIN BGavLT15.4
SAY @936
++ @893 + BGavLT15.1a
++ @894 + BGavLT15.1b
++ @895 + BGavLT15.1c
++ @896 + BGavLT15.1d
END
END

///* Love Talk 16 - Discussion on fear segue into talking about the future */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",32)~ THEN ~B!GAVINJ~ BGavLT16
@938
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",33) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @939 EXTERN ~B!GAVINJ~ BGavLT16.2
++ @940 EXTERN ~B!GAVINJ~ BGavLT16.3
++ @474 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT16Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT16.1
++ @941 EXTERN ~B!GAVINJ~ BGavLT16.2
++ @942 EXTERN ~B!GAVINJ~ BGavLT16.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT16.1
SAY @606
IF ~~ THEN EXIT
END
END

CHAIN
IF WEIGHT #-2 ~Global("B!GavinLovetalk16Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT16Restart //Retrying LT 16 after a delay
@943 DO ~SetGlobal("B!GavinLovetalk16Retry","GLOBAL",2)~
END
++ @944 EXTERN ~B!GAVINJ~ BGavLT16Restart1
++ @945 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ BGavLT16Restart2
++ @946 EXTERN ~B!GAVINJ~ BGavLT16Restart3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT16Restart1
SAY @947
+ ~InParty("xan")~ + @948 + BGavLT16a
++ @949 + BGavLT16b
++ @950 + BGavLT16c
++ @951 + BGavLT16d
END

IF ~~ THEN BEGIN BGavLT16Restart2
SAY @952
+ ~InParty("xan")~ + @948 + BGavLT16a
++ @949 + BGavLT16b
++ @950 + BGavLT16c
++ @951 + BGavLT16d
++ @953 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT16e
END

IF ~~ THEN BEGIN BGavLT16a
SAY @954
++ @955 + BGavLT16a.1
++ @956 + BGavLT16a.2
++ @957 + BGavLT16a.3
++ @958 + BGavLT16a.3
++ @959 + BGavLT16a.1e
++ @960 + BGavLT16a.1c
END

IF ~~ THEN BEGIN BGavLT16a.1
SAY @961
++ @962 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",1)~ + BGavLT16a.1a
++ @963 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",2)~ + BGavLT16a.1b
++ @964 + BGavLT16a.1c
+ ~Race(Player1,ELF)~ + @965 + BGavLT16a.1d
++ @966 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",3)~ + BGavLT16a.1e
END

IF ~~ THEN BEGIN BGavLT16a.1a
SAY @967
++ @968 + BGavLT16a.1a.1
++ @969 + BGavLT16a.1a.2
++ @970 + BGavLT16a.1a.3
++ @971 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT16a.1a.4
END

IF ~~ THEN BEGIN BGavLT16a.1a.1
SAY @972
= @973
++ @969 + BGavLT16a.1a.2
++ @970 + BGavLT16a.1a.3
++ @974 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT16a.1a.4
END

IF ~~ THEN BEGIN BGavLT16a.1a.2
SAY @975
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT16a.1a.3
SAY @976
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT16a.1a.4
SAY @977
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT16a.1b
SAY @978
++ @968 + BGavLT16a.1a.1
++ @969 + BGavLT16a.1a.2
++ @970 + BGavLT16a.1a.3
++ @971 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT16a.1a.4
END

IF ~~ THEN BEGIN BGavLT16a.1c
SAY @979
++ @968 + BGavLT16a.1a.1
++ @969 + BGavLT16a.1a.2
++ @970 + BGavLT16a.1a.3
++ @980 DO ~SetGlobal("B!GavinRomance","GLOBAL",3) SetGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BGavLT16a.1c.1
END

IF ~~ THEN BEGIN BGavLT16a.1c.1
SAY @981
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT16a.1d
SAY @982
++ @968 + BGavLT16a.1a.1
++ @969 + BGavLT16a.1a.2
++ @970 + BGavLT16a.1a.3
++ @971 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT16a.1a.4
END

IF ~~ THEN BEGIN BGavLT16a.1e
SAY @983
++ @968 + BGavLT16a.1a.1
++ @969 + BGavLT16a.1a.2
++ @970 + BGavLT16a.1a.3
++ @980 DO ~SetGlobal("B!GavinRomance","GLOBAL",3) SetGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinNoReturn","GLOBAL",1)~ + BGavLT16a.1c.1
END

IF ~~ THEN BEGIN BGavLT16a.2
SAY @984
++ @962 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",1)~ + BGavLT16a.1a
++ @963 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",2)~ + BGavLT16a.1b
++ @964 + BGavLT16a.1c
+ ~Race(Player1,ELF)~ + @965 + BGavLT16a.1d
++ @966 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",3)~ + BGavLT16a.1e
END

IF ~~ THEN BEGIN BGavLT16a.3
SAY @985
++ @962 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",1)~ + BGavLT16a.1a
++ @963 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",2)~ + BGavLT16a.1b
++ @964 + BGavLT16a.1c
+ ~Race(Player1,ELF)~ + @986 + BGavLT16a.1d
++ @966 DO ~SetGlobal("B!GavinWantsKids","GLOBAL",3)~ + BGavLT16a.1e
END

IF ~~ THEN BEGIN BGavLT16b
SAY @987
++ @955 + BGavLT16a.1
++ @956 + BGavLT16a.2
++ @957 + BGavLT16a.3
++ @958 + BGavLT16a.3
++ @959 + BGavLT16a.1e
++ @960 + BGavLT16a.1c
END

IF ~~ THEN BEGIN BGavLT16c
SAY @988
++ @955 + BGavLT16a.1
++ @956 + BGavLT16a.2
++ @957 + BGavLT16a.3
++ @958 + BGavLT16a.3
++ @959 + BGavLT16a.1e
++ @960 + BGavLT16a.1c
END

IF ~~ THEN BEGIN BGavLT16d
SAY @989
++ @955 + BGavLT16a.1
++ @956 + BGavLT16a.2
++ @957 + BGavLT16a.3
++ @958 + BGavLT16a.3
++ @959 + BGavLT16a.1e
++ @960 + BGavLT16a.1c
END

IF ~~ THEN BEGIN BGavLT16e
SAY @990
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN BGavLT16Restart3
SAY @991
+ ~InParty("xan")~ + @948 + BGavLT16a
++ @949 + BGavLT16b
++ @950 + BGavLT16c
++ @951 + BGavLT16d
END

IF ~~ THEN BEGIN BGavLT16.2
SAY @992
++ @944 + BGavLT16Restart1
++ @945 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ + BGavLT16Restart2
++ @946 + BGavLT16Restart3
END

IF ~~ THEN BEGIN BGavLT16.3
SAY @993
++ @944 + BGavLT16Restart1
++ @945 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ + BGavLT16Restart2
++ @946 + BGavLT16Restart3
END
END

///* Love Talk 17 - Romantic attachments segue into Gavin's proposal */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",34)~ THEN ~B!GAVINJ~ BGavLT17
@994
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",35) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @995 EXTERN  ~B!GAVINJ~ BGavLT17.1
++ @996 EXTERN  ~B!GAVINJ~ BGavLT17.2 
++ @997 EXTERN  ~B!GAVINJ~ BGavLT17.3
++ @998 EXTERN  ~B!GAVINJ~ BGavLT17.2 
++ @999 EXTERN  ~B!GAVINJ~ BGavLT17.4
++ @1000 EXTERN  ~B!GAVINJ~ BGavLT17.5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT17.1
SAY @1001
++ @1002 + BGavLT17.2 
++ @997 + BGavLT17.3
++ @999 + BGavLT17.4
++ @384 + BGavLT17.5
END

IF ~~ THEN BEGIN BGavLT17.2
SAY @1003 
++ @1004 + BGavLT17.2a
++ @1005 + BGavLT17.2a
++ @1006 + BGavLT17.2b
++ @1007 DO ~SetGlobal("B!GavinCommitmentBreak","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!NoLoveGavin","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT17.2c
END

IF ~~ THEN BEGIN BGavLT17.2a
SAY @1008
= @1009
= @1010
++ @1011 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) SetGlobal("B!GavinCommitment","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",2)~ + BGavinLT17HappiestOfMen
++ @1012 + BGavinLT17NeedMoreTime
++ @1013 DO ~SetGlobal("B!GavinCommitmentBreak","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!NoLoveGavin","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~  + BGavinLT17RomanceOver
END

IF ~~ THEN BEGIN BGavinLT17HappiestOfMen
SAY @1014
= @1015
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavinLT17NeedMoreTime
SAY @1016
= @1017
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavinLT17RomanceOver
SAY @1018
= @1019
IF ~~ THEN DO ~RestParty()~ EXIT
END


IF ~~ THEN BEGIN BGavLT17.2b
SAY @1020
= @1021
= @1010
++ @1011 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) SetGlobal("B!GavinCommitment","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",2)~ + BGavinLT17HappiestOfMen
++ @1012 + BGavinLT17NeedMoreTime
++ @1022 DO ~SetGlobal("B!GavinCommitmentBreak","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!NoLoveGavin","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~  + BGavinLT17RomanceOver
END
IF ~~ THEN BEGIN BGavLT17.2c
SAY @1023
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT17.3
SAY @1024 
++ @1004 + BGavLT17.2a
++ @1005 + BGavLT17.2a
++ @1006 + BGavLT17.2b
++ @1007 DO ~SetGlobal("B!GavinCommitmentBreak","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!NoLoveGavin","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT17.2c
END

IF ~~ THEN BEGIN BGavLT17.4
SAY @1025 
++ @1026 + BGavLT17.2b
++ @1027 + BGavLT17.2b
++ @1028 + BGavLT17.2
END

IF ~~ THEN BEGIN BGavLT17.5
SAY @1029 
++ @1004 + BGavLT17.2a
++ @1005 + BGavLT17.2a
++ @1006 + BGavLT17.2b
++ @1007 DO ~SetGlobal("B!GavinCommitmentBreak","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!NoLoveGavin","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT17.2c
END

///* Love Talk 18 - Gavin's gift */

IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",36)~ THEN BEGIN BGavLT18
SAY @1030
IF ~Global("B!GavinRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("B!GavinLovetalk","GLOBAL",37) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
GOTO BGavLT18.1
IF ~Global("B!GavinRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("B!GavinLovetalk","GLOBAL",37) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
GOTO BGavLT18.2
END

IF ~~ THEN BEGIN BGavLT18.1
SAY @1031
IF ~~ THEN DO ~GiveItemCreate("B!PCRING",Player1,0,0,0)~ GOTO BGavLT18.1a
END

IF ~~ THEN BEGIN BGavLT18.1a
SAY @1032
++ @1033 + BGavLT18.1a.1
++ @1034 + BGavLT18.1a.2
++ @1035 + BGavLT18.1a.3
++ @1036 + BGavLT18.1a.4
END

IF ~~ THEN BEGIN BGavLT18.1a.1
SAY @1037
= @1038
++ @1034 + BGavLT18.1a.2
++ @1039 + BGavLT18.1a.5
++ @1035 + BGavLT18.1a.3
++ @1036 + BGavLT18.1a.4
++ @1040 DO ~GiveItemCreate("B!GAVBK",Player1,0,0,0) GiveItemCreate("B!GAVSCL",Player1,0,0,0)~ + BGavLT18.1a.x
END

IF ~~ THEN BEGIN BGavLT18.1a.5
SAY @1041
++ @1042 + BGavLT18.1a.3a
++ @1036 + BGavLT18.1a.4
++ @1043 DO ~GiveItemCreate("B!GAVBK",Player1,0,0,0) GiveItemCreate("B!GAVSCL",Player1,0,0,0)~ + BGavLT18.1a.x
END

IF ~~ THEN BEGIN BGavLT18.1a.2
SAY @1044
++ @1035 + BGavLT18.1a.3
++ @1036 + BGavLT18.1a.4
++ @1045 DO ~GiveItemCreate("B!GAVBK",Player1,0,0,0) GiveItemCreate("B!GAVSCL",Player1,0,0,0)~ + BGavLT18.1a.x
END


IF ~~ THEN BEGIN BGavLT18.1a.3
SAY @1046
++ @1047 + BGavLT18.1a.3a
++ @1036 + BGavLT18.1a.4
++ @1048 DO ~GiveItemCreate("B!GAVBK",Player1,0,0,0) GiveItemCreate("B!GAVSCL",Player1,0,0,0)~ + BGavLT18.1a.x
END

IF ~~ THEN BEGIN BGavLT18.1a.x
SAY @1049
++ @1050 + BGavLT18.1a.x1
++ @1051 + BGavLT18.1a.x1
++ @1052 + BGavLT18.1a.3a
++ @1053 + BGavLT18.1a.3a
END

IF ~~ THEN BEGIN BGavLT18.1a.x1
SAY @1054
= @1055
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.1a.3a
SAY @1056
= @1057
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.1a.4
SAY @1058
++ @1059DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT18.1a.4a
++ @1060 + BGavLT18.1a.4b
++ @1061 + BGavLT18.1a.4c
++ @1062 + BGavLT18.1a.4d
END

IF ~~ THEN BEGIN BGavLT18.1a.4a
SAY @1063
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.1a.4b
SAY @1064
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.1a.4c
SAY @1065
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.1a.4d
SAY @1066
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.2
SAY @1067
= @1068
++ @1069 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1) SetGlobal("B!GavinCommitment","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",2) GiveItemCreate("B!PCRING",Player1,0,0,0) GiveItemCreate("B!GAVBK","B!GAVIN",0,0,0) GiveItemCreate("B!GAVSCL","B!GAVIN",0,0,0)~ + BGavLT18.2a
++ @1070 DO ~SetGlobal("B!GavinCommitmentBreak","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT18.2b
++ @1071 DO ~SetGlobal("B!GavinCommitmentBreak","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!NoLoveGavin","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT18.2c
END

IF ~~ THEN BEGIN BGavLT18.2a
SAY @1072 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.2b
SAY @1073
= @1074
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT18.2c
SAY @1075 
IF ~~ THEN EXIT
END
END

///* Love Talk 19 - emotional vs. physical love */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",38) !GlobalGT("B!GavinDelayLT19","GLOBAL",0)~ THEN ~B!GAVINJ~ BGavLT19
@1076
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1077 EXTERN ~B!GAVINJ~ BGavLT19.1
++ @74 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39)~ EXTERN ~B!GAVINJ~ BGavLT19.2

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk19Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT19
@1078
DO ~SetGlobal("B!GavinLovetalk19Retry","GLOBAL",2)  SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1079 EXTERN ~B!GAVINJ~ BGavLT19.3
++ @74 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39)~ EXTERN ~B!GAVINJ~ BGavLT19.2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT19.3
SAY @1080
++ @1081 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39) SetGlobal("B!GavinLovetalk19Retry","GLOBAL",2)~ + BGavLT19.3a
++ @1082 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39) SetGlobal("B!GavinLovetalk19Retry","GLOBAL",2) IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.3b
++ @1083 DO ~SetGlobal("B!GavinLovetalk19Retry","GLOBAL",2)~ + BGavLT19.3c
++ @1084 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39) SetGlobal("B!GavinLovetalk19Retry","GLOBAL",2) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT19.3d
END 

IF ~~ THEN BEGIN BGavLT19.3a
SAY @1085
= @1086
= @1087
= @1088
++ @673 + BGavLT19.2a
++ @1089 + BGavLT19.2b
END

IF ~~ THEN BEGIN BGavLT19.3b
SAY @1090
= @1086
= @1087
= @1088
++ @673 + BGavLT19.2a
++ @1089 + BGavLT19.2b
END

IF ~~ THEN BEGIN BGavLT19.3c
SAY @1091
++ @1092 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39) SetGlobal("B!GavinLovetalk19Retry","GLOBAL",2)~ + BGavLT19.3b
++ @1084 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39) SetGlobal("B!GavinLovetalk19Retry","GLOBAL",2) SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT19.3d
END

IF ~~ THEN BEGIN BGavLT19.3d
SAY @1093
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT19.1
SAY @1094
++ @1095 + BGavLT19.1a
++ @1096 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",39)~ + BGavLT19.2
END

IF ~~ THEN BEGIN BGavLT19.1a
SAY @1097
IF ~~ THEN DO ~SetGlobal("B!GavinDelayLT19","GLOBAL",1) IncrementGlobal("B!GavinLTDelay","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT19.2
SAY @1098
= @1086
= @1087
= @1088
++ @673 + BGavLT19.2a
++ @1089 + BGavLT19.2b
END

IF ~~ THEN BEGIN BGavLT19.2a
SAY @1099
++ @1100 + BGavLT19.2a.1
++ @1101 + BGavLT19.2a.2
END

IF ~~ THEN BEGIN BGavLT19.2a.1
SAY @1102
= @1103
= @1104
++ @1105 + BGavLT19.2a.1a
++ @770 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",2)~ + BGavLT19.2a.1b
++ @384 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",1)~ + BGavLT19.2a.1c
++ @1106 + BGavLT19.2a.1d
END

IF ~~ THEN BEGIN BGavLT19.2a.1a
SAY @1107
++ @1108 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",3)~ + BGavLT19.2a.1a.1
++ @1109 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",2)~ + BGavLT19.2a.1a.2
++ @1110 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",1)~ + BGavLT19.2a.1a.3
++ @1111  DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",3)~ + BGavLT19.2a.1a.4
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.1
SAY @1112
++ @1113 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1a
++ @1114  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1b
++ @1115 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1c
++ @1116 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1d
++ @1117 + BGavLT19.2a.1a.1e
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.1a
SAY @1118
= @1119
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.1b
SAY @1120
= @1119
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.1c
SAY @1121
= @1119
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.1d
SAY @1122
= @1123
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.1e
SAY @1124
= @1123
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.2
SAY @1125
++ @1113 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1a
++ @1114  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1b
++ @1115 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1c
++ @1116 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1d
++ @1117 + BGavLT19.2a.1a.1e
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.3
SAY @1126
++ @1113 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1a
++ @1114  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1b
++ @1115 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1c
++ @1116 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1d
++ @1117 + BGavLT19.2a.1a.1e
END

IF ~~ THEN BEGIN BGavLT19.2a.1a.4
SAY @1127
++ @1113 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1a
++ @1114  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1b
++ @1115 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1c
++ @1116 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1d
++ @1117 + BGavLT19.2a.1a.1e
END


IF ~~ THEN BEGIN BGavLT19.2a.1b
SAY @1128
++ @1113 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1a
++ @1114  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1b
++ @1115 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1c
++ @1116 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1d
++ @1117 + BGavLT19.2a.1a.1e
END

IF ~~ THEN BEGIN BGavLT19.2a.1c
SAY @1129
++ @1113 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1a
++ @1114  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1b
++ @1115 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1c
++ @1116 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT19.2a.1a.1d
++ @1117 + BGavLT19.2a.1a.1e
END

IF ~~ THEN BEGIN BGavLT19.2a.1d
SAY @1130
++ @1108 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",3)~ + BGavLT19.2a.1a.1
++ @1109 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",2)~ + BGavLT19.2a.1a.2
++ @1110 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",1)~ + BGavLT19.2a.1a.3
++ @1111  DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",3)~ + BGavLT19.2a.1a.4
END

IF ~~ THEN BEGIN BGavLT19.2a.2
SAY @1131
= @1104
++ @1105 + BGavLT19.2a.1a
++ @770 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",2)~ + BGavLT19.2a.1b
++ @384 DO ~SetGlobal("B!GavinPCInnocent","GLOBAL",1)~ + BGavLT19.2a.1c
++ @1106 + BGavLT19.2a.1d
END

IF ~~ THEN BEGIN BGavLT19.2b
SAY @1132
++ @1100 + BGavLT19.2a.1
++ @1101 + BGavLT19.2a.2
END
END

///* Love Talk 20 - Getting it on, or not */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",40)~ THEN ~B!GAVINJ~ BGavLT20
@1133 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",41) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1134 + BGavLT20.1
++ @1135 + BGavLT20.2
++ @1136 + BGavLT20.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT20.1
SAY @1137
++ @1138 + BGavLT20.1a
++ @1139 + BGavLT20.1b
++ @1140 + BGavLT20.1c
++ @1141 + BGavLT20.1d
++ @1142 + BGavLT20.1e
END

IF ~~ THEN BEGIN BGavLT20.2
SAY @1143
++ @1138 + BGavLT20.1a
++ @1139 + BGavLT20.1b
++ @1140 + BGavLT20.1c
++ @1141 + BGavLT20.1d
++ @1142 + BGavLT20.1e
END

IF ~~ THEN BEGIN BGavLT20.3
SAY @1144
++ @1138 + BGavLT20.1a
++ @1139 + BGavLT20.1b
++ @1140 + BGavLT20.1c
++ @1141 + BGavLT20.1d
++ @1142 + BGavLT20.1e
END

IF ~~ THEN BEGIN BGavLT20.1a
SAY @1145
++ @1146 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT20.1a.1
++ @1147 + BGavLT20.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1b
SAY @1148
++ @1146 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT20.1a.1
++ @1147 + BGavLT20.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1c
SAY @1149
++ @1146 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT20.1a.1
++ @1150 + BGavLT20.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1d
SAY @1151
++ @1146 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT20.1a.1
++ @1147 + BGavLT20.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1e
SAY @1152
++ @1146 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT20.1a.1
++ @1147 + BGavLT20.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1a.2
SAY @1153
IF ~~ THEN DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",1) SetGlobal("B!GavinNoSleep","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20.1a.1
SAY @1154
= @1155
++ @1156 + BGavLT20.1a.1a
++ @1157 + BGavLT20.1a.1b
++ @1158 + BGavLT20.1a.1c
END

IF ~~ THEN BEGIN BGavLT20.1a.1a
SAY @1159
= @1160
= @1161
++ @1162 + BGavLT20.1a.1a.1
++ @1163 + BGavLT20.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1
SAY @1164
= @1165
= @1166
++ @1167 + BGavLT20.1a.1a.1a
++ @1168 + BGavLT20.1a.1a.1b
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1b
SAY @1169
IF ~~ THEN DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1a
SAY @1170
= @1171
++ @1172 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT20.1a.1a.1a.1
++ @1173 + BGavLT20.1a.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1a.2
SAY @1174
++ @1175 + BGavLT20.1a.1a.1a.2a
++ @1176 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT20.1a.1a.1a.1
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1a.2a
SAY @1177
IF ~~ THEN DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1a.1
SAY @1178
++ @1011 + BGavLT20.1a.1a.1a.1a
++ @1179 + BGavLT20.1a.1a.1a.1b
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1a.1b
SAY @1180
IF ~~ THEN DO ~SetGlobal("B!GavinSexQuestion","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.1a.1a
SAY @1181 
IF ~~ THEN DO ~SetGlobal("B!GavinSexQuestion","GLOBAL",1) SetGlobal("B!GavinSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20.1a.1a.2
SAY @1182
= @1165
= @1166
++ @1167 + BGavLT20.1a.1a.1a
++ @1168 + BGavLT20.1a.1a.1b
END

IF ~~ THEN BEGIN BGavLT20.1a.1b
SAY @1159
= @1160
= @1161
++ @1162 + BGavLT20.1a.1a.1
++ @1163 + BGavLT20.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT20.1a.1c
SAY @1183
= @1160
= @1161
++ @1162 + BGavLT20.1a.1a.1
++ @1163 + BGavLT20.1a.1a.2
END
END

///* Love Talk 21 - Morning After talk */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",42) Global("B!GavinNoSleep","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT21A
@1184
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",43) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1185 EXTERN ~B!GAVINJ~ BGavLT21A.1
++ @1186 EXTERN ~B!GAVINJ~ BGavLT21A.2
++ @1187 EXTERN ~B!GAVINJ~ BGavLT21A.3
++ @1188 EXTERN ~B!GAVINJ~ BGavLT21A.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT21A.1
SAY @1189
++ @1190 + BGavLT21A.5
++ @1191 + BGavLT21A.6
++ @1192 + BGavLT21A.7
++ @1187 + BGavLT21A.3
++ @1193 + BGavLT21A.8
END

IF ~~ THEN BEGIN BGavLT21A.2
SAY @1194
++ @1190 + BGavLT21A.5
++ @1195 + BGavLT21A.6
++ @1192 + BGavLT21A.7
++ @1187 + BGavLT21A.3
++ @1193 + BGavLT21A.8
END

IF ~~ THEN BEGIN BGavLT21A.3
SAY @1196
++ @1197 + BGavLT21A.9
++ @1198 + BGavLT21A.10
++ @1199 + BGavLT21A.11
++ @1200 + BGavLT21A.12
END

IF ~~ THEN BEGIN BGavLT21A.4
SAY @1201
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21A.5
SAY @1202
++ @1197 + BGavLT21A.9
++ @1198 + BGavLT21A.10
++ @1199 + BGavLT21A.11
++ @1200 + BGavLT21A.12
END

IF ~~ THEN BEGIN BGavLT21A.6
SAY @1203
++ @1197 + BGavLT21A.9
++ @1198 + BGavLT21A.10
++ @1199 + BGavLT21A.11
++ @1200 + BGavLT21A.12
END

IF ~~ THEN BEGIN BGavLT21A.7
SAY @1204
++ @1197 + BGavLT21A.9
++ @1198 + BGavLT21A.10
++ @1199 + BGavLT21A.11
++ @1200 + BGavLT21A.12
END

IF ~~ THEN BEGIN BGavLT21A.8
SAY @1205
++ @1197 + BGavLT21A.9
++ @1198 + BGavLT21A.10
++ @1199 + BGavLT21A.11
++ @1200 + BGavLT21A.12
END

IF ~~ THEN BEGIN BGavLT21A.9
SAY @1206
= @1207
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21A.10
SAY @1208
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21A.11
SAY @1209
++ @1210 + BGavLT21A.13
++ @1211  + BGavLT21A.14
++ @1212 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT21A.15
END

IF ~~ THEN BEGIN BGavLT21A.12
SAY @1213
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21A.13
SAY @1214
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21A.14
SAY @1215
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21A.15
SAY @1216
IF ~~ THEN EXIT
END
END

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",42) !Global("B!GavinNoSleep","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT21
@1217
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",43) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
IF ~Global("B!GavinSex","GLOBAL",1)~ THEN EXTERN ~B!GAVINJ~ BGavLT21.1
IF ~Global("B!GavinSex","GLOBAL",0)~ THEN EXTERN ~B!GAVINJ~ BGavLT21.2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT21.1
SAY @1218 
++ @1219 + BGavLT21.1a
++ @1220 + BGavLT21.1b
END

IF ~~ THEN BEGIN BGavLT21.1a
SAY @1221
= @1222
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1223 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT21.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1224 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT21.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1225 + BGavLT21.1a.2
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1226 + BGavLT21.1a.2
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1227 + BGavLT21.1a.3
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",2) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1228 + BGavLT21.1a.3
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1229 + BGavLT21.1a.4
++ @1230 + BGavLT21.1a.5
++ @1231 + BGavLT21.1a.6
END

IF ~~ THEN BEGIN BGavLT21.1b
SAY @1232
= @1222
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1223 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT21.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1224 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT21.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1225 + BGavLT21.1a.2
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1226 + BGavLT21.1a.2
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1227 + BGavLT21.1a.3
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",2) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1233 + BGavLT21.1a.3
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1229 + BGavLT21.1a.4
++ @1230 + BGavLT21.1a.5
END

IF ~~ THEN BEGIN BGavLT21.1a.1
SAY @1234
++ @1235 + BGavLT21.1a.1a
++ @1236 + BGavLT21.1a.1b
++ @1237 + BGavLT21.1a.1c
++ @1238 + BGavLT21.1a.1d
END

IF ~~ THEN BEGIN BGavLT21.1a.1a
SAY @1239
++ @1240 + BGavLT21.1a.1a.1
++ @1241 + BGavLT21.1a.1a.2
++ @1242 + BGavLT21.1a.1a.3
END

IF ~~ THEN BEGIN BGavLT21.1a.1a.1
SAY @1243
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.1a.2
SAY @1244
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.1a.3
SAY @1245
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.1b
SAY @1246
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.1c
SAY @1247
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.1d
SAY @1248
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.2
SAY @1249
++ @1250 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavLT21.1a.2a
++ @1251 + BGavLT21.1a.2b
++ @1252 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavLT21.1a.2c
++ @1253 + BGavLT21.1a.4
END

IF ~~ THEN BEGIN BGavLT21.1a.2a
SAY @1254
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.2b
SAY @1255
++ @1250 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavLT21.1a.2a
++ @1252 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavLT21.1a.2c
++ @1253 + BGavLT21.1a.4
END

IF ~~ THEN BEGIN BGavLT21.1a.2c
SAY @1256
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.3
SAY @1257
++ @1250 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavLT21.1a.2a
++ @1251 + BGavLT21.1a.2b
++ @1258 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavLT21.1a.2c
++ @1253 + BGavLT21.1a.4
END

IF ~~ THEN BEGIN BGavLT21.1a.4
SAY @1259
IF ~!Global("B!GavinWantsKids","GLOBAL",3)~ THEN GOTO BGavLT21.1a.4a
IF ~Global("B!GavinWantsKids","GLOBAL",3)~ THEN GOTO BGavLT21.1a.4b
END

IF ~~ THEN BEGIN BGavLT21.1a.4a
SAY @1260
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.4b
SAY @1261
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.6
SAY @1262
++ @1263 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT21.1a.5a
++ @1264 + BGavLT21.1a.5b
++ @1265 + BGavLT21.1a.5c
END

IF ~~ THEN BEGIN BGavLT21.1a.5
SAY @1266
++ @1267 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT21.1a.5a
++ @1028 + BGavLT21.1a.5b
++ @1265 + BGavLT21.1a.5c
END

IF ~~ THEN BEGIN BGavLT21.1a.5a
SAY @1268
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.5b
SAY @1269
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.1a.5c
SAY @1270
++ @1271 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT21.1a.5a
++ @1272 + BGavLT21.1a.5b
END

IF ~~ THEN BEGIN BGavLT21.2
SAY @1273 
++ @1219 + BGavLT21.2a
++ @1220 + BGavLT21.2b
END

IF ~~ THEN BEGIN BGavLT21.2a
SAY @1274
++ @1275 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT21.2a.1
++ @1276 + BGavLT21.2a.2
++ @1277 + BGavLT21.2a.3
++ @1278 + BGavLT21.2a.4
END

IF ~~ THEN BEGIN BGavLT21.2a.1
SAY @1279
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.2a.2
SAY @1280
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.2a.3
SAY @1281
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.2a.4
SAY @1282
= @1283
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT21.2b
SAY @1284
++ @1275 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT21.2a.1
++ @1276 + BGavLT21.2a.2
++ @1277 + BGavLT21.2a.3
++ @1278 + BGavLT21.2a.4
END

END

///* Love Talk 22 - When shall we marry? */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",44)~ THEN ~B!GAVINJ~ BGavLT22
@1285
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",45) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1286 EXTERN ~B!GAVINJ~ BGavLT22.1
++ @1287 EXTERN ~B!GAVINJ~ BGavLT22.2
++ @1288 EXTERN ~B!GAVINJ~ BGavLT22.3
++ @1289 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT22.1d.2
++ @1290 EXTERN ~B!GAVINJ~ BGavLT22.1d.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT22.1
SAY @1291
++ @1292 + BGavLT22.1a
++ @1293 + BGavLT22.1a.1a
++ @1294 + BGavLT22.1a.1
++ @1295 + BGavLT22.1d
END

IF ~~ THEN BEGIN BGavLT22.1a
SAY @1296
++ @1297 + BGavLT22.1a.1
++ @1298 + BGavLT22.1a.1a
++ @1299 + BGavLT22.1a.3
++ @1300 + BGavLT22.1a.4
END

IF ~~ THEN BEGIN BGavLT22.1a.1
SAY @1301
++ @1302 + BGavLT22.1a.1a
++ @1303 + BGavLT22.1a.1b
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1304 + BGavLT22.1a.1c
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1305 + BGavLT22.1a.1a.2a
END

IF ~~ THEN BEGIN BGavLT22.1a.1a
SAY @1306
++ @770 + BGavLT22.1a.1a.1
++ @384 + BGavLT22.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.1
SAY @1307
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2
SAY @1308
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1309 + BGavLT22.1a.1a.2a
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1310 + BGavLT22.1a.1a.2b
++ @1311 + BGavLT22.1a.1a.2c
++ @1312 + BGavLT22.1a.1a.2d
++ @1313 + BGavLT22.1a.1a.1
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a
SAY @1314
= @1315
= @1316
= @1317 
++ @1318 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT22.1a.1a.2a.1
++ @1319 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT22.1a.1a.2a.2
++ @1320 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT22.1a.1a.2a.3
++ @1321 DO ~SetGlobal("B!ChastityVow","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT22.1a.1a.2a.4
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.1
SAY @1322
++ @1323 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT22.1a.1a.2a.1a
++ @1324 + BGavLT22.1a.1a.2a.1b
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.1a
SAY @1325
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.1b
SAY @1326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.2
SAY @1327
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3
SAY @1328
++ @1329 + BGavLT22.1a.1a.2a.3a
++ @1330 + BGavLT22.1a.1a.2a.3b
++ @1331 + BGavLT22.1a.1a.2a.3c
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3a
SAY @1332
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3b
SAY @1333
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c
SAY @1334
++ @1335 + BGavLT22.1a.1a.2a.3a
++ @1336 + BGavLT22.1a.1a.2a.3b
++ @1337 + BGavLT22.1a.1a.2a.3c.1
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1
SAY @770
++ @1338 + BGavLT22.1a.1a.2a.3c.1a
++ @1339 + BGavLT22.1a.1a.2a.3c.1b
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1a
SAY @1340
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b
SAY @1341
++ @1342 DO ~SetGlobal("B!GavinFinger","GLOBAL",1) SetGlobal("B!DisableFlirts","GLOBAL",1)  IncrementGlobal("B!GavinOffend","GLOBAL",1) ApplyDamage("B!GAVIN",2,CRUSHING) TakeItemReplace("B!HAND","B!GAVRNG","B!GAVIN")~ + BGavLT22.1a.1a.2a.3c.1b.1
++ @1343 + BGavLT22.1a.1a.2a.3c.1b.2
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.1
SAY @1344
= @1345
++ @1346 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1a
++ @1347 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1b
++ @1348 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1c
++ @1349 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1d
++ @659 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1e
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.1a
SAY @1350
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.1b
SAY @1351
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.1c
SAY @1352
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.1d
SAY @1353
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.1e
SAY @1354
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.2
SAY @1355
++ @1356 DO ~SetGlobal("B!GavinFinger","GLOBAL",1) SetGlobal("B!DisableFlirts","GLOBAL",1)  IncrementGlobal("B!GavinOffend","GLOBAL",1) ApplyDamage("B!GAVIN",2,CRUSHING) TakeItemReplace("B!HAND","B!GAVRNG","B!GAVIN")~ + BGavLT22.1a.1a.2a.3c.1b.1
++ @1357 DO ~SetGlobal("B!GavinFinger","GLOBAL",1) SetGlobal("B!DisableFlirts","GLOBAL",1) IncrementGlobal("B!GavinOffend","GLOBAL",1) ApplyDamage("B!GAVIN",2,CRUSHING) TakeItemReplace("B!HAND","B!GAVRNG","B!GAVIN")~ + BGavLT22.1a.1a.2a.3c.1b.2a
++ @1358 DO ~SetGlobal("B!GavinFinger","GLOBAL",1) SetGlobal("B!DisableFlirts","GLOBAL",1)  ApplyDamage("B!GAVIN",2,CRUSHING) IncrementGlobal("B!GavinOffend","GLOBAL",1) TakeItemReplace("B!HAND","B!GAVRNG","B!GAVIN")~ + BGavLT22.1a.1a.2a.3c.1b.1
++ @1359 + BGavLT22.1a.1a.2a.3c.1b.2b
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.2a
SAY @1360
= @1344
= @1345
++ @1346 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1a
++ @1347 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1b
++ @1348 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1c
++ @1349 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1d
++ @659 DO ~GiveItemCreate("B!FINGER",Player1,0,0,0)~ + BGavLT22.1a.1a.2a.3c.1b.1e
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.3c.1b.2b
SAY @1361
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2a.4
SAY @1362
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2b
SAY @1363
= @1364
= @1365
++ @1366 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT22.1a.1a.2a.1
++ @1367 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT22.1a.1a.2b.1
++ @1368 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT22.1a.1a.2b.2
++ @1369 DO ~SetGlobal("B!ChastityVow","GLOBAL",1) SetGlobal("B!PCReconsidersSex","GLOBAL",1)~ + BGavLT22.1a.1a.2b.3
++ @1370 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT22.1a.1a.2b.4
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2b.1
SAY @1371
= @1372 
++ @1373 + BGavLT22.1a.1a.2a.1
++ @1374 + BGavLT22.1a.1a.2a.2
++ @1320 + BGavLT22.1a.1a.2a.3
++ @1321  DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT22.1a.1a.2a.4
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2b.2
SAY @1375
IF ~~ THEN DO ~SetGlobal("B!PCReconsidersSex","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2b.3
SAY @1376
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2b.4
SAY @1377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2c
SAY @1378
++ @770 + BGavLT22.1a.1a.2c.1
++ @384 + BGavLT22.1a.1a.2c.2
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1379 + BGavLT22.1a.1a.2a
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2c.1
SAY @1380
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2c.2
SAY @1381
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1a.1a.2d
SAY @1382
= @1378
++ @770 + BGavLT22.1a.1a.2c.1
++ @384 + BGavLT22.1a.1a.2c.2
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1379 + BGavLT22.1a.1a.2a
END

IF ~~ THEN BEGIN BGavLT22.1a.1b
SAY @1383
= @1306
++ @770 + BGavLT22.1a.1a.1
++ @384 + BGavLT22.1a.1a.2
END

IF ~~ THEN BEGIN BGavLT22.1a.1c
SAY @1384
++ @770 + BGavLT22.1a.1a.2c.1
++ @384 + BGavLT22.1a.1a.2c.2
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1385 + BGavLT22.1a.1a.2b
END

IF ~~ THEN BEGIN BGavLT22.1a.3
SAY @1386
= @1378
++ @770 + BGavLT22.1a.1a.2c.1
++ @384 + BGavLT22.1a.1a.2c.2
+ ~!Global("B!GavinSex","GLOBAL",1)~ + @1387 + BGavLT22.1a.1a.2b
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1379 + BGavLT22.1a.1a.2a
END

IF ~~ THEN BEGIN BGavLT22.1a.4
SAY @1388
++ @1302 + BGavLT22.1a.1a
++ @1303 + BGavLT22.1a.1b
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1304 + BGavLT22.1a.1c
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1305 + BGavLT22.1a.1a.2a
END

IF ~~ THEN BEGIN BGavLT22.1d
SAY @1389
++ @1390 + BGavLT22.1d.1
++ @1391 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinOffend","GLOBAL",1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT22.1d.2
++ @1392 + BGavLT22.1d.3
END

IF ~~ THEN BEGIN BGavLT22.1d.1
SAY @1393
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1d.2
SAY @1394
= @1395
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.1d.3
SAY @1396
++ @1397 + BGavLT22.1d.1
++ @1398 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT22.1a.1a.2a.1a
END


IF ~~ THEN BEGIN BGavLT22.2
SAY @1399
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT22.3
SAY @1400
++ @1401 + BGavLT22.1a.1a
++ @1402 + BGavLT22.3a
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1403 + BGavLT22.1a.1a.2b
++ @1404 + BGavLT22.1d.3
END

IF ~~ THEN BEGIN BGavLT22.3a
SAY @1405
= @1406
IF ~~ THEN EXIT
END
END

///* Love Talk 23 - The future, part 2: Where to live */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",46)~ THEN ~B!GAVINJ~ BGavLT23
@1407
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",47) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @474 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT23Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT23.1
++ @1408 EXTERN ~B!GAVINJ~ BGavLT23.2
++ @1409 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT23.3
++ @1410 EXTERN ~B!GAVINJ~ BGavLT23.4
++ @1411 EXTERN ~B!GAVINJ~ BGavLT23.5
++ @1412 EXTERN ~B!GAVINJ~ BGavLT23.6
++ @1413 EXTERN ~B!GAVINJ~ BGavLT23.7
++ @1414 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT23.8
++ @1415 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ BGavLT23.9
++ @1416 EXTERN ~B!GAVINJ~ BGavLT23.10


CHAIN
IF WEIGHT #-2 ~Global("B!GavinLovetalk23Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT23Restart //Retrying LT 23 after a delay
@1417 DO ~SetGlobal("B!GavinLovetalk23Retry","GLOBAL",2)~
END
++ @1414 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT23.8
++ @1415 DO ~IncrementGlobal("B!GavinLove","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ BGavLT23.9
++ @1408 EXTERN ~B!GAVINJ~ BGavLT23.2
++ @1409 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ EXTERN ~B!GAVINJ~ BGavLT23.3
++ @1410 EXTERN ~B!GAVINJ~ BGavLT23.4
++ @1411 EXTERN ~B!GAVINJ~ BGavLT23.5
++ @1412 EXTERN ~B!GAVINJ~ BGavLT23.6
++ @1413 EXTERN ~B!GAVINJ~ BGavLT23.7
++ @1416 EXTERN ~B!GAVINJ~ BGavLT23.10


APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT23.1
SAY @1418
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.2
SAY @1419
++ @1420 + BGavLT23.2a
++ @1421 + BGavLT23.2b
++ @1422 + BGavLT23.2c
++ @1423 + BGavLT23.2d
END

IF ~~ THEN BEGIN BGavLT23.2a
SAY @1424
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.2b
SAY @1425
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.2c
SAY @1426
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.2d
SAY @1427
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.3
SAY @1428
++ @1420 + BGavLT23.2a
++ @1421 + BGavLT23.2b
++ @1422 + BGavLT23.2c
END

IF ~~ THEN BEGIN BGavLT23.4
SAY @1429
IF ~OR(2) Global("B!GavinWantsKids","GLOBAL",1) Global("B!GavinWantsKids","GLOBAL",2)~ THEN GOTO BGavLT23.4a
IF ~!Global("B!GavinWantsKids","GLOBAL",1) !Global("B!GavinWantsKids","GLOBAL",2)~ THEN GOTO BGavLT23.4b
END

IF ~~ THEN BEGIN BGavLT23.4a
SAY @1430
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.4b
SAY @1431
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.5
SAY @1432
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.6
SAY @1433
= @1434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.7
SAY @1435
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.8
SAY @1436
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.9
SAY @1437
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.10
SAY @1438
++ @1439 + BGavLT23.10a
++ @1440 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT23.10b
END

IF ~~ THEN BEGIN BGavLT23.10a
SAY @1441
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT23.10b
SAY @1442
IF ~~ THEN EXIT
END
END

///* Love Talk 24 - holding our breath */


CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",48)~ THEN ~B!GAVINJ~ BGavLT24
@1443
= @1444
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",49) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1445 EXTERN ~B!GAVINJ~ BGavLT24.1
++ @1446 EXTERN ~B!GAVINJ~ BGavLT24.2
++ @1447 EXTERN ~B!GAVINJ~ BGavLT24.3
++ @1448 EXTERN ~B!GAVINJ~ BGavLT24.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT24.1
SAY @1449
++ @1450 + BGavLT24.5
++ @1451 + BGavLT24.6
++ @1446 + BGavLT24.2
++ @1452 + BGavLT24.7
END

IF ~~ THEN BEGIN BGavLT24.2
SAY @1453
= @1454
++ @1455 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.8
++ @1456 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.9
++ @1457 + BGavLT24.10
++ @1458 + BGavLT24.11
END

IF ~~ THEN BEGIN BGavLT24.3
SAY @1459
= @1460
++ @1455 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.8
++ @1456 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.9
++ @1457 + BGavLT24.10
++ @1458 + BGavLT24.11
END

IF ~~ THEN BEGIN BGavLT24.4
SAY @1461
++ @1455 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.8
++ @1456 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.9
++ @1457 + BGavLT24.10
++ @1458 + BGavLT24.11
END

IF ~~ THEN BEGIN BGavLT24.5
SAY @1462
= @1460
++ @1455 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.8
++ @1456 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.9
++ @1457 + BGavLT24.10
++ @1458 + BGavLT24.11
END

IF ~~ THEN BEGIN BGavLT24.6
SAY @1463
++ @1455 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.8
++ @1456 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.9
++ @1457 + BGavLT24.10
++ @1458 + BGavLT24.11
END

IF ~~ THEN BEGIN BGavLT24.7
SAY @1464
++ @1455 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.8
++ @1456 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.9
++ @1457 + BGavLT24.10
++ @1458 + BGavLT24.11
END

IF ~~ THEN BEGIN BGavLT24.8
SAY @1465
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1466 + BGavLT24.16
++ @1467 + BGavLT24.12
++ @1468 + BGavLT24.13
++ @1469 + BGavLT24.14
++ @1470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.15
END

IF ~~ THEN BEGIN BGavLT24.9
SAY @1471
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1472 + BGavLT24.16
++ @1467 + BGavLT24.12
++ @1468 + BGavLT24.13
++ @1469 + BGavLT24.14
++ @1470 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavLT24.15
END

IF ~~ THEN BEGIN BGavLT24.10
SAY @1473
= @1474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT24.11
SAY @1475
= @1474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT24.12
SAY @1476
= @1474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT24.13
SAY @1477
= @1474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT24.14
SAY @1478
= @1474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT24.15
SAY @1479
= @1474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT24.16
SAY @1480
= @1474
IF ~~ THEN EXIT
END
END

///* Love Talk 25 - Bhaal Heritage */

CHAIN
IF WEIGHT #-2 ~Global("B!GavinLovetalk","GLOBAL",50)~ THEN ~B!GAVINJ~ BGavLT25.1
@1481
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",51) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1482 EXTERN ~B!GAVINJ~ BGavLT25.1a
++ @1483 EXTERN ~B!GAVINJ~ BGavLT25.1b
++ @1484 EXTERN ~B!GAVINJ~ BGavLT25.1c
++ @1485 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1486 EXTERN ~B!GAVINJ~ BGavLT25.1d

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1d
@1487
= @1488
= @1489
END 
++ @1490 EXTERN ~B!GAVINJ~ BGavLT25.1a1
++ @1491 EXTERN ~B!GAVINJ~ BGavLT25.1a2
++ @1485 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1484 EXTERN ~B!GAVINJ~ BGavLT25.1x



CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1a
@1492
= @1493
= @1489
END 
++ @1490 EXTERN ~B!GAVINJ~ BGavLT25.1a1
++ @1491 EXTERN ~B!GAVINJ~ BGavLT25.1a2
++ @1485 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1484 EXTERN ~B!GAVINJ~ BGavLT25.1x

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1a1
@1494
END
++ @1495 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1496 EXTERN ~B!GAVINJ~ BGavLT25.1a1a1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1a1a
@1497
= @1498
END
++ @1499 EXTERN ~B!GAVINJ~ BGavLT25.1a1a1
++ @1500 EXTERN ~B!GAVINJ~ BGavLT25.1a1a2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1a1a1
@1501
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1a1a2
@1502 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinNoReturn","GLOBAL",1) LeaveParty() SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeArea()~
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1a2
@1503
= @1504
END
++ @1505 EXTERN ~B!GAVINJ~ BGavLT25.1a2a
++ @1506 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1507 EXTERN ~B!GAVINJ~ BGavLT25.1a1a1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1a2a
@1508
= @1509
= @1510
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1b
@1511
= @1493
= @1504
END
++ @1505 EXTERN ~B!GAVINJ~ BGavLT25.1a2a
++ @1506 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1507 EXTERN ~B!GAVINJ~ BGavLT25.1a1a1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1c
@1512
= @1493
= @1504
END
++ @1505 EXTERN ~B!GAVINJ~ BGavLT25.1a2a
++ @1506 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1507 EXTERN ~B!GAVINJ~ BGavLT25.1a1a1

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT25.1x
@1512
= @1504
END
++ @1505 EXTERN ~B!GAVINJ~ BGavLT25.1a2a
++ @1506 EXTERN ~B!GAVINJ~ BGavLT25.1a1a
++ @1507 EXTERN ~B!GAVINJ~ BGavLT25.1a1a1

///* Love Talk 26 - Forgiveness */
/* DELAYABLE */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",52)~ THEN ~B!GAVINJ~ BGavLT26
@1513
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",53) SetGlobal("B!CheckLT26","GLOBAL",3) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1514 DO ~IncrementGlobal("B!GavinDelayLT","GLOBAL",1) SetGlobal("B!GavinLT26Delay","GLOBAL",1)~ EXTERN ~B!GAVINJ~  BGavLT26.1
++ @1515 EXTERN ~B!GAVINJ~  BGavLT26.2
++ @1516 EXTERN ~B!GAVINJ~  BGavLT26.3
++ @1517 EXTERN ~B!GAVINJ~  BGavLT26.4

CHAIN
IF WEIGHT #-2 ~Global("B!GavinLovetalk26Retry","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT26Restart //Retrying LT 26 after a delay
@1518 DO ~SetGlobal("B!GavinLovetalk26Retry","GLOBAL",2)~
END
++ @1515 EXTERN ~B!GAVINJ~  BGavLT26.2
++ @1516 EXTERN ~B!GAVINJ~  BGavLT26.3
++ @1517 EXTERN ~B!GAVINJ~  BGavLT26.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT26.1
SAY @1519
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT26.2
SAY @1520
++ @1521 + BGavLT26.5
++ @1522 + BGavLT26.6
+ ~Global("B!GavinRomPCEnded","GLOBAL",1)~ + @1523 + BGavLT26.7
++ @1524 + BGavLT26.8
END

IF ~~ THEN BEGIN BGavLT26.3
SAY @1525
= @1526
++ @1521 + BGavLT26.5
++ @1522 + BGavLT26.6
+ ~Global("B!GavinRomPCEnded","GLOBAL",1)~ + @1523 + BGavLT26.7
++ @1524 + BGavLT26.8
END

IF ~~ THEN BEGIN BGavLT26.4
SAY @1527
++ @1521 + BGavLT26.5
++ @1522 + BGavLT26.6
+ ~Global("B!GavinRomPCEnded","GLOBAL",1)~ + @1523 + BGavLT26.7
++ @1524 + BGavLT26.8
END

IF ~~ THEN BEGIN BGavLT26.5
SAY @1528
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT26.6
SAY @1529
++ @1530 + BGavLT26.9
++ @1531 + BGavLT26.10
++ @1532 + BGavLT26.11
++ @1533 + BGavLT26.12
END

IF ~~ THEN BEGIN BGavLT26.7
SAY @1534
= @1529
++ @1530 + BGavLT26.9
++ @1531 + BGavLT26.10
++ @1532 + BGavLT26.11
++ @1533 + BGavLT26.12
END

IF ~~ THEN BEGIN BGavLT26.8
SAY @1535
= @1536
++ @1537 + BGavLT26.13
++ @1538 + BGavLT26.14
++ @1539 + BGavLT26.15
++ @1540 DO ~IncrementGlobal("BGavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ + BGavLT26.16
END

IF ~~ THEN BEGIN BGavLT26.9
SAY @1541
= @1542
= @1543
++ @1537 + BGavLT26.13
++ @1538 + BGavLT26.14
++ @1539 + BGavLT26.15
++ @1540 DO ~IncrementGlobal("BGavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ + BGavLT26.16
END

IF ~~ THEN BEGIN BGavLT26.10
SAY @1544
= @1545
= @1543
++ @1537 + BGavLT26.13
++ @1538 + BGavLT26.14
++ @1539 + BGavLT26.15
++ @1540 DO ~IncrementGlobal("BGavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ + BGavLT26.16
END

IF ~~ THEN BEGIN BGavLT26.11
SAY @1546
= @1542
= @1543
++ @1537 + BGavLT26.13
++ @1538 + BGavLT26.14
++ @1539 + BGavLT26.15
++ @1540 DO ~IncrementGlobal("BGavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ + BGavLT26.16
END

IF ~~ THEN BEGIN BGavLT26.12
SAY @1547
= @1542
= @1543
++ @1537 + BGavLT26.13
++ @1538 + BGavLT26.14
++ @1539 + BGavLT26.15
++ @1540 DO ~IncrementGlobal("BGavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ + BGavLT26.16
END

IF ~~ THEN BEGIN BGavLT26.13
SAY @1548
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT26.14
SAY @1549
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT26.15
SAY @1550
IF ~GlobalGT("B!GavinFinger","GLOBAL",0)~ THEN GOTO BGavLT26.17
IF ~!GlobalGT("B!GavinFinger","GLOBAL",0)~ THEN GOTO BGavLT26.18
END

IF ~~ THEN BEGIN BGavLT26.16
SAY @1551
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT26.17
SAY @1552
= @1553
++ @1554 + BGavLT26.13
++ @1555 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~ + BGavLT26.14
++ @1540 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1) IncrementGlobal("BGavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ + BGavLT26.16
END

IF ~~ THEN BEGIN BGavLT26.18
SAY @1556
= @1557
++ @1558 + BGavLT26.13
++ @1559 + BGavLT26.14
++ @1540 DO ~IncrementGlobal("BGavinRomPCEnded","GLOBAL",1) SetGlobal("B!GavinRomanceActive","GLOBAL",3)~ + BGavLT26.16
END
END

///* Love Talk 27 - getting married in BG1? */


CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",54)~ THEN ~B!GAVINJ~ BGavLT27
@1560 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",55) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1561 EXTERN ~B!GAVINJ~ BGavLT27.1
++ @1446 EXTERN ~B!GAVINJ~ BGavLT27.1
++ @1562 EXTERN ~B!GAVINJ~ BGavLT27.1
++ @1136 EXTERN ~B!GAVINJ~ BGavLT27.2

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT27.1
SAY @1563
++ @1564 + BGavLT27.3
++ @1565 + BGavLT27.4
++ @1566 + BGavLT27.5
++ @1567 + BGavLT27.6
END

IF ~~ THEN BEGIN BGavLT27.2
SAY @1568
++ @1564 + BGavLT27.3
++ @1565 + BGavLT27.4
++ @1566 + BGavLT27.5
++ @1567 + BGavLT27.6
++ @1569 + BGavLT27.7
END

IF ~~ THEN BEGIN BGavLT27.3
SAY @1570
++ @1571 + BGavLT27.8
++ @1572 + BGavLT27.9
++ @1573 + BGavLT27.10
++ @1574 + BGavLT27.11
++ @1575 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.4
SAY @1576
++ @1571 + BGavLT27.8
++ @1572 + BGavLT27.9
++ @1573 + BGavLT27.10
++ @1574 + BGavLT27.11
++ @1575 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.5
SAY @1577
= @1578
++ @1571 + BGavLT27.8
++ @1572 + BGavLT27.9
++ @1573 + BGavLT27.10
++ @1574 + BGavLT27.11
++ @1575 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.6
SAY @1579
= @1578
++ @1571 + BGavLT27.8
++ @1572 + BGavLT27.9
++ @1573 + BGavLT27.10
++ @1574 + BGavLT27.11
++ @1575 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.7
SAY @1580
= @1578
++ @1571 + BGavLT27.8
++ @1572 + BGavLT27.9
++ @1573 + BGavLT27.10
++ @1574 + BGavLT27.11
++ @1575 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.8
SAY @1581
= @1582
++ @1583 + BGavLT27.13
++ @1584 + BGavLT27.14
++ @1585 + BGavLT27.15
++ @1586 + BGavLT27.16
++ @1587 + BGavLT27.17
END

IF ~~ THEN BEGIN BGavLT27.9
SAY @1588
= @1589
++ @1583 + BGavLT27.13
++ @1584 + BGavLT27.14
++ @1585 + BGavLT27.15
++ @1586 + BGavLT27.16
++ @1587 + BGavLT27.17
END

IF ~~ THEN BEGIN BGavLT27.10
SAY @1590
= @1589
++ @1583 + BGavLT27.13
++ @1584 + BGavLT27.14
++ @1585 + BGavLT27.15
++ @1586 + BGavLT27.16
++ @1587 + BGavLT27.17
END

IF ~~ THEN BEGIN BGavLT27.11
SAY @1591
= @1589
++ @1583 + BGavLT27.13
++ @1584 + BGavLT27.14
++ @1585 + BGavLT27.15
++ @1586 + BGavLT27.16
++ @1587 + BGavLT27.17
END

IF ~~ THEN BEGIN BGavLT27.12
SAY @1592
+ ~Global("B!LoveGavin","GLOBAL",1)~ + @1593 + BGavLT27.18
++ @1594 + BGavLT27.19
++ @1595 + BGavLT27.20
++ @1596 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.21
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1597 + BGavLT27.22
+ ~!Global("B!GavinPCInnocent","GLOBAL",1)~ + @1598 + BGavLT27.23
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1599  + BGavLT27.24
++ @1600 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!LoveGavin","GLOBAL",0)~ + BGavLT27.18
END

IF ~~ THEN BEGIN BGavLT27.13
SAY @1601
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.14
SAY @1606
IF ~NumInPartyGT(2)~ THEN GOTO BGavLT27.wed1
IF ~!NumInPartyGT(2)~ THEN GOTO BGavLT27.wed2
END


IF ~~ THEN BEGIN BGavLT27.wed1
SAY @1607
= @1608
++ @1603 DO ~SetGlobal("B!GavinMarried","GLOBAL",1)~ + BGavLT27.27
++ @1609 + BGavLT27.28
END

IF ~~ THEN BEGIN BGavLT27.wed2
SAY @1610
= @1608
++ @1603 DO ~SetGlobal("B!GavinMarried","GLOBAL",1)~ + BGavLT27.27
++ @1609 + BGavLT27.28
END

IF ~~ THEN BEGIN BGavLT27.15
SAY @1611
+ ~Global("B!LoveGavin","GLOBAL",1)~ + @1593 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1) SetGlobal("B!LoveGavin","GLOBAL",0)~ + BGavLT27.18
++ @1594 + BGavLT27.19
++ @1595 + BGavLT27.20
++ @1596 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.21
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1597 + BGavLT27.22
+ ~!Global("B!GavinPCInnocent","GLOBAL",1)~ + @1598 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT27.23
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1612  + BGavLT27.29
END

IF ~~ THEN BEGIN BGavLT27.16
SAY @1613
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.17
SAY @1614
IF ~NumInPartyGT(2)~ THEN GOTO BGavLT27.wed1
IF ~!NumInPartyGT(2)~ THEN GOTO BGavLT27.wed2
END

IF ~~ THEN BEGIN BGavLT27.18
SAY @1615
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT27.19
SAY @1616
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.20
SAY @1617
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.21
SAY @1618
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT27.22
SAY @1619
++ @1620 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT27.31
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1621 + BGavLT27.30
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1622 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT27.31
++ @1623 + BGavLT27.25
END

IF ~~ THEN BEGIN BGavLT27.23
SAY @1624
IF ~~ THEN DO ~RestParty()~ EXIT
END
 
IF ~~ THEN BEGIN BGavLT27.24
SAY @1625
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.25
SAY @1626
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.26
SAY @1627
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT27.27
SAY @1628
IF ~NumInPartyGT(2)~ THEN GOTO BGavLT27.end1
IF ~!NumInPartyGT(2)~ THEN GOTO BGavLT27.end2
END
END

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavLT27.end1
@1629
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1630
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1631
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @1632
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1633
== ~%YESLICK_JOINED%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @1634
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1635
== ~%ELDOTH_JOINED%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1636
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @1637
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1638
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1639
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1640
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1641
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @1642
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @1643
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @1644
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @1645
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @1646
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @1647
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @1648
== ~B!GAVINJ~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @1649
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1650
== ~B!GAVINJ~ @1651
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1652
== ~%JAHEIRA_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1653
== ~B!GAVINJ~ @659
= @1654
END
+ ~Global("B!GavinSex","GLOBAL",1)~ + @770 + BGavLT27.32
+ ~Global("B!GavinSex","GLOBAL",0)~ + @770 DO ~SetGlobal("B!GavinSex","GLOBAL",1)~ + BGavLT27.32
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1655 + BGavLT27.33
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1655 + BGavLT27.34

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT27.end2
SAY @1654
+ ~Global("B!GavinSex","GLOBAL",1)~ + @770 + BGavLT27.32
+ ~Global("B!GavinSex","GLOBAL",0)~ + @770 DO ~SetGlobal("B!GavinSex","GLOBAL",1) SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavLT27.32
+ ~Global("B!GavinSex","GLOBAL",0)~ + @1655 + BGavLT27.33
+ ~Global("B!GavinSex","GLOBAL",1)~ + @1655 + BGavLT27.34
END


IF ~~ THEN BEGIN BGavLT27.28
SAY @1656
++ @1657 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1658 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT27.18
END

IF ~~ THEN BEGIN BGavLT27.29
SAY @1659
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END

IF ~~ THEN BEGIN BGavLT27.30
SAY @1660
= @1602
++ @1603 + BGavLT27.14
++ @1604 DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) RealSetGlobalTimer("B!GavinLovetalkTime","GLOBAL",3600)~ + BGavLT27.26
++ @1605 + BGavLT27.12
END
IF ~~ THEN BEGIN BGavLT27.31
SAY @1661
IF ~~ THEN DO ~RestParty()~ EXIT
END
 
IF ~~ THEN BEGIN BGavLT27.32
SAY @1662
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT27.33
SAY @1663
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT27.34
SAY @1664
IF ~~ THEN DO ~RestParty()~ EXIT
END
END

///* Love Talk 28 - Morning after talk 2 */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",56)~ THEN ~B!GAVINJ~ BGavLT28
@1665
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",57) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1666 EXTERN ~B!GAVINJ~ BGavLT28.1
++ @1667 EXTERN ~B!GAVINJ~ BGavLT28.2
++ @1668 EXTERN ~B!GAVINJ~ BGavLT28.3
++ @1669 EXTERN ~B!GAVINJ~ BGavLT28.4
++ @1670 EXTERN ~B!GAVINJ~ BGavLT28.5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT28.1
SAY @1671
++ @1672 + BGavLT28.5
++ @1673 + BGavLT28.4
++ @1674 + BGavLT28.3
++ @1675 + BGavLT28.5
END

IF ~~ THEN BEGIN BGavLT28.2
SAY @1676
++ @1677 + BGavLT28.5
++ @1673 + BGavLT28.4
++ @1674 + BGavLT28.3
++ @1675 + BGavLT28.5
END

IF ~~ THEN BEGIN BGavLT28.3
SAY @1678
++ @1679 + BGavLT28.6
++ @1680 + BGavLT28.7
++ @1681 + BGavLT28.8
++ @1682 + BGavLT28.9
END

IF ~~ THEN BEGIN BGavLT28.4
SAY @1683
++ @1684 + BGavLT28.10
++ @1685 + BGavLT28.11
++ @1686 + BGavLT28.12
++ @1681 + BGavLT28.8
END

IF ~~ THEN BEGIN BGavLT28.5
SAY @1687
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.6
SAY @1689
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.7
SAY @1690
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.8
SAY @1691
++ @1692 + BGavLT28.13
++ @1693 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavLT28.14
END

IF ~~ THEN BEGIN BGavLT28.9
SAY @1694
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.10
SAY @1695
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.11
SAY @1696
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.12
SAY @1697
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.13
SAY @1698
= @1688
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT28.14
SAY @1699
IF ~~ THEN EXIT
END
END

///* Love Talk 29 - Facing fear */

CHAIN
IF WEIGHT #-2
~Global("B!LT29","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavLT29
@1700
DO ~SetGlobal("B!LT29","GLOBAL",3) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @1701 EXTERN ~B!GAVINJ~ BGavLT29.1
++ @1702 EXTERN ~B!GAVINJ~ BGavLT29.2
++ @1703 EXTERN ~B!GAVINJ~ BGavLT29.3
++ @1704 DO ~IncrementGlobal("B!GavinLTDelay","GLOBAL",1) IncrementGlobal("B!GavinLove","GLOBAL",-1)~ EXTERN ~B!GAVINJ~ BGavLT29.4
++ @1705 EXTERN ~B!GAVINJ~ BGavLT29.5

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT29.1
SAY @1706
++ @1707 + BGavLT29.5
++ @1708 + BGavLT29.6
++ @1709 + BGavLT29.7
++ @1710 + BGavLT29.8
END

IF ~~ THEN BEGIN BGavLT29.2
SAY @1711
++ @1707 + BGavLT29.5
++ @1708 + BGavLT29.6
++ @1709 + BGavLT29.7
++ @1710 + BGavLT29.8
END

IF ~~ THEN BEGIN BGavLT29.3
SAY @1712
++ @1707 + BGavLT29.5
++ @1708 + BGavLT29.6
++ @1709 + BGavLT29.7
++ @1710 + BGavLT29.8
END

IF ~~ THEN BEGIN BGavLT29.4
SAY @1713
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT29.5
SAY @1714
= @1715
++ @1716 + BGavLT29.9
++ @1717 + BGavLT29.10
++ @1718 + BGavLT29.11
++ @1719 + BGavLT29.12
END

IF ~~ THEN BEGIN BGavLT29.6
SAY @1720
++ @1716 + BGavLT29.9
++ @1717 + BGavLT29.10
++ @1718 + BGavLT29.11
++ @1719 + BGavLT29.12
END

IF ~~ THEN BEGIN BGavLT29.7
SAY @1721
= @1722
++ @1716 + BGavLT29.9
++ @1717 + BGavLT29.10
++ @1718 + BGavLT29.11
++ @1719 + BGavLT29.12
END

IF ~~ THEN BEGIN BGavLT29.8
SAY @1723
++ @1716 + BGavLT29.9
++ @1717 + BGavLT29.10
++ @1718 + BGavLT29.11
++ @1719 + BGavLT29.12
END

IF ~~ THEN BEGIN BGavLT29.9
SAY @1724
= @1725
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT29.10
SAY @1726
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT29.11
SAY @1727
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT29.12
SAY @1728
= @1725
IF ~~ THEN EXIT
END
END

///* Love Talk 30 - Facing Sarevok */

CHAIN
IF WEIGHT #-2
~Global("B!GavinLovetalk","GLOBAL",60)~ THEN ~B!GAVINJ~ BGavLT30
@1729
DO ~SetGlobal("B!GavinLovetalk","GLOBAL",61) SetGlobal("B!GavinLTCheck","GLOBAL",0)~
END
++ @770 EXTERN ~B!GAVINJ~ BGavLT30.1
++ @384 EXTERN ~B!GAVINJ~ BGavLT30.2
++ @1730 EXTERN ~B!GAVINJ~ BGavLT30.3
++ @1731 EXTERN ~B!GAVINJ~ BGavLT30.4

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT30.1
SAY @1732
++ @919 + BGavLT30.5
++ @1733 + BGavLT30.6
++ @1734 + BGavLT30.7
++ @1735 + BGavLT30.8
END

IF ~~ THEN BEGIN BGavLT30.2
SAY @1736
++ @919 + BGavLT30.5
++ @1733 + BGavLT30.6
++ @1734 + BGavLT30.7
++ @1735 + BGavLT30.8
END

IF ~~ THEN BEGIN BGavLT30.3
SAY @1737
++ @919 + BGavLT30.5
++ @1733 + BGavLT30.6
++ @1734 + BGavLT30.7
++ @1735 + BGavLT30.8
END

IF ~~ THEN BEGIN BGavLT30.4
SAY @1738
++ @919 + BGavLT30.5
++ @1733 + BGavLT30.6
++ @1734 + BGavLT30.7
++ @1735 + BGavLT30.8
END

IF ~~ THEN BEGIN BGavLT30.5
SAY @1739
= @1740
++ @1603 + BGavLT30.9
++ @1741 + BGavLT30.10
++ @1742 + BGavLT30.11
++ @1743 + BGavLT30.12
END

IF ~~ THEN BEGIN BGavLT30.6
SAY @1744
= @1739
= @1745
= @1746
++ @1603 + BGavLT30.9
++ @1741 + BGavLT30.10
++ @1742 + BGavLT30.11
++ @1743 + BGavLT30.12
END

IF ~~ THEN BEGIN BGavLT30.7
SAY @1747
= @1739
= @1745
= @1746
++ @1603 + BGavLT30.9
++ @1741 + BGavLT30.10
++ @1742 + BGavLT30.11
++ @1743 + BGavLT30.12
END

IF ~~ THEN BEGIN BGavLT30.8
SAY @1748
= @1745
= @1746
++ @1603 + BGavLT30.9
++ @1741 + BGavLT30.10
++ @1742 + BGavLT30.11
++ @1743 + BGavLT30.12
END

IF ~~ THEN BEGIN BGavLT30.9
SAY @1749
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT30.10
SAY @1750
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT30.11
SAY @1751
= @1752
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT30.12
SAY @1753
= @1752
IF ~~ THEN EXIT
END
END

/* WARNINGS AND BREAKS */

/* Reputation Not High Enough */

CHAIN
IF WEIGHT #-3
~Global("B!GavinRepNotHighEnough","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinNeedMoreRep1
@1754 DO ~SetGlobal("B!GavinRepNotHighEnough","GLOBAL",2)~
= @1755
EXIT

CHAIN
IF WEIGHT #-3
~Global("B!GavinRepNotHighEnough","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinNeedMoreRep2
@1756 DO ~SetGlobal("B!GavinRepNotHighEnough","GLOBAL",4)~
= @1757
EXIT

/* Break over Reputation */

CHAIN
IF WEIGHT #-3
~Global("B!GavinRepNotHighEnough","GLOBAL",5)~ THEN ~B!GAVINJ~ BGavinReputationIsAProblem
@1758 DO ~SetGlobal("B!GavinRepNotHighEnough","GLOBAL",6)~
= @1759
EXIT


/* Romance Break over Offence */

CHAIN
IF WEIGHT #-3
~Global("B!GavinRomMustEnd","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinRomanceOffendedBreak
@1760 DO ~SetGlobal("B!GavinRomMustEnd","GLOBAL",2)~
= @1761
EXIT

/* CONCURRENCY */
///* Concurrency Warning 1 */

CHAIN
IF WEIGHT #-3
~Global("B!GavinConcurrentWarning","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinConcurrent1
@1762 DO ~SetGlobal("B!GavinConcurrentWarning","GLOBAL",2)~
EXIT

///* Concurrency Warning 2 */

CHAIN
IF WEIGHT #-3
~Global("B!GavinConcurrentWarning","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinConcurrent2
@1763 DO ~SetGlobal("B!GavinConcurrentWarning","GLOBAL",4)~
EXIT

///* Concurrency Warning 3 */

CHAIN
IF WEIGHT #-3
~Global("B!GavinConcurrentWarning","GLOBAL",5)~ THEN ~B!GAVINJ~ BGavinConcurrent3
@1764
= @1765 DO ~SetGlobal("B!GavinConcurrentWarning","GLOBAL",6)~
EXIT

///* Concurrency Break */

CHAIN
IF WEIGHT #-3
~Global("B!GavinConcurrentWarning","GLOBAL",7)~ THEN ~B!GAVINJ~ BGavPCConcurrentBreak
@1766 DO ~SetGlobal("B!GavinConcurrentWarning","GLOBAL",8)~
END
++ @1767 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.1
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1136 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.2
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1136 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.3
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1136 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.4
++ @1768 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.5
++ @1769 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.6
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1770 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.7
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1770 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.8
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1770 EXTERN ~B!GAVINJ~ BGavPCConcurrentBreak.9

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavPCConcurrentBreak.1
SAY @1771
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1772 + BGavPCConcurrentBreak.10
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1772 + BGavPCConcurrentBreak.11
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1772 + BGavPCConcurrentBreak.12
++ @1773 + BGavPCConcurrentBreak.13
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1774 + BGavPCConcurrentBreak.14
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1774 + BGavPCConcurrentBreak.15
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1774 + BGavPCConcurrentBreak.16
++ @1775 + BGavPCConcurrentBreak.17
++ @1776 + BGavPCConcurrentBreak.18
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.2
SAY @1777
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.3
SAY @1778
++ @1779 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ + BGavPCConcurrentBreak.19
++ @1780 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ + BGavPCConcurrentBreak.20
++ @1781 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ + BGavPCConcurrentBreak.21
++ @1782 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ + BGavPCConcurrentBreak.22
++ @1783 + BGavPCConcurrentBreak.23
++ @1784 + BGavPCConcurrentBreak.24
++ @1785 + BGavPCConcurrentBreak.25
++ @1786 + BGavPCConcurrentBreak.26
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.4
SAY @1778
++ @1779 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ + BGavPCConcurrentBreak.19
++ @1780 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ + BGavPCConcurrentBreak.20
++ @1781 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ + BGavPCConcurrentBreak.21
++ @1782 + BGavPCConcurrentBreak.27
++ @1783 + BGavPCConcurrentBreak.23
++ @1784 + BGavPCConcurrentBreak.24
++ @1785 + BGavPCConcurrentBreak.25
++ @1786 + BGavPCConcurrentBreak.26
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.5
SAY @1787
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1788 + BGavPCConcurrentBreak.28
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1788 + BGavPCConcurrentBreak.29
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1788 + BGavPCConcurrentBreak.30
++ @1789 + BGavPCConcurrentBreak.31
++ @1790 + BGavPCConcurrentBreak.32
+ ~InParty("sharteel") InMyArea("sharteel") !Dead("sharteel")~ + @1791 + BGavPCConcurrentBreak.33
+ ~InParty("ajantis") InMyArea("ajantis") !Dead("ajantis")~ + @1792 + BGavPCConcurrentBreak.34
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1793 + BGavPCConcurrentBreak.35
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1793 + BGavPCConcurrentBreak.36
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1793 + BGavPCConcurrentBreak.37
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.6
SAY @1794
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1795 + BGavPCConcurrentBreak.38
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1795 + BGavPCConcurrentBreak.39
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1795 + BGavPCConcurrentBreak.40
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1796 + BGavPCConcurrentBreak.2
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1796 + BGavPCConcurrentBreak.3
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1796 + BGavPCConcurrentBreak.4
++ @1783 + BGavPCConcurrentBreak.23
++ @1797 + BGavPCConcurrentBreak.5
++ @1798 + BGavPCConcurrentBreak.27
++ @1784 + BGavPCConcurrentBreak.24
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.7
SAY @1799
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.8
SAY @1800
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.9
SAY @1801
++ @1802 + BGavPCConcurrentBreak.38
+ ~!GlobalGT("B!GavinLove","GLOBAL",18)~ + @1803 + BGavPCConcurrentBreak.39
+ ~GlobalGT("B!GavinLove","GLOBAL",18)~ + @1803 + BGavPCConcurrentBreak.40
++ @1804 + BGavPCConcurrentBreak.41
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.10
SAY @1805
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.11
SAY @1806
++ @1807 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.42
++ @1808 + BGavPCConcurrentBreak.43
++ @1809 + BGavPCConcurrentBreak.44
++ @1810 + BGavPCConcurrentBreak.45
++ @1811 + BGavPCConcurrentBreak.46
++ @1812 + BGavPCConcurrentBreak.47
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.12
SAY @1813
++ @1807 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.48
++ @1808 + BGavPCConcurrentBreak.49
++ @1809 + BGavPCConcurrentBreak.44
++ @1810 + BGavPCConcurrentBreak.50
++ @1811 + BGavPCConcurrentBreak.46
++ @1812 + BGavPCConcurrentBreak.47
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.13
SAY @1814
++ @1807 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.48
++ @1808 + BGavPCConcurrentBreak.49
++ @1809 + BGavPCConcurrentBreak.44
++ @1810 + BGavPCConcurrentBreak.50
++ @1811 + BGavPCConcurrentBreak.46
++ @1812 + BGavPCConcurrentBreak.47
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.14
SAY @1815
= @1816
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.15
SAY @1817
++ @1818 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.48
++ @1819 + BGavPCConcurrentBreak.49
++ @1264 + BGavPCConcurrentBreak.50
++ @1820 + BGavPCConcurrentBreak.51
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.16
SAY @1821
++ @1818 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.48
++ @1819 + BGavPCConcurrentBreak.49
++ @1264 + BGavPCConcurrentBreak.50
++ @1820 + BGavPCConcurrentBreak.51
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.17
SAY @1822
++ @1823 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.48
++ @1824 + BGavPCConcurrentBreak.47
++ @1825 + BGavPCConcurrentBreak.52
++ @1820 + BGavPCConcurrentBreak.51
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.18
SAY @1826
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.19
SAY @1827
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.20
SAY @1828
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.21
SAY @1829
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.22
SAY @1830
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.23
SAY @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.24
SAY @659
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.25
SAY @1839
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.26
SAY @1840
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.27
SAY @1841
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.28
SAY @1842
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.29
SAY @1843
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.30
SAY @1844
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.31
SAY @1845
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.32
SAY @1846
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.33
SAY @1847
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.34
SAY @1848
= @1849
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.35
SAY @1850
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.36
SAY @1851
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.37
SAY @1852
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.38
SAY @1853
= @1854
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.39
SAY @1855
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.40
SAY @1856
= @1854
= @1831
= @1832
= @1833
++ @1834 + BGavPCConcurrentBreak.53
++ @1835 + BGavPCConcurrentBreak.54
+ ~GlobalLT("B!GavinLove","GLOBAL",6)~ + @1836 + BGavPCConcurrentBreak.55
+ ~GlobalGT("B!GavinLove","GLOBAL",5) GlobalLT("B!GavinLove","GLOBAL",12)~ + @1836 + BGavPCConcurrentBreak.56
+ ~GlobalGT("B!GavinLove","GLOBAL",11)~ + @1836 + BGavPCConcurrentBreak.57
++ @1837 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.58
++ @1838 DO ~IncrementGlobal("B!GavinLove","GLOBAL",1)~ + BGavPCConcurrentBreak.59
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.41
SAY @1857
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.42
SAY @1858
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.43
SAY @1859
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.44
SAY @1860
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.45
SAY @1861
++ @1862 + BGavPCConcurrentBreak.60
++ @1863 + BGavPCConcurrentBreak.61
++ @1864 + BGavPCConcurrentBreak.62
++ @1865 + BGavPCConcurrentBreak.63
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.46
SAY @1866
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.47
SAY @1867
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.48
SAY @1868
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.49
SAY @1869
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.50
SAY @1870
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.51
SAY @1871
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.52
SAY @1872
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.53
SAY @1873
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.54
SAY @1827
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.55
SAY @1874
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.56
SAY @1875
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.57
SAY @606
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.58
SAY @1876
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.59
SAY @1877
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.60
SAY @1878
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.61
SAY @1879
IF ~~ THEN DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) SetGlobal("B!GavinConcurrentBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.62
SAY @1880
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavPCConcurrentBreak.63
SAY @1881
IF ~~ THEN EXIT
END
END
///* Warning if concurrency exceeded after breaking */

CHAIN
IF WEIGHT #-3
~Global("B!GavinNotADoormat","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinNotADoormatTalk
@1882
= @1883 DO ~SetGlobal("B!GavinNotADoormat","GLOBAL",2)~
EXIT

///* Not a doormat - final break */

CHAIN
IF WEIGHT #-3
~Global("B!GavinNotADoormat","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinFinalBreak
@1884
= @1885 DO ~SetGlobal("B!GavinNotADoormat","GLOBAL",4)~
EXIT

/* PC isn't really interested */

CHAIN
IF WEIGHT #-3
~Global("B!GavinNotInterested","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinNotEnoughInterest1
@1886 DO ~SetGlobal("B!GavinNotInterested","GLOBAL",2)~
EXIT

CHAIN
IF WEIGHT #-3
~Global("B!GavinNotInterested","GLOBAL",3)~ THEN ~B!GAVINJ~ BGavinNotEnoughInterest2
@1887 DO ~SetGlobal("B!GavinNotInterested","GLOBAL",4)~
EXIT

/* PC broke it off a second time */

CHAIN
IF WEIGHT #-3
~Global("B!GavinPCBreak","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinPCBreak
@1888 DO ~SetGlobal("B!GavinPCBreak","GLOBAL",2)~
EXIT


/* PC wants to keep it professional */

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinKeepItProfessional
@1889
EXIT

/* Liar */
CHAIN
IF WEIGHT #-3 ~Global("B!Liar","GLOBAL",1)~ THEN ~B!GAVINJ~ BLiar
@1890
DO ~SetGlobal("B!Liar","GLOBAL",2)~
END
+ ~Gender(Player1,MALE)~ + @1891 EXTERN ~B!GAVINJ~ BLiar.1
+ ~!Gender(Player1,MALE) !Alignment(Player1,MASK_GOOD)~ + @1891 EXTERN ~B!GAVINJ~ BLiar.2
+ ~!Gender(Player1,MALE) Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @1891 EXTERN ~B!GAVINJ~ BLiar.3
+ ~!Gender(Player1,MALE) Kit(Player1,ASSASIN)~ + @1891 EXTERN ~B!GAVINJ~ BLiar.4
+ ~!Gender(Player1,MALE) Kit(Player1,BOUNTYHUNTER)~ + @1891 EXTERN ~B!GAVINJ~ BLiar.5
+ ~!Gender(Player1,MALE) !CheckStatGT(Player1,9,WIS)~ + @1891 EXTERN ~B!GAVINJ~ BLiar.6
+ ~!Gender(Player1,MALE) !CheckStatGT(Player1,11,CHR)~ + @1891 EXTERN ~B!GAVINJ~ BLiar.7
++ @1892 EXTERN ~B!GAVINJ~ BLiar.8
++ @1893 EXTERN ~B!GAVINJ~ BLiar.9
++ @1894 EXTERN ~B!GAVINJ~ BLiar.10

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BLiar.1
SAY @1895
= @1896
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.2
SAY @1897
= @1898
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.3
SAY @1899
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.4
SAY @1900
IF ~~ THEN DO ~SetGlobal("B!GavinOffend","GLOBAL",20)~ EXIT
END

IF ~~ THEN BEGIN BLiar.5
SAY @1901
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.6
SAY @1902
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.7
SAY @1903
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.8
SAY @1904
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.9
SAY @1905
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BLiar.10
SAY @1906
IF ~~ THEN EXIT
END
END

/* Premature Knowledge of Bhaal Break */

CHAIN
IF WEIGHT #-3
~Global("B!GavinBhaalBreak","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavinBhaalBreak
@1907 DO ~SetGlobal("B!GavinBhaalBreak","GLOBAL",2)~
EXIT

/* MISCELLANEOUS LOVETALKS */

/* PC initially refused to sleep with Gavin, but has changed her mind */

APPEND ~B!GAVINJ~
IF ~Global("B!GavinSleepQuestion","GLOBAL",3)~ THEN BEGIN BGavLT20R
SAY @1155
= @1908
++ @1156 DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",4)~ + BGavLT20R.1
++ @1157 DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",4)~ + BGavLT20R.2
++ @1158 DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",4)~ + BGavLT20R.3
++ @1909 DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",1)~ + BGavLT20R.4
END

IF ~~ THEN BEGIN BGavLT20R.1
SAY @1159
= @1160
= @1161
++ @1162 + BGavLT20R.5
++ @1163 + BGavLT20R.6
END

IF ~~ THEN BEGIN BGavLT20R.5
SAY @1164
= @1165
= @1166
++ @1167 + BGavLT20R.7
++ @1168 + BGavLT20R.8
END

IF ~~ THEN BEGIN BGavLT20R.8
SAY @1169
IF ~~ THEN DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20R.7
SAY @1170
= @1171
++ @1910 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT20R.9
++ @1173 + BGavLT20R.10
END

IF ~~ THEN BEGIN BGavLT20R.10
SAY @1911
++ @1175 + BGavLT20R.11
++ @1912 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavLT20R.9
END

IF ~~ THEN BEGIN BGavLT20R.11
SAY @1177
IF ~~ THEN DO ~SetGlobal("B!GavinSleepQuestion","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20R.9
SAY @1913
++ @1011 + BGavLT20R.12
++ @1179 + BGavLT20R.13
END

IF ~~ THEN BEGIN BGavLT20R.13
SAY @1180
IF ~~ THEN DO ~SetGlobal("B!GavinSexQuestion","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20R.12
SAY @1181 
IF ~~ THEN DO ~SetGlobal("B!GavinSexQuestion","GLOBAL",1) SetGlobal("B!PCReconsidersSex","GLOBAL",3) SetGlobal("B!GavinSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavLT20R.6
SAY @1182
= @1165
= @1166
++ @1167 + BGavLT20R.7
++ @1168 + BGavLT20R.8
END

IF ~~ THEN BEGIN BGavLT20R.2
SAY @1159
= @1160
= @1161
++ @1162 + BGavLT20R.5
++ @1163 + BGavLT20R.6
END

IF ~~ THEN BEGIN BGavLT20R.3
SAY @1183
= @1160
= @1161
++ @1162 + BGavLT20R.5
++ @1163 + BGavLT20R.6
END

IF ~~ THEN BEGIN BGavLT20R.4
SAY @1914
IF ~~ THEN DO ~RestParty()~ EXIT
END
END

/* PC initially refused to have sex with Gavin, but has changed her mind */

CHAIN
IF WEIGHT #-2
~Global("B!PCReconsidersSex","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavRC
@1915 DO ~SetGlobal("B!PCReconsidersSex","GLOBAL",3)~
END
+ ~Global("B!ChastityVow","GLOBAL",0)~ + @1916 + BGavRC.1
+ ~Global("B!ChastityVow","GLOBAL",1)~ + @1917 + BGavRC.2
++ @1918 + BGavRC.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavRC.1
SAY @1919
++ @1920 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavRC.1a
++ @1921 DO ~SetGlobal("B!ChastityVow","GLOBAL",1)~ + BGavRC.1b
END

IF ~~ THEN BEGIN BGavRC.1a
SAY @1922
= @1923
++ @1603 + BGavRC.1a1
++ @1924 + BGavRC.1a2
END

IF ~~ THEN BEGIN BGavRC.1a1
SAY @1925
IF ~~ THEN DO ~SetGlobal("B!GavinSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavRC.1a2
SAY @1926
IF ~~ THEN DO ~SetGlobal("B!PCReconsidersSex","GLOBAL",0) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavRC.1b
SAY @1927
= @1928
++ @1603 + BGavRC.1a1
++ @1924 + BGavRC.1a2
END

IF ~~ THEN BEGIN BGavRC.2
SAY @1929
IF ~~ THEN DO ~SetGlobal("B!GavinSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavRC.3
SAY @1930
IF ~~ THEN DO ~SetGlobal("B!PCReconsidersSex","GLOBAL",0) RestParty()~ EXIT
END

/* Morning After Reconsidering Sex */
IF ~Global("B!PCReconsidersSex","GLOBAL",4)~ THEN BEGIN BGavMA.1
SAY @1931 
++ @1219 DO ~SetGlobal("B!PCReconsidersSex","GLOBAL",5)~ + BGavMA.1a
++ @1220 DO ~SetGlobal("B!PCReconsidersSex","GLOBAL",5)~ + BGavMA.1b
END

IF ~~ THEN BEGIN BGavMA.1a
SAY @1221
= @1222
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1223 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavMA.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1224 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavMA.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1225 + BGavMA.1a.2
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1226 + BGavMA.1a.2
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1227 + BGavMA.1a.3
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",2) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1228 + BGavMA.1a.3
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1229 + BGavMA.1a.4
++ @1230 + BGavMA.1a.5
++ @1231 + BGavMA.1a.6
END

IF ~~ THEN BEGIN BGavMA.1b
SAY @1232
= @1222
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1223 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavMA.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1224 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavMA.1a.1
+ ~Global("B!GavinPCInnocent","GLOBAL",2)~ + @1225 + BGavMA.1a.2
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",1) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1226 + BGavMA.1a.2
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1227 + BGavMA.1a.3
+ ~OR(2) Global("B!GavinPCInnocent","GLOBAL",2) Global("B!GavinPCInnocent","GLOBAL",3)~ + @1233 + BGavMA.1a.3
+ ~Global("B!GavinPCInnocent","GLOBAL",1)~ + @1229 + BGavMA.1a.4
++ @1230 + BGavMA.1a.5
END

IF ~~ THEN BEGIN BGavMA.1a.1
SAY @1234
++ @1235 + BGavMA.1a.1a
++ @1236 + BGavMA.1a.1b
++ @1237 + BGavMA.1a.1c
++ @1238 + BGavMA.1a.1d
END

IF ~~ THEN BEGIN BGavMA.1a.1a
SAY @1239
++ @1240 + BGavMA.1a.1a.1
++ @1241 + BGavMA.1a.1a.2
++ @1242 + BGavMA.1a.1a.3
END

IF ~~ THEN BEGIN BGavMA.1a.1a.1
SAY @1243
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.1a.2
SAY @1244
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.1a.3
SAY @1245
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.1b
SAY @1246
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.1c
SAY @1247
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.1d
SAY @1248
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.2
SAY @1249
++ @1250 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavMA.1a.2a
++ @1251 + BGavMA.1a.2b
++ @1252 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavMA.1a.2c
++ @1253 + BGavMA.1a.4
END

IF ~~ THEN BEGIN BGavMA.1a.2a
SAY @1254
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.2b
SAY @1255
++ @1250 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavMA.1a.2a
++ @1252 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavMA.1a.2c
++ @1253 + BGavMA.1a.4
END

IF ~~ THEN BEGIN BGavMA.1a.2c
SAY @1256
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.3
SAY @1257
++ @1250 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavMA.1a.2a
++ @1251 + BGavMA.1a.2b
++ @1258 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",1)~ + BGavMA.1a.2c
++ @1253 + BGavMA.1a.4
END

IF ~~ THEN BEGIN BGavMA.1a.4
SAY @1259
IF ~!Global("B!GavinWantsKids","GLOBAL",3)~ THEN GOTO BGavMA.1a.4a
IF ~Global("B!GavinWantsKids","GLOBAL",3)~ THEN GOTO BGavMA.1a.4b
END

IF ~~ THEN BEGIN BGavMA.1a.4a
SAY @1260
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.4b
SAY @1261
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.6
SAY @1262
++ @1263 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavMA.1a.5a
++ @1264 + BGavMA.1a.5b
++ @1265 + BGavMA.1a.5c
END

IF ~~ THEN BEGIN BGavMA.1a.5
SAY @1266
++ @1267 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavMA.1a.5a
++ @1028 + BGavMA.1a.5b
++ @1265 + BGavMA.1a.5c
END

IF ~~ THEN BEGIN BGavMA.1a.5a
SAY @1268
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.5b
SAY @1269
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavMA.1a.5c
SAY @1270
++ @1271 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1)~ + BGavMA.1a.5a
++ @1272 + BGavMA.1a.5b
END

/* Gavin cut his finger off */

IF ~Global("B!GavinFinger","GLOBAL",3)~ THEN BEGIN BGavFinger
SAY @1932
++ @1933 DO ~SetGlobal("B!GavinFinger","GLOBAL",4) SetGlobal("B!DisableFlirts","GLOBAL",0)~ + BGavFinger.1
++ @475 DO ~SetGlobal("B!GavinFinger","GLOBAL",4) SetGlobal("B!DisableFlirts","GLOBAL",0)~ + BGavFinger.1a
++ @1934 DO ~SetGlobal("B!GavinFinger","GLOBAL",4) SetGlobal("B!DisableFlirts","GLOBAL",0)~ + BGavFinger.1b
++ @1935 DO ~SetGlobal("B!GavinFinger","GLOBAL",4) SetGlobal("B!DisableFlirts","GLOBAL",0)~ + BGavFinger.4
++ @1936 DO ~SetGlobal("B!GavinFinger","GLOBAL",4) SetGlobal("B!DisableFlirts","GLOBAL",0)~ + BGavFinger.5
END

IF ~~ THEN BEGIN BGavFinger.1
SAY @1937
++ @1938 + BGavFinger.1a
++ @1939 + BGavFinger.1b
++ @1940 + BGavFinger.1c
++ @1941 + BGavFinger.1d
END

IF ~~ THEN BEGIN BGavFinger.1a
SAY @1942
++ @1943 + BGavFinger.1a.1
++ @1944 + BGavFinger.1a.2
++ @1945 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinLove","GLOBAL",-1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavFinger.1a.3
++ @1946 + BGavFinger.1a.4
END

IF ~~ THEN BEGIN BGavFinger.1a.1
SAY @1947
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFinger.1a.2
SAY @1948
++ @1949 + BGavFinger.1a.2b
++ @1950 DO ~TakePartyItem("B!FINGER") GiveItemCreate("B!GRING2",Player1,0,0,0) IncrementGlobal("B!GavinLove","GLOBAL",-1)~ + BGavFinger.1a.2a
++ @1951 + BGavFinger.1a.1
END

IF ~~ THEN BEGIN BGavFinger.1a.2b
SAY @1952
= @1953
++ @1954  DO ~TakePartyItem("B!FINGER") GiveItemCreate("B!GRING2",Player1,0,0,0) IncrementGlobal("B!GavinLove","GLOBAL",-1)~ + BGavFinger.1a.2b.1
++ @1951 + BGavFinger.1a.1
END

IF ~~ THEN BEGIN BGavFinger.1a.2b.1
SAY @1955
++ @1943 + BGavFinger.1a.1
++ @1945 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinLove","GLOBAL",-1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavFinger.1a.3
++ @1946 + BGavFinger.1a.4
END

IF ~~ THEN BEGIN BGavFinger.1a.2a
SAY @1956
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFinger.1a.3
SAY @1957
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFinger.1a.4
SAY @1958
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavFinger.1b
SAY @1959
++ @1943 + BGavFinger.1a.1
++ @1944 + BGavFinger.1a.2
++ @1945 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinLove","GLOBAL",-1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavFinger.1a.3
++ @1946 + BGavFinger.1a.4
END

IF ~~ THEN BEGIN BGavFinger.1c
SAY @1960
++ @1949 + BGavFinger.1a.2b
++ @1961 DO ~TakePartyItem("B!FINGER") GiveItemCreate("B!GRING2",Player1,0,0,0) IncrementGlobal("B!GavinLove","GLOBAL",-1)~ + BGavFinger.1a.2a
++ @1962 + BGavFinger.1a.1
++ @1945 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinLove","GLOBAL",-1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavFinger.1a.3
END

IF ~~ THEN BEGIN BGavFinger.1d
SAY @1963
++ @1943 + BGavFinger.1a.1
++ @1944 + BGavFinger.1a.2
++ @1945 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinLove","GLOBAL",-1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavFinger.1a.3
++ @1946 + BGavFinger.1a.4
END

IF ~~ THEN BEGIN BGavFinger.4
SAY @1964
++ @1943 + BGavFinger.1a.1
++ @1944 + BGavFinger.1a.2
++ @1945 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinLove","GLOBAL",-1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavFinger.1a.3
++ @1946 + BGavFinger.1a.4
END

IF ~~ THEN BEGIN BGavFinger.5
SAY @1965
++ @1943 + BGavFinger.1a.1
++ @1944 + BGavFinger.1a.2
++ @1945 DO ~SetGlobal("B!GavinRomanceActive","GLOBAL",3) IncrementGlobal("B!GavinLove","GLOBAL",-1) IncrementGlobal("B!GavinRomPCEnded","GLOBAL",1)~ + BGavFinger.1a.3
++ @1946 + BGavFinger.1a.4
END

/* Retrying intimacy after finding it distasteful */
IF ~Global("B!GavinRetryIntimacy","GLOBAL",2)~ THEN BEGIN BGavinRetryIntimacy
SAY @1966
++ @1967 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1) SetGlobal("B!GavinRetryIntimacy","GLOBAL",3)~ + BGavinRetryIntimacy1
++ @1968 DO ~SetGlobal("B!GavinPCLikedSex","GLOBAL",1) SetGlobal("B!GavinRetryIntimacy","GLOBAL",3)~ + BGavinRetryIntimacy1
++ @1969 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",3)~ + BGavinRetryIntimacy2
++ @1970 DO ~SetGlobal("B!GavinRetryIntimacy","GLOBAL",3)~ + BGavLT21.1a.4b
END

IF ~~ THEN BEGIN BGavinRetryIntimacy1
SAY @1971
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavinRetryIntimacy2
SAY @1972
IF ~~ THEN EXIT
END
END

/* HINTS */
///* LT 5 */
CHAIN
IF ~Global("B!LT5Hint","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT5Hint
@1973
DO ~SetGlobal("B!LT5Hint","GLOBAL",2)~
END
++ @1974 EXTERN ~B!GAVINJ~ BGavLT5Hint.1
+ ~AreaType(CITY)~ + @1975 EXTERN ~B!GAVINJ~ BGavLT5Hint.1
+ ~AreaType(DUNGEON)~ + @1976 EXTERN ~B!GAVINJ~ BGavLT5Hint.1
++ @1977 EXTERN ~B!GAVINJ~ BGavLT5Hint.2
++ @1978 EXTERN ~B!GAVINJ~ BGavLT5Hint.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT5Hint.1
SAY @1979
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT5Hint.2
SAY @1980
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT5Hint.3
SAY @1981
IF ~~ THEN EXIT
END
END

///* LT 9 */
CHAIN
IF ~Global("B!LT9Hint","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT9Hint
@1982
DO ~SetGlobal("B!LT9Hint","GLOBAL",2)~
END
++ @1983 EXTERN ~B!GAVINJ~ BGavLT9Hint.1
+ ~AreaType(FOREST)~ + @1984 EXTERN ~B!GAVINJ~ BGavLT9Hint.1
+ ~AreaType(DUNGEON)~ + @1985 EXTERN ~B!GAVINJ~ BGavLT9Hint.1
++ @1977 EXTERN ~B!GAVINJ~ BGavLT9Hint.2
++ @1986 EXTERN ~B!GAVINJ~ BGavLT9Hint.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT9Hint.1
SAY @1979
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT9Hint.2
SAY @1987
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT9Hint.3
SAY @1988
IF ~~ THEN EXIT
END
END

///* LT 12 */
CHAIN
IF ~Global("B!LT12Hint","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavLT12Hint
@1989
DO ~SetGlobal("B!LT12Hint","GLOBAL",2)~
END
++ @1990 EXTERN ~B!GAVINJ~ BGavLT12Hint.1
+ ~AreaType(FOREST)~ + @1991 EXTERN ~B!GAVINJ~ BGavLT12Hint.1
+ ~AreaType(DUNGEON)~ + @1992 EXTERN ~B!GAVINJ~ BGavLT12Hint.1
++ @1977 EXTERN ~B!GAVINJ~ BGavLT12Hint.2
++ @1993 EXTERN ~B!GAVINJ~ BGavLT12Hint.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavLT12Hint.1
SAY @1994
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12Hint.2
SAY @1995
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavLT12Hint.3
SAY @1996
IF ~~ THEN EXIT
END
END

///* Ring Delivery */
CHAIN
IF ~Global("B!RingHint","GLOBAL",1)~ THEN ~B!GAVINJ~ BGavRingHint
@1997
DO ~SetGlobal("B!RingHint","GLOBAL",2)~
END
++ @1998 EXTERN ~B!GAVINJ~ BGavRingHint.1
+ ~AreaType(DUNGEON)~ + @1999 EXTERN ~B!GAVINJ~ BGavRingHint.1
++ @1977 EXTERN ~B!GAVINJ~ BGavRingHint.2
++ @2000 EXTERN ~B!GAVINJ~ BGavRingHint.3

APPEND ~B!GAVINJ~

IF ~~ THEN BEGIN BGavRingHint.1
SAY @2001
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavRingHint.2
SAY @2002
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavRingHint.3
SAY @2003
IF ~~ THEN EXIT
END

END

/* Racial specials */
///* Half-orc */
CHAIN
IF ~Global("B!GavinHalfOrc","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavHO
@2004
DO ~SetGlobal("B!GavinHalfOrc","GLOBAL",3)~
END
++ @287 EXTERN ~B!GAVINJ~ BGavHO.1
++ @1446 EXTERN ~B!GAVINJ~ BGavHO.2
++ @2005 EXTERN ~B!GAVINJ~ BGavHO.3
++ @2006 EXTERN ~B!GAVINJ~ BGavHO.4

APPEND ~B!GAVINJ~
IF ~~ THEN BEGIN BGavHO.1
SAY @2007
++ @2008 + BGavHO.5
++ @2009 + BGavHO.6
++ @2010 + BGavHO.7
++ @2011 + BGavHO.8
END

IF ~~ THEN BEGIN BGavHO.2
SAY @2012
++ @2008 + BGavHO.5
++ @2009 + BGavHO.6
++ @2010 + BGavHO.7
++ @2013 + BGavHO.8
++ @2011 + BGavHO.9
END

IF ~~ THEN BEGIN BGavHO.3
SAY @2014
++ @2008 + BGavHO.5
++ @2009 + BGavHO.6
++ @2010 + BGavHO.7
++ @2013 + BGavHO.8
++ @2011 + BGavHO.9
END

IF ~~ THEN BEGIN BGavHO.4
SAY @2015
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.5
SAY @2016
++ @2017 + BGavHO.10
++ @2018 + BGavHO.11
++ @2019 + BGavHO.12
++ @2020 + BGavHO.13
END

IF ~~ THEN BEGIN BGavHO.6
SAY @2021
++ @2022 + BGavHO.10
++ @2018 + BGavHO.11
++ @2019 + BGavHO.12
++ @2023 + BGavHO.13
END

IF ~~ THEN BEGIN BGavHO.7
SAY @2024
++ @2022 + BGavHO.10
++ @2018 + BGavHO.11
++ @2019 + BGavHO.12
++ @2023 + BGavHO.13
END

IF ~~ THEN BEGIN BGavHO.8
SAY @2025
++ @2022 + BGavHO.10
++ @2018 + BGavHO.11
++ @2019 + BGavHO.12
++ @2023 + BGavHO.13
END

IF ~~ THEN BEGIN BGavHO.9
SAY @2026
++ @2027 + BGavHO.14
++ @2017 + BGavHO.10
++ @2018 + BGavHO.11
++ @2019 + BGavHO.12
++ @2020 + BGavHO.13
END

IF ~~ THEN BEGIN BGavHO.10
SAY @2028
++ @2029 + BGavHO.15
++ @2030 + BGavHO.16
++ @2031 + BGavHO.17
++ @2032 + BGavHO.14
END

IF ~~ THEN BEGIN BGavHO.11
SAY @2033
++ @2034 + BGavHO.18
++ @2035 + BGavHO.20
++ @2036 + BGavHO.21
++ @2037 + BGavHO.22
END

IF ~~ THEN BEGIN BGavHO.12
SAY @2038
++ @2029 + BGavHO.15
++ @2039 + BGavHO.16
++ @2031 + BGavHO.17
++ @2032 + BGavHO.14
END

IF ~~ THEN BEGIN BGavHO.13
SAY @2040
++ @2029 + BGavHO.15
++ @2039 + BGavHO.16
++ @2031 + BGavHO.17
++ @2032 + BGavHO.14
END

IF ~~ THEN BEGIN BGavHO.14
SAY @2041
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.15
SAY @2042
=  @2043
++ @2034 + BGavHO.18
++ @2035 + BGavHO.19
++ @2036 + BGavHO.20
++ @2044 + BGavHO.21
END

IF ~~ THEN BEGIN BGavHO.16
SAY @2045
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.17
SAY @2046
++ @2047 + BGavHO.19
++ @2048 + BGavHO.20
++ @2049 + BGavHO.22
++ @2050 + BGavHO.23
++ @2051 + BGavHO.24
END

IF ~~ THEN BEGIN BGavHO.18
SAY @2052
= @2053
= @2054
= @2055
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.19
SAY @2056
= @2057
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.20
SAY @2058
= @2059
= @2053
= @2054
= @2055
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.21
SAY @2060
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.22
SAY @2061
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.23
SAY @2062
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHO.24
SAY @2063
IF ~~ THEN EXIT
END

END

///* Halfling */
CHAIN IF ~Global("B!GavinHalfling","GLOBAL",2)~ THEN ~B!GAVINJ~ BGavHalfling
@2004
DO ~SetGlobal("B!GavinHalfling","GLOBAL",3)~
END
++ @287 EXTERN ~B!GAVINJ~ BGavHalfling.1
++ @1446 EXTERN ~B!GAVINJ~ BGavHalfling.2
++ @2005 EXTERN ~B!GAVINJ~ BGavHalfling.3
++ @2006 EXTERN ~B!GAVINJ~ BGavHalfling.4

APPEND ~B!GAVINJ~
IF ~~ THEN BEGIN BGavHalfling.1
SAY @2007
++ @2008 + BGavHalfling.5
++ @2009 + BGavHalfling.6
++ @2010 + BGavHalfling.7
++ @2011 + BGavHalfling.8
END

IF ~~ THEN BEGIN BGavHalfling.2
SAY @2012
++ @2008 + BGavHalfling.5
++ @2009 + BGavHalfling.6
++ @2010 + BGavHalfling.7
++ @2013 + BGavHalfling.8
++ @2011 + BGavHalfling.9
END

IF ~~ THEN BEGIN BGavHalfling.3
SAY @2014
++ @2008 + BGavHalfling.5
++ @2009 + BGavHalfling.6
++ @2010 + BGavHalfling.7
++ @2013 + BGavHalfling.8
++ @2011 + BGavHalfling.9
END

IF ~~ THEN BEGIN BGavHalfling.4
SAY @2015
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.5
SAY @2016
++ @2064 + BGavHalfling.10
++ @2018 + BGavHalfling.11
++ @2019 + BGavHalfling.12
++ @2020 + BGavHalfling.13
END

IF ~~ THEN BEGIN BGavHalfling.6
SAY @2021
++ @2065 + BGavHalfling.10
++ @2018 + BGavHalfling.11
++ @2019 + BGavHalfling.12
++ @2023 + BGavHalfling.13
END

IF ~~ THEN BEGIN BGavHalfling.7
SAY @2024
++ @2065 + BGavHalfling.10
++ @2018 + BGavHalfling.11
++ @2019 + BGavHalfling.12
++ @2023 + BGavHalfling.13
END

IF ~~ THEN BEGIN BGavHalfling.8
SAY @2025
++ @2065 + BGavHalfling.10
++ @2018 + BGavHalfling.11
++ @2019 + BGavHalfling.12
++ @2023 + BGavHalfling.13
END

IF ~~ THEN BEGIN BGavHalfling.9
SAY @2026
++ @2027 + BGavHalfling.14
++ @2064 + BGavHalfling.10
++ @2018 + BGavHalfling.11
++ @2019 + BGavHalfling.12
++ @2020 + BGavHalfling.13
END

IF ~~ THEN BEGIN BGavHalfling.10
SAY @2028
++ @2029 + BGavHalfling.15
++ @2030 + BGavHalfling.16
++ @2031 + BGavHalfling.17
++ @2032 + BGavHalfling.14
END

IF ~~ THEN BEGIN BGavHalfling.11
SAY @2066
++ @2067 + BGavHalfling.18
++ @2035 + BGavHalfling.20
++ @2068 + BGavHalfling.21
++ @2037 + BGavHalfling.22
END

IF ~~ THEN BEGIN BGavHalfling.12
SAY @2038
++ @2029 + BGavHalfling.15
++ @2039 + BGavHalfling.16
++ @2031 + BGavHalfling.17
++ @2032 + BGavHalfling.14
END

IF ~~ THEN BEGIN BGavHalfling.13
SAY @2040
++ @2029 + BGavHalfling.15
++ @2039 + BGavHalfling.16
++ @2031 + BGavHalfling.17
++ @2032 + BGavHalfling.14
END

IF ~~ THEN BEGIN BGavHalfling.14
SAY @2041
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.15
SAY @2042
=  @2069
++ @2067 + BGavHalfling.18
++ @2035 + BGavHalfling.19
++ @2068 + BGavHalfling.20
++ @2044 + BGavHalfling.21
END

IF ~~ THEN BEGIN BGavHalfling.16
SAY @2045
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.17
SAY @2046
++ @2047 + BGavHalfling.19
++ @2070 + BGavHalfling.20
++ @2049 + BGavHalfling.22
++ @2050 + BGavHalfling.23
++ @2051 + BGavHalfling.24
END

IF ~~ THEN BEGIN BGavHalfling.18
SAY @2071
= @2072
= @2054
= @2055
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.19
SAY @2056
= @2057
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.20
SAY @2073
= @2074
= @2072
= @2054
= @2055
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.21
SAY @2060
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.22
SAY @2061
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.23
SAY @2062
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BGavHalfling.24
SAY @2063
IF ~~ THEN EXIT
END

/* Girdle of Masculinity */
IF ~Global("B!GavinPCGenderBelt","GLOBAL",1)~ BGavPCGender
SAY @2075
++ @2076 DO ~SetGlobal("B!GavinPCGenderBelt","GLOBAL",2)~ + BGavPCGender1
++ @2077 DO ~SetGlobal("B!GavinPCGenderBelt","GLOBAL",2)~ + BGavPCGender2
++ @2078 DO ~SetGlobal("B!GavinPCGenderBelt","GLOBAL",2)~ + BGavPCGender3
++ @2079 DO ~SetGlobal("B!GavinPCGenderBelt","GLOBAL",2)~ + BGavPCGender4
END

IF ~~ BGavPCGender1
SAY @2080
IF ~~ THEN EXIT
END

IF ~~ BGavPCGender2
SAY @2081
IF ~~ THEN EXIT
END

IF ~~ BGavPCGender3
SAY @2082
IF ~~ THEN EXIT
END

IF ~~ BGavPCGender4
SAY @2083
IF ~~ THEN EXIT
END

IF ~Global("B!GavinPCGenderBelt","GLOBAL",3)~ BGavPCGender5
SAY @2084
IF ~~ THEN DO ~SetGlobal("B!GavinPCGenderBelt","GLOBAL",4)~ EXIT
END

END