PROGRAM BubbleSort(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
VAR
  F1, F2: TEXT;
PROCEDURE Copy(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN { Copy }
  RESET(F1);
  REWRITE(F2);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch)
    END;
  WRITELN(F2)
END; { Copy }
PROCEDURE Sort(VAR F1, F2: TEXT);
VAR
  Ch1, Ch2, Sorted: CHAR;
BEGIN { Sort }   
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN          
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          WHILE NOT EOLN(F1)
          DO { �� ������� ���� ��� ������� �������� ��� Ch1, Ch2 }
            BEGIN
              READ(F1, Ch2);
              { �������   min(Ch1, Ch2) �  F2, ���������
               ��������������� ������� }
              IF Ch1 <= Ch2
              THEN
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(F2, Ch2);
                  Sorted := 'N'
                END
            END;
          WRITELN(F2, Ch1) { ������� ��������� ������ � F2 }
        END;
      { �������� F2 � F1 }
      Copy(F2, F1)
    END
END; { Sort }
BEGIN { Bubble Sort }
  { �������� INPUT � F1 }
  Copy(INPUT, F1);
  { ��������� ������ }
  Sort(F1, F2);
  { �������� F1 � OUTPUT } 
  Copy(F1, OUTPUT) 
END. {BubbleSort}
