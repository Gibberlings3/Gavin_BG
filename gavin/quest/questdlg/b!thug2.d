BEGIN ~B!THUG2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Thug2Talk
SAY @0
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Thug2Talk2
SAY @1
IF ~~ THEN EXIT
END