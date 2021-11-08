PROGRAM Prime(INPUT, OUTPUT);
CONST
  MiniDigit = 2;
  MaxiDigit = 100;
TYPE
  Range = SET OF MiniDigit .. MaxiDigit;
VAR
  DataInSieve: Range;
  Divisor, Digit: INTEGER; 
BEGIN {Prime}
  DataInSieve := [MiniDigit .. MaxiDigit];
  Divisor := 2; {Минимальное простое число}
  WHILE DataInSieve <> []
  {Пока не удалили из 'решета' все множество}
  DO
    BEGIN
        WRITE(Divisor, ' ');
        Digit := Divisor;
        WHILE Digit <= MaxiDigit
        DO
          BEGIN
            DataInSieve := DataInSieve - [Digit];
            Digit := Digit + Divisor
          END;
        WHILE (NOT (Divisor IN DataInSieve)) AND (DataInSieve <> [])
        DO   
          IF Divisor > 2 
          THEN   
            Divisor := Divisor + 2
          ELSE
            Divisor := Divisor +1  
    END          
END. {Prime}
