PROGRAM StringToInt(INPUT, OUTPUT);
VAR
  Result: INTEGER;

  {Считывает текущий символ из файла, если он - цифра, возвращает его 
   преобразуя в значение типа INTEGER. 
   Если считанный символ не цифра возвращается -1}
  PROCEDURE ReadDigit(VAR FIn: TEXT; VAR Digit: INTEGER);
  VAR
    Ch: CHAR;
    
    PROCEDURE CharToDigit(VAR Ch: CHAR; VAR Digit: INTEGER);
    BEGIN {CharToDigit}
      IF Ch = '0' THEN Digit := 0 ELSE
      IF Ch = '1' THEN Digit := 1 ELSE
      IF Ch = '2' THEN Digit := 2 ELSE
      IF Ch = '3' THEN Digit := 3 ELSE
      IF Ch = '4' THEN Digit := 4 ELSE
      IF Ch = '5' THEN Digit := 5 ELSE
      IF Ch = '6' THEN Digit := 6 ELSE
      IF Ch = '7' THEN Digit := 7 ELSE
      IF Ch = '8' THEN Digit := 8 ELSE
      IF Ch = '9' THEN Digit := 9 
      ELSE
        Digit := -1
    END; {CharToDigit}
    
  BEGIN {ReadDigit}
    IF NOT EOLN(FIn)
    THEN
      BEGIN
        READ(FIn, Ch);
        CharToDigit(Ch, Digit)
      END
  END; {ReadDigit}
  
  {Преобразует строку цифр из файла, завершающуюся нецифровым символом, 
   в соответствующее целочисленное значение N, и возвращает N}
  PROCEDURE ReadNumber(VAR FIn: TEXT; VAR Result: INTEGER);
  CONST
    MyMaxInt = 100;
    Base = 10;
  VAR
    Digit: INTEGER;
    Error: BOOLEAN;
  BEGIN {ReadNumber}
    Result := 0;
    Error := FALSE;
    WHILE NOT EOLN(FIn) AND NOT(Error)
    DO
      BEGIN
        ReadDigit(FIn, Digit);
        IF Digit <> -1
        THEN  
          IF ((Result = MyMaxInt DIV Base) AND (Digit = MyMaxInt MOD Base)) OR (Result < MyMaxInt DIV Base)        
          THEN
            Result := Result * Base + Digit
          ELSE
            BEGIN
              Result := -1;
              Error := TRUE
            END
      END
  END; {ReadNumber}

BEGIN {StringToInt}
  ReadNumber(INPUT, Result);
  WRITELN(Result)
END. {StringToInt} 
