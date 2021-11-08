PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
  CalculusSystem = 10;
  HalfCalculusSystem = CalculusSystem DIV 2;
  MinCor = 0;
  MaxCor = 100;
TYPE
  Score = MinCor .. MaxCor;
VAR
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 1;
  WHILE Student <= ClassSize
  DO 
    BEGIN
      TotalScore := 0;
      WhichScore := 1;
      WHILE WhichScore <= NumberOfScores
      DO
        BEGIN
          READ(NextScore);
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1
        END;
      READLN;
      TotalScore := TotalScore * CalculusSystem;
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD CalculusSystem >= HalfCalculusSystem
      THEN
        BEGIN
          Ave := (Ave DIV CalculusSystem) + 1; 
          WRITELN(Ave)
        END  
      ELSE
        WRITE(Ave DIV CalculusSystem);
      ClassTotal := ClassTotal + TotalScore;
      Student := Student + 1
    END;
  WRITELN;
  WRITELN ('Class average:');
  ClassTotal := (ClassTotal DIV (ClassSize * NumberOfScores));
  WRITELN(ClassTotal DIV CalculusSystem, '.', ClassTotal MOD CalculusSystem)
END.  {AverageScore}
