PROGRAM Prime(INPUT, OUTPUT);
CONST
  MinimumDigit = 2;
  MaximumDigit = 100;
TYPE
  Range = SET OF MinimumDigit .. MaximumDigit;
VAR
  Sieve, Interval: Range;
  Min, Max, Divisor, Digit: INTEGER; 
BEGIN {Prime}
  IF NOT EOLN(INPUT)
  THEN
    BEGIN
      READ(Min, Max);                                    
      Sieve := [Min .. Max];
      Interval := [MinimumDigit .. MaximumDigit];
      Divisor := 2; {����������� ������� �����}
      Digit := Divisor;
      WHILE Sieve <> []
        {���� �� ������� �� '������' ��� ���������}
      DO
        BEGIN
          IF Divisor IN Sieve
          THEN
            WRITE(Divisor, ' ');
          Digit := Divisor;
          WHILE Digit <= Max
          DO
            BEGIN
              Sieve := Sieve - [Digit];
              Interval := Interval - [Digit];
              Digit := Digit + Divisor;
              IF Digit = Max
              {���� ��� �������� ������� ������������ ��c�� ���������,
               �� �� ������������� �������� �� ���������� �� ��������}
              THEN
                BEGIN
                  Max := Max - 1;
                  WHILE NOT (Max IN Sieve)
                  DO
                    Max := Max - 1;
                  {������� ������� Max, �� ��� �� ������ � ����}  
                  Sieve := Sieve - [Digit];
                  Interval := Interval - [Digit];
                END
            END;
          WHILE (NOT (Divisor IN Interval)) AND (Sieve <> [])
          DO   
            IF Divisor > 2 
            THEN   
              Divisor := Divisor + 2
            ELSE
              Divisor := Divisor +1 
        END
    END             
END. {Prime}
