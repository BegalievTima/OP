PROGRAM SarahRevere(INPUT, OUTPUT);
{ ������ ��������� � ��� ��� ���� ��������, � �����������
�� ����, ������ �� ����� ����������� 'land' ��� 'sea'. }
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
      THEN { ����� ������ }
        Looking := 'N';
      { �������� ���� ��� 'land' }
      IF Ch1 = 'l'
      THEN
        IF Ch2 = 'a'
        THEN
          IF Ch3 = 'n'
          THEN
            IF Ch4 = 'd'
            THEN { 'land' ������� }
              Looking := 'L';
      { �������� ���� ��� 'sea' }
      IF Ch2 = 's'
      THEN
        IF Ch3 = 'e'
        THEN
          IF Ch4 = 'a'
          THEN { 'sea' ������� }
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
  { ������������� ���������� }
  Initializ(W1, W2, W3, W4, Looking);
  { ������� ����, ��������� ����� ������ }
  SearchWord(W1, W2, W3, W4, Looking);
  { C������ ��������� ��� Sarah }
  Mssg(Looking)
END. { Sarah revere }
