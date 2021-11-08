PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
  Base = 10;
  HalfBase = Base DIV 2;
  MinimumScore = 0;
  MaximumScore = 100;
TYPE
  Score = MinimumScore .. MaximumScore;
VAR
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
PROCEDURE SecondName(VAR InputFile: TEXT);
VAR
  Ch1, Ch2: CHAR; 
BEGIN
  Ch1 := '-';
  Ch2 := '-';
  IF NOT EOLN(InputFile)
  THEN
    BEGIN
      READ(InputFile, Ch2);
      WHILE (Ch2 <> ' ')
      DO
        BEGIN
          Ch1 := Ch2;
          READ(InputFile, Ch2);
          WRITE(Ch1) 
        END;
      WRITE(' ')     
    END
END;  
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 1;
  WHILE Student <= ClassSize
  DO 
    BEGIN {Student <= ClassSize}
      TotalScore := 0;
      WhichScore := 1;
      SecondName(INPUT);
      WHILE WhichScore <= NumberOfScores
      DO
        BEGIN {WhichScore <= NumberOfScores}
          READ(NextScore);
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1
        END; {WhichScore <= NumberOfScores}
      TotalScore := TotalScore * Base;
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD Base >= HalfBase
      THEN
        WRITELN(Ave DIV Base + 1, ' ')
      ELSE
        WRITELN(Ave DIV Base, ' ');
      ClassTotal := ClassTotal + TotalScore;
      Student := Student + 1;
      READLN
    END; {Student <= ClassSize}
  WRITELN;
  WRITELN ('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize *NumberOfScores);
  WRITELN(ClassTotal DIV Base, '.', ClassTotal MOD Base:1)
END.  {AverageScore}
