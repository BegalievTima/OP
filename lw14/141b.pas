PROGRAM Rev(INPUT, OUTPUT);
PROCEDURE Reverse(VAR InputFile, OutputFile: TEXT);
VAR 
  Ch: CHAR;
BEGIN { Reverse }
  IF NOT EOLN(InputFile)
  THEN
    BEGIN
      READ(InputFile, Ch);
      Reverse(InputFile, OutputFile);
      WRITE(OutputFile, Ch)
    END
END; { Reverse }    
BEGIN { Rev }
  Reverse(INPUT, OUTPUT);  
  WRITELN
END. { Rev }
