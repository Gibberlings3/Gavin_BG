
//////////////////////////////////
// Bertram
/////////////////////////////////

APPEND ~B!BERTRA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN BGrumpyBertram
SAY @0
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN BGrumpierBertram
SAY @1
IF ~~ THEN EXIT
END

END