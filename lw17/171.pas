PROGRAM SortMonth(INPUT, OUTPUT);
{���������� ��������� �������� �������}
USES
  DateIO;
BEGIN {SortMonth}
VAR 
  Temporary, Mo: Month;
  IF NOT EOLN
  THEN
    BEGIN 
      ReadMonth(INPUT, Mo);
      IF NOT (Mo = NoMonth)
      THEN
        BEGIN
          Temporary := Mo; 
          ReadMonth(INPUT, Mo);
          IF Temporary < Mo
          THEN
            BEGIN
              WriteMonth(OUTPUT, Temporary);
              WRITE(' ������������ ');
              WriteMonth(OUTPUT, Mo)  
            END
          ELSE
            IF Temporary > Mo
            THEN
              BEGIN
                WriteMonth(OUTPUT, Temporary);
                WRITE(' ������� �� ');
                WriteMonth(OUTPUT, Mo)
              END  
            ELSE
              BEGIN
                WRITE('��� ������ ');
                WriteMonth(OUTPUT, Mo)
              END
        END 
      ELSE
        WRITELN('������� ������ �������� �������.')         
    END
END. {SortMonth}                 
            
