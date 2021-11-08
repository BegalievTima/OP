PROGRAM SarahRevere(INPUT, OUTPUT);
{ Печать сообщения о том как идут британцы, в зависимости
от того, первым во входе встречается 'land' или 'sea'. }
VAR
  W1, W2, W3, W4, Looking: CHAR;
PROCEDURE Initializ(VAR Ch1, Ch2, Ch3, Ch4, Looking: CHAR);
BEGIN { Initializ }
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  Ch4 := ' ';
  Looking := 'Y'
END; { Initializ }
PROCEDURE SearchWord(VAR Ch1, Ch2, Ch3, Ch4, Looking: CHAR);
BEGIN { SearchWord }
  WHILE Looking = 'Y'
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3;
      Ch3 := Ch4;
      READ(Ch4);
      IF Ch4 = '#'
      THEN { Конец данных }
        Looking := 'N';
      { Проверка окна для 'land' }
      IF Ch1 = 'l'
      THEN
        IF Ch2 = 'a'
        THEN
          IF Ch3 = 'n'
          THEN
            IF Ch4 = 'd'
            THEN { 'land' найдено }
              Looking := 'L';
      { Проверка окна для 'sea' }
      IF Ch2 = 's'
      THEN
        IF Ch3 = 'e'
        THEN
          IF Ch4 = 'a'
          THEN { 'sea' найдено }
            Looking := 'S'
    END
END; { SearchWord }
PROCEDURE Mssg(VAR Looking: CHAR);
BEGIN { Mssg }
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END; { Mssg }            
BEGIN { SarahRevere }
  { Инициализация переменных }
  Initializ(W1, W2, W3, W4, Looking);
  { Двигать окно, проверять конец данных }
  SearchWord(W1, W2, W3, W4, Looking);
  { Cоздать сообщение для Sarah }
  Mssg(Looking)
END. { Sarah revere }
