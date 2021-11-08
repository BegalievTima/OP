PROCEDURE ReadDigit(VAR FIn: TEXT; VAR OutDigit: INTEGER);
VAR 
  Ch: CHAR;
BEGIN  
  IF NOT EOF
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
      ELSE
        OutDigit := -1;
      WRITELN(OutDigit)
    END
  ELSE
    OutDigit := -1;  
END;
      
      
