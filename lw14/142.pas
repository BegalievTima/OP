PROGRAM Copy(INPUT, OUTPUT);
PROCEDURE RCopy(VAR InputFile, OutputFile: TEXT);
VAR 
  Ch: CHAR;
BEGIN { RCopy }
  IF NOT EOLN(InputFile)
  THEN
    BEGIN
      READ(InputFile, Ch);
      WRITE(OutputFile, Ch);
      RCopy(InputFile, OutputFile)
    END
END; { RCopy }    
BEGIN { Copy }
  RCopy(INPUT, OUTPUT);  
  WRITELN
END. { Copy }
