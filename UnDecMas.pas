unit UnDecMas;

interface

Type
  TInfo=record
     Title, Country:String;
     Limit:TDateTime;
     Count:integer;
  end;

  TDec = record // моделирование стека на основе динамического массива
     Mas: array of TInfo;
     Count, MaxCount : integer;
  end;

// пуст ли дек?
function IsEmpty(aDec: TDec): boolean;
// начальное значение
procedure InitDec(var aDec: TDec);
// добавление элемента в вершину стека
procedure AddTop(var aDec: TDec; aData: TInfo);
// добавление элемента в голову стека
procedure AddBottom(var aDec: TDec; aData: TInfo);
// узнать информационную часть вершины Ќ≈пустого стека
function GetTop(aDec: TDec): TInfo;
// узнать информационную часть головы Ќ≈пустого стека
function GetBottom(aDec: TDec): TInfo;
// удаление элемента из вершины Ќ≈пустого стека
procedure DelTop(var aDec: TDec);
// удаление элемента из головы Ќ≈пустого стека
procedure DelBottom(var aDec: TDec);
// удаление всех элементов стека
procedure FreeDec(var aDec: TDec);


// процедура перекладывани€ элемента из одного стека в другой
procedure TopToTop(var aDec1, aDec2: TDec);


implementation

function IsEmpty(aDec: TDec): boolean;
// пуст ли дек?
begin
  // дек пуст, если адрес вершины дека   = Nil
  IsEmpty := aDec.Count = 0
end;

procedure InitDec(var aDec: TDec);
// начальное значение
begin
  with aDec do
  begin
    Count := 0;
    MaxCount :=0;
    Mas := nil;
  end;
end;

procedure AddTop(var aDec: TDec; aData: TInfo);
// добавление элемента в вершину дека = конец массива
begin
  with aDec do
  begin
    if Count=MaxCount then
    begin
      Inc(MaxCount,10);
      SetLength(Mas, MaxCount);  // выдел€ем с запасом - на 9 больше
    end;
    Mas[Count] := aData;
    Inc(Count);
  end
end;

procedure AddBottom(var aDec: TDec; aData: TInfo);
// добавление элемента в голову дека = начало массива
var
   i:integer;
begin
  with aDec do
  begin
    if Count=MaxCount then
    begin
      Inc(MaxCount,10);
      SetLength(Mas, MaxCount);  // выдел€ем с запасом - на 9 больше
    end;
    for i:=Count downto 1 do Mas[i]:=Mas[i-1];
    Mas[0] := aData;
    Inc(Count);
  end
end;


function GetTop(aDec: TDec): TInfo;
// информационна€ часть вершины Ќ≈пустого дека
begin
  GetTop:=aDec.Mas[aDec.Count-1]
end;

function GetBottom(aDec: TDec): TInfo;
// информационна€ часть головы Ќ≈пустого дека
begin
  GetBottom:=aDec.Mas[0]
end;

procedure DelTop(var aDec: TDec);
// удаление элемента из вершины Ќ≈пустого дека
begin
  with aDec do
  begin
    Dec(Count);
    if Count < MaxCount - 20 then
    begin // освободим лишнюю пам€ть
      Dec(MaxCount,10);
      SetLength(Mas, MaxCount);
    end
  end
end;

procedure DelBottom(var aDec: TDec);
// удаление элемента из вершины Ќ≈пустого дека
var
   i:integer;
begin
  with aDec do
  begin
    for i:=1 to Count do Mas[i-1]:=Mas[i];
    Dec(Count);
    if Count < MaxCount - 20 then
    begin // освободим лишнюю пам€ть
      Dec(MaxCount,10);
      SetLength(Mas, MaxCount);
    end
  end
end;


procedure FreeDec(var aDec: TDec);
// удаление всех элементов дека
begin
  InitDec(aDec);
// ƒинамический массив - тип с управл€емым временем жизни
// - пам€ть будет освобождена при присвоении Nil массиву
end;


procedure TopToTop(var aDec1, aDec2: TDec);
// процедура перекладывани€ элемента из одного дека в другой
var Info: TInfo;
begin
   Info:=GetTop(aDec1);
   DelTop(aDec1);
   AddTop(aDec2, Info);
end;




end.
