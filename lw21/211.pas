PROGRAM PseudoGraphics(INPUT, OUTPUT);
CONST
  FirstPos = 1;
  SizeMatrix = 5;
  LastPos = SizeMatrix * SizeMatrix;
TYPE
  Range = SET OF FirstPos .. LastPos;
  Symbols = SET OF CHAR;
VAR
  Ch: CHAR;
  WhichPlace: Range;
FUNCTION DefinesSymbol(Ch: CHAR): Range;
VAR
  SelectedSymbols: Symbols;
BEGIN{WhichSymbol}
  SelectedSymbols := ['A', 'B', 'C'];
  IF NOT EOLN
  THEN
    BEGIN
      READ(Ch);
      IF Ch IN SelectedSymbols 
      THEN  
        CASE Ch OF
          'A': DefinesSymbol := [3, 7, 9, 12 .. 14, 16, 20, 21, 25];
          'B': DefinesSymbol := [1, 2, 6, 8, 11 .. 13, 16, 19, 21 .. 23];
          'C': DefinesSymbol := [2, 3, 6, 11, 16, 22, 23]  
        END
      ELSE
        DefinesSymbol := []   
    END
  ELSE
    DefinesSymbol := []
END;{WhichSymbol}    
PROCEDURE Printing(WhichPlace: Range);
VAR
  Border, Index: INTEGER;
BEGIN{Printing}
  Border := SizeMatrix;
  IF WhichPlace <> []
  THEN
    FOR Index := FirstPos TO LastPos
    DO
      BEGIN
        IF Index IN WhichPlace
          THEN
            WRITE('X')
          ELSE
            WRITE(' '); 
        IF Index = Border
        THEN
          BEGIN            
            WRITELN;
            Border := Border + SizeMatrix
          END           
      END  
  ELSE
    WRITELN('Некорректные символы')      
END;{Printing} 
  
BEGIN{PseudoGraphics}  
  WhichPlace :=  DefinesSymbol(Ch);
  Printing(WhichPlace)  
END.{PseudoGraphics}  
  
  
