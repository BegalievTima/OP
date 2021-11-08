PROGRAM Account(INPUT, OUTPUT);
USES 
  Count3;
VAR 
  Ch1, Ch2, Ch3, Ones, Tens, Hundreds: CHAR;
BEGIN
  Start;
  IF NOT EOLN
  THEN
    READ(Ch1);
  IF NOT EOLN
  THEN
    READ(Ch2);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch3); 
      IF ((Ch2 > Ch1) AND (Ch2 > Ch3)) OR ((Ch2 < Ch1) AND (Ch2 < Ch3))
      THEN
        Bump;
      Ch1 := Ch2;
      Ch2 := Ch3  
    END;
  Value(Hundreds, Tens, Ones);
  WRITELN('Количество реверсов: ', Hundreds, Tens, Ones)
END. 
