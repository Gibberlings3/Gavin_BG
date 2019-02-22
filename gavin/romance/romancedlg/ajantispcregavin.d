
//  Ajantis' commenting on Gavin Romance - berelinde's modification of Jastey's suggestions
//« am: 12Oct2006 »   

APPEND ~%AJANTIS_JOINED%~

//###1 ####
//Ajantis and PC discuss relationship with Gavin - PC has NO relationship history with Ajantis 

IF WEIGHT #-1 ~Global("B!AjantisGavinComment1","GLOBAL",2)~ THEN ajantis_gavinromance
SAY @0
++ @1 DO ~SetGlobal("B!AjantisGavinComment1","GLOBAL",3)~ + ajantis_gavinromance_01
++ @2 DO ~SetGlobal("B!AjantisGavinComment1","GLOBAL",3)~ + ajantis_gavinromance_01
++ @3 DO ~SetGlobal("B!AjantisGavinComment1","GLOBAL",3)~ + ajantis_gavinromance_02
++ @4 DO ~SetGlobal("B!AjantisGavinComment1","GLOBAL",3)~ + ajantis_gavinromance_04
END

IF ~~ THEN ajantis_gavinromance_01
SAY @5
= @6
++ @7 + ajantis_gavinromance_03
++ @8 + ajantis_gavinromance_03
++ @9 + ajantis_gavinromance_03
++ @10 + ajantis_gavinromance_04
END

IF ~~ THEN ajantis_gavinromance_02
SAY @11
= @6
++ @7 + ajantis_gavinromance_06
++ @8 + ajantis_gavinromance_06
++ @12 + ajantis_gavinromance_09
END

IF ~~ THEN ajantis_gavinromance_03
SAY @13
++ @14 + ajantis_gavinromance_10
++ @15 + ajantis_gavinromance_08
++ @16 + ajantis_gavinromance_07
END

IF ~~ THEN ajantis_gavinromance_04
SAY @17
= @18
++ @14 + ajantis_gavinromance_10
++ @15 + ajantis_gavinromance_08
++ @19 + ajantis_gavinromance_07
++ @20 + ajantis_gavinromance_05
END


IF ~~ THEN ajantis_gavinromance_05
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_gavinromance_06
SAY @22
++ @14 + ajantis_gavinromance_10
++ @15 + ajantis_gavinromance_08
++ @19 + ajantis_gavinromance_07
END

IF ~~ THEN ajantis_gavinromance_07
SAY @23
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_gavinromance_08
SAY @24 
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_gavinromance_09
SAY @25
++ @14 + ajantis_gavinromance_10
++ @15 + ajantis_gavinromance_08
++ @19 + ajantis_gavinromance_07
++ @20 + ajantis_gavinromance_05
END

IF ~~ THEN ajantis_gavinromance_10 
SAY @26
IF ~~ THEN EXIT
END



//-------------### 2 ###

// Ajantis and PC discuss relationship with Gavin - PC has relationship history with Ajantis


IF WEIGHT #-1 ~Global("B!AjantisGavinComment2","GLOBAL",2)~ THEN ajantis_gavinromanceboth 
SAY @27
++ @28 DO ~SetGlobal("B!AjantisGavinComment2","GLOBAL",3)~ + ajantis_gavinromanceboth_01
++ @2 DO ~SetGlobal("B!AjantisGavinComment2","GLOBAL",3)~ + ajantis_gavinromanceboth_02
++ @3 DO ~SetGlobal("B!AjantisGavinComment2","GLOBAL",3)~ + ajantis_gavinromanceboth_02
++ @4 DO ~SetGlobal("B!AjantisGavinComment2","GLOBAL",3)~ + ajantis_gavinromanceboth_03
END

IF ~~ THEN ajantis_gavinromanceboth_01
SAY @29
IF ~~ THEN + ajantis_gavinromanceboth_04
END

IF ~~ THEN ajantis_gavinromanceboth_02
SAY @30
IF ~~ THEN + ajantis_gavinromanceboth_04
END

IF ~~ THEN ajantis_gavinromanceboth_03
SAY @31
IF ~~ THEN + ajantis_gavinromanceboth_04
END

IF ~~ THEN ajantis_gavinromanceboth_04
SAY @32 
= @33
++ @34 + ajantis_gavinromanceboth_05 
++ @35 + ajantis_gavinromanceboth_08
++ @15 + ajantis_gavinromanceboth_06
++ @19 + ajantis_gavinromanceboth_07
END

IF ~~ THEN ajantis_gavinromanceboth_05
SAY @36
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_gavinromanceboth_06
SAY @37
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_gavinromanceboth_07
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_gavinromanceboth_08 
SAY @39
IF ~~ THEN EXIT
END

END //APPEND



 
