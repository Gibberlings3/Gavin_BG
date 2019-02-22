/* New interjections - ToSC areas */

/* Ulgoth's Beard */

I_C_T ~%tutu_scriptbg%CALAHA%eet_var%~ 0 BGavCalahan0
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @0
== ~%tutu_scriptbg%CALAHA%eet_var%~  IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @2
== ~%tutu_scriptbg%CALAHA%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @4
== ~%tutu_scriptbg%CALAHA%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @5
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @6
== ~%tutu_scriptbg%CALAHA%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @7
= @8
END

I_C_T ~%tutu_scriptbg%CALAHA%eet_var%~ 8 BGavCalahan8
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @9
== ~%tutu_scriptbg%CALAHA%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @10
END

I_C_T ~%tutu_scriptbg%CALAHA%eet_var%~ 9 BGavCalahan9
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_scriptbg%CALAHA%eet_var%~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @12
END

I_C_T ~%tutu_var%DUSHAI~ 14 BGavDushai14
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @13
END

I_C_T ~%tutu_var%DUSHAI~ 0 BGavDushai0
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @14
== ~%tutu_var%DUSHAI~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @15
END

I_C_T ~%tutu_var%DUSHAI~ 2 BGavDushai2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @16
END 

I_C_T ~%tutu_scripts%HANDAL2~ 7 BGavShandalar2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @17
== ~%tutu_scripts%HANDAL2~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @18
END

I_C_T ~%tutu_scripts%HANDAL2~ 16 BGavShandalar16
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @19
== ~%tutu_scripts%HANDAL2~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @20
= @21
END

I_C_T ~%tutu_var%HURGAN~ 0 BGavHurgan0
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @22
== ~%tutu_var%HURGAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @23
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @24
== ~%tutu_var%HURGAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @25
= @26
END

I_C_T ~%tutu_var%HURGAN~ 7 BGavHurgan7
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @27
END
 
I_C_T ~%tutu_var%HURGAN~ 16 BGavHurgan16
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @28
== ~%tutu_var%HURGAN~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T ~%tutu_var%THEREL~ 0 BGavTherella1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @30
== ~%tutu_var%THEREL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @31
END

I_C_T ~%tutu_var%THEREL~ 1 BGavTherella1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @30
== ~%tutu_var%THEREL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @31
END

I_C_T ~%tutu_var%THEREL~ 2 BGavTherella1
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @30
== ~%tutu_var%THEREL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @31
END

I_C_T ~%tutu_var%THEREL~ 5 BGavTherella2
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @32 DO ~IncrementGlobal("B!GavinOffend","GLOBAL",1)~
END

I_C_T ~%tutu_var%THEREL~ 7 BGavTherella3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @33
END

I_C_T ~%tutu_var%THEREL~ 11 BGavTherella4
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @34
== ~%tutu_var%THEREL~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @35
END

/* Durlag's Tower */

INTERJECT ~%tutu_var%BAYARD~ 1 BGavBayard
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @36
END
++ @37 EXTERN ~B!GAVINJ~ BGavBayard1
++ @38 EXTERN ~B!GAVINJ~ BGavBayard2
++ @39 EXTERN ~%tutu_var%BAYARD~ BGavBayard3

CHAIN ~B!GAVINJ~ BGavBayard1
@40
END
IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN EXTERN ~B!GAVINJ~ BGavBayard4
IF ~!HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN EXTERN ~B!GAVINJ~ BGavBayard5

CHAIN ~B!GAVINJ~ BGavBayard2
@41
END
IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN EXTERN ~B!GAVINJ~ BGavBayard4
IF ~!HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN EXTERN ~B!GAVINJ~ BGavBayard5

CHAIN ~%tutu_var%BAYARD~ BGavBayard3
@42
EXTERN ~B!GAVINJ~ BGavBayard2

CHAIN ~B!GAVINJ~ BGavBayard4
@43
DO ~Spell("bayard",CLERIC_CURE_LIGHT_WOUNDS)
Wait(5)~
END
COPY_TRANS ~%tutu_var%BAYARD~ 1

CHAIN ~B!GAVINJ~ BGavBayard5
@44
END
COPY_TRANS ~%tutu_var%BAYARD~ 1

I_C_T ~%tutu_var%BAYARD~ 12 BGavBayard12
== ~%tutu_var%BAYARD~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID)~ THEN @45
END

I_C_T ~%tutu_var%DALTON~ 3 BGavDalton3
== ~B!GAVINJ~ IF ~InParty("B!GAVIN") InMyArea("B!GAVIN") !StateCheck("B!GAVIN",CD_STATE_NOTVALID) Global("B!GavTherella1","GLOBAL",1)~ THEN @46
END 