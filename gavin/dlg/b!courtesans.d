/* updated */
CHAIN
IF WEIGHT #-1 ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavinProstitute","GLOBAL",0)~ THEN ~%tutu_var%PROST1~ BGavinProstitute
@0
DO ~SetGlobal("B!GavinProstitute","GLOBAL",1)~
== ~B!GAVINJ~ @1
== ~%tutu_var%PROST1~ @2
== ~B!GAVINJ~ @3
== ~%tutu_var%PROST1~ @4
== ~B!GAVINJ~ @5
== ~%tutu_var%PROST1~ @6
== ~B!GAVINJ~ @7
END
+ ~PartyGoldGT(19)~ + @8 DO ~TakePartyGold(20) DestroyGold(20)~ EXTERN ~B!GAVINJ~ BGavinProstitute1
++ @9 EXTERN ~B!GAVINJ~ BGavinProstitute2

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinProstitute1
@10
= @11
== ~%tutu_var%PROST1~ @12
== ~B!GAVINJ~ @13
== ~%tutu_var%PROST1~ @14
== ~B!GAVINJ~ @15 DO ~SetGlobal("B!HarlotDeactivate","GLOBAL",1) ActionOverride("%tutu_scriptp%ROSBA_B",MoveToOffset([50.50])) ActionOverride("%tutu_scriptp%ROSBA_C",MoveToOffset([50.50])) Deactivate("%tutu_scriptp%ROSBA_B") Deactivate("%tutu_scriptp%ROSBA_C")~
= @16
EXIT

CHAIN
IF ~~ THEN ~B!GAVINJ~ BGavinProstitute2
@17
= @18
== ~%tutu_var%PROST1~ @19
EXIT

CHAIN
IF WEIGHT #-1 ~IsGabber("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) GlobalGT("B!GavinProstitute","GLOBAL",0)~ THEN ~%tutu_var%PROST1~ BGavinProstitute3
@20
== ~B!GAVINJ~ @21
== ~%tutu_var%PROST1~ @22
== ~B!GAVINJ~ @23
EXIT
