PROGRAM Rev(INPUT, OUTPUT);
PROCEDURE Reverse (VAR F: TEXT);
VAR 
  Ch: CHAR;
BEGIN { Reverse }
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(Ch);
      WRITE(Ch)
    END
END; { Reverse }
BEGIN { Rev }
  Reverse(INPUT);
  WRITELN
END. { Rev } 
