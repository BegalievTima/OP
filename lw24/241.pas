PROGRAM TreeSort(INPUT, OUTPUT);
TYPE 
  Tree = ^NodeType;
  NodeType = RECORD
               Key: CHAR;
               LLink, RLink: Tree
             END;             
VAR
  Root: Tree;
  Ch: CHAR;
  Count: INTEGER;
PROCEDURE Insert(VAR Ptr: Tree; Data: CHAR);
BEGIN {Insert}
  IF Ptr = NIL
  THEN
    BEGIN {Создаем лист со значением Data}
      NEW(Ptr);
      Ptr^.Key := Data;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL;
    END
  ELSE
    IF Ptr^.Key > Data
    THEN
      BEGIN
        Count := Count + 1;
        Insert(Ptr^.LLink, Data)
      END  
    ELSE
      BEGIN
        Count := Count + 1;
        Insert(Ptr^.RLink, Data)
      END  
END;  {Insert}
PROCEDURE PrintTree(Ptr: Tree);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  {Печатает поддерево слева, вершину, поддерево справа}
    BEGIN
      PrintTree(Ptr^.LLink);
      WRITE(Ptr^.Key);
      PrintTree(Ptr^.RLink)
    END
END;  {PrintTree}  
BEGIN {TreeSort}
  Count := 0;
  Root := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Insert(Root, Ch)
    END;
  WRITELN;  
  PrintTree(Root);
  WRITELN;  
  WRITELN(Count)
END.  {TreeSort}
