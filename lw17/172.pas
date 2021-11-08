PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;  
BEGIN {SarahRevere}   
  {»нициализаци€}
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      {движение окна}
      {проверка окна на land}
      Land := (W1 = СlТ) AND (W2 = СaТ) AND (W3 = СnТ) AND (W4 = СdТ)
      {проверка окна на sea}
      Sea := (W1 = СsТ) AND (W2 = СeТ) AND (W3 = СaТ)
    END;
  {создание сообщени€ Sarah}
END.  {SarahRevere} 

