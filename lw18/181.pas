PROGRAM SummDigits(INPUT, OUTPUT);
VAR
  Digit, Summ: INTEGER;
PROCEDURE ReadDigit(VAR FIn: TEXT; VAR OutDigit: INTEGER);
VAR 
  Ch: CHAR;
BEGIN {ReadDigit} 
  OutDigit := -1; 
  IF NOT EOLN(FIn)
  THEN 
    BEGIN
      READ(FIn, Ch);
      IF Ch = '0' THEN OutDigit := 0 ELSE
      IF Ch = '1' THEN OutDigit := 1 ELSE
      IF Ch = '2' THEN OutDigit := 2 ELSE
      IF Ch = '3' THEN OutDigit := 3 ELSE
      IF Ch = '4' THEN OutDigit := 4 ELSE
      IF Ch = '5' THEN OutDigit := 5 ELSE
      IF Ch = '6' THEN OutDigit := 6 ELSE
      IF Ch = '7' THEN OutDigit := 7 ELSE
      IF Ch = '8' THEN OutDigit := 8 ELSE
      IF Ch = '9' THEN OutDigit := 9
    END
END; {ReadDigit}
BEGIN {SummDigits}
  Digit := 0;
  Summ := 0;
  WHILE (NOT EOLN(INPUT)) AND (Digit <> -1)
  DO
    BEGIN
      ReadDigit(INPUT, Digit);
      IF Digit <> -1
      THEN
        Summ := Summ + Digit
    END;      
  WRITELN(Summ)
END. {SummDigits}
      
         
 
