PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR 
  F2, F3: TEXT;
  Ch: CHAR;
PROCEDURE Split(VAR FIn, FOut1, FOut2: TEXT);
{Разбивает F1 на F2, F3}
VAR 
  Ch, Switch: CHAR;
BEGIN {Split}
  RESET(FIn);
  REWRITE(FOut1);
  REWRITE(FOut2);
  {Копировать F1 попеременно в F2 и F3}
  Switch := '2';
  WHILE NOT EOLN(FIn)
  DO
    BEGIN
      READ(FIn, Ch);
      IF Switch = '2'
      THEN
        BEGIN
          WRITE(FOut1, Ch);
          Switch := '3'
        END
      ELSE
        BEGIN
          WRITE(FOut2, Ch);
          Switch := '2'
        END
    END;
  WRITELN(FOut1);
  WRITELN(FOut2)
END; {Split}
PROCEDURE Merge(VAR FOut, FIn1, FIn2: TEXT);
{ Сливает FIn1, FIn2 в FOut  в сортированном порядке }
VAR 
  Ch2, Ch3: CHAR;
BEGIN {Merge}
  RESET(FIn1);
  RESET(FIn2);
  REWRITE(FOut);
  IF NOT EOLN(FIn1)
  THEN
    READ(FIn1, Ch2);
  IF NOT EOLN(FIn2)
  THEN
    READ(FIn2, Ch3);
  WHILE (NOT EOF(FIn1)) AND (NOT EOF(FIn2))
  DO
    IF (Ch2 < CH3)
    THEN 
      BEGIN
        WRITE(FOut, Ch2);
        READ(FIn1, Ch2)
      END
    ELSE
      BEGIN
        WRITE(FIn, Ch3);
        READ(FIn2, Ch3)
      END;
  {Копировать остаток F2 в F1}
  WHILE NOT (EOF(FIn1))
  DO
    BEGIN
      WRITE(FIn1, Ch2);
      READ(FIn1, Ch2)
    END;
  {Копировать остаток F3 в F1}
  WHILE NOT EOF(FIn2)
  DO
    BEGIN
      WRITE(FOut, Ch3);
      READ(FIn, Ch3)
    END;
  WRITELN(FOut)
END; { Merge }
BEGIN { RecursiveSort }
  RESET(FOut);
  IF NOT EOLN(FOut)
  THEN
    BEGIN
      IF NOT EOLN(FOut)
      THEN {Файл имеет как минимум 2 символа}
        BEGIN
          Split(F1, F2, F3);
          RecursiveSort(F2);
          RecursiveSort(F3);
          Merge(F1, F2, F3)
        END
    END
END;   { RecursiveSort }

