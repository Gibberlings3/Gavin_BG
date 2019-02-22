BEGIN ~B!THUG3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Thug3Talk
SAY @0
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Thug3Talk2
SAY @1
IF ~~ THEN EXIT
END