unit UnDecMas;

interface

Type
  TInfo=record
     Title, Country:String;
     Limit:TDateTime;
     Count:integer;
  end;

  TDec = record // ������������� ����� �� ������ ������������� �������
     Mas: array of TInfo;
     Count, MaxCount : integer;
  end;

// ���� �� ���?
function IsEmpty(aDec: TDec): boolean;
// ��������� ��������
procedure InitDec(var aDec: TDec);
// ���������� �������� � ������� �����
procedure AddTop(var aDec: TDec; aData: TInfo);
// ���������� �������� � ������ �����
procedure AddBottom(var aDec: TDec; aData: TInfo);
// ������ �������������� ����� ������� ��������� �����
function GetTop(aDec: TDec): TInfo;
// ������ �������������� ����� ������ ��������� �����
function GetBottom(aDec: TDec): TInfo;
// �������� �������� �� ������� ��������� �����
procedure DelTop(var aDec: TDec);
// �������� �������� �� ������ ��������� �����
procedure DelBottom(var aDec: TDec);
// �������� ���� ��������� �����
procedure FreeDec(var aDec: TDec);


// ��������� �������������� �������� �� ������ ����� � ������
procedure TopToTop(var aDec1, aDec2: TDec);


implementation

function IsEmpty(aDec: TDec): boolean;
// ���� �� ���?
begin
  // ��� ����, ���� ����� ������� ����   = Nil
  IsEmpty := aDec.Count = 0
end;

procedure InitDec(var aDec: TDec);
// ��������� ��������
begin
  with aDec do
  begin
    Count := 0;
    MaxCount :=0;
    Mas := nil;
  end;
end;

procedure AddTop(var aDec: TDec; aData: TInfo);
// ���������� �������� � ������� ���� = ����� �������
begin
  with aDec do
  begin
    if Count=MaxCount then
    begin
      Inc(MaxCount,10);
      SetLength(Mas, MaxCount);  // �������� � ������� - �� 9 ������
    end;
    Mas[Count] := aData;
    Inc(Count);
  end
end;

procedure AddBottom(var aDec: TDec; aData: TInfo);
// ���������� �������� � ������ ���� = ������ �������
var
   i:integer;
begin
  with aDec do
  begin
    if Count=MaxCount then
    begin
      Inc(MaxCount,10);
      SetLength(Mas, MaxCount);  // �������� � ������� - �� 9 ������
    end;
    for i:=Count downto 1 do Mas[i]:=Mas[i-1];
    Mas[0] := aData;
    Inc(Count);
  end
end;


function GetTop(aDec: TDec): TInfo;
// �������������� ����� ������� ��������� ����
begin
  GetTop:=aDec.Mas[aDec.Count-1]
end;

function GetBottom(aDec: TDec): TInfo;
// �������������� ����� ������ ��������� ����
begin
  GetBottom:=aDec.Mas[0]
end;

procedure DelTop(var aDec: TDec);
// �������� �������� �� ������� ��������� ����
begin
  with aDec do
  begin
    Dec(Count);
    if Count < MaxCount - 20 then
    begin // ��������� ������ ������
      Dec(MaxCount,10);
      SetLength(Mas, MaxCount);
    end
  end
end;

procedure DelBottom(var aDec: TDec);
// �������� �������� �� ������� ��������� ����
var
   i:integer;
begin
  with aDec do
  begin
    for i:=1 to Count do Mas[i-1]:=Mas[i];
    Dec(Count);
    if Count < MaxCount - 20 then
    begin // ��������� ������ ������
      Dec(MaxCount,10);
      SetLength(Mas, MaxCount);
    end
  end
end;


procedure FreeDec(var aDec: TDec);
// �������� ���� ��������� ����
begin
  InitDec(aDec);
// ������������ ������ - ��� � ����������� �������� �����
// - ������ ����� ����������� ��� ���������� Nil �������
end;


procedure TopToTop(var aDec1, aDec2: TDec);
// ��������� �������������� �������� �� ������ ���� � ������
var Info: TInfo;
begin
   Info:=GetTop(aDec1);
   DelTop(aDec1);
   AddTop(aDec2, Info);
end;




end.
