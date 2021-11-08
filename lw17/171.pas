PROGRAM SortMonth(INPUT, OUTPUT);
{—равнивает введенные значени€ мес€цев}
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
              WRITE(' предшествует ');
              WriteMonth(OUTPUT, Mo)  
            END
          ELSE
            IF Temporary > Mo
            THEN
              BEGIN
                WriteMonth(OUTPUT, Temporary);
                WRITE(' следует за ');
                WriteMonth(OUTPUT, Mo)
              END  
            ELSE
              BEGIN
                WRITE('ќба мес€ца ');
                WriteMonth(OUTPUT, Mo)
              END
        END 
      ELSE
        WRITELN('¬ходные данные записаны неверно.')         
    END
END. {SortMonth}                 
            
