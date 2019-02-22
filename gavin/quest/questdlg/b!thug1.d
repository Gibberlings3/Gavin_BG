BEGIN ~B!THUG1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Thug1Talk
SAY @0
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Thug1Talk2
SAY @1
IF ~~ THEN EXIT
END