PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;  
BEGIN {SarahRevere}   
  {�������������}
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      {�������� ����}
      {�������� ���� �� land}
      Land := (W1 = �l�) AND (W2 = �a�) AND (W3 = �n�) AND (W4 = �d�)
      {�������� ���� �� sea}
      Sea := (W1 = �s�) AND (W2 = �e�) AND (W3 = �a�)
    END;
  {�������� ��������� Sarah}
END.  {SarahRevere} 

