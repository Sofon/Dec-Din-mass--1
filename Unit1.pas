unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtTitle: TEdit;
    Label2: TLabel;
    edtCountry: TEdit;
    Label3: TLabel;
    edtLimit: TEdit;
    Label4: TLabel;
    edtCount: TEdit;
    btnViewDec: TButton;
    sgDec: TStringGrid;
    btnAddTop: TButton;
    btnAddBottom: TButton;
    btnDelTop: TButton;
    btnDelBottom: TButton;
    btnFreeDec: TButton;
    btnClose: TButton;
    btnDecide: TButton;
    Label5: TLabel;
    edtDecide: TEdit;
    Label6: TLabel;
    lstCountry: TMemo;
    btnReport: TButton;
    SaveDlg: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure btnViewDecClick(Sender: TObject);
    procedure btnAddTopClick(Sender: TObject);
    procedure btnAddBottomClick(Sender: TObject);
    procedure btnDelTopClick(Sender: TObject);
    procedure btnDelBottomClick(Sender: TObject);
    procedure btnFreeDecClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnDecideClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses UnDecMas;
var
   Dec, ResDec:TDec;


procedure TForm1.FormCreate(Sender: TObject);
begin
   InitDec(Dec);
   sgDec.Cells[0,0]:='�����';
   sgDec.Cells[1,0]:='������';
   sgDec.Cells[2,0]:='����';
   sgDec.Cells[3,0]:='����������';

   sgDec.ColWidths[0]:=250;
   sgDec.ColWidths[1]:=150;
   sgDec.ColWidths[2]:=85;
   sgDec.ColWidths[3]:=85;

   sgDec.RowCount:=2;
end;

procedure TForm1.btnViewDecClick(Sender: TObject);
var
   DopDec:TDec;
   N:integer;
begin
   sgDec.Cells[0,0]:='�����';
   sgDec.Cells[1,0]:='������';
   sgDec.Cells[2,0]:='����';
   sgDec.Cells[3,0]:='����������';

   sgDec.ColWidths[0]:=250;
   sgDec.ColWidths[1]:=150;
   sgDec.ColWidths[2]:=85;
   sgDec.ColWidths[3]:=85;

   sgDec.RowCount:=2;
   lstCountry.Clear;

   for N:=0 to 3 do sgDec.Cells[N,1]:='';

   N:=0;

   InitDec(DopDec);
   if IsEmpty(Dec) then
       Application.MessageBox('��� ������!', '����������');

   while not IsEmpty(Dec) do begin
      N:=N+1;
      sgDec.RowCount:=max(2,N+1);
      sgDec.Cells[0,N]:=GetTop(Dec).Title;
      sgDec.Cells[1,N]:=GetTop(Dec).Country;
      sgDec.Cells[2,N]:=DateToStr(GetTop(Dec).Limit);
      sgDec.Cells[3,N]:=IntToStr(GetTop(Dec).Count);
      TopToTop(Dec, DopDec);
   end;

   while not IsEmpty(DopDec) do
     TopToTop(DopDec, Dec);


end;

procedure TForm1.btnAddTopClick(Sender: TObject);
var
   Info:TInfo;
begin
   if Trim(edtTitle.Text)='' then begin
      Application.MessageBox( '�������� ����� �� �������, ���� ������� ������ �� ��������',
                            '�� ������� ��������');
      Exit;
   end;
   if Trim(edtCountry.Text)='' then begin
      Application.MessageBox( '�������� ������ �� �������, ���� ������� ������ �� ��������',
                            '�� ������� ��������');
      Exit;
   end;
   try
      StrToDate(edtLimit.Text);
   except
      Application.MessageBox( '�������� ���� �� �������, ���� �� �������� �����',
                            '�� ������� ��������');
      Exit;
   end;
   try
      if StrToInt(edtCount.Text)<0 then begin
         Application.MessageBox( '�������� ���������� �� ����� ���� ������ ����',
                            '�� ������� ��������');
         Exit;
      end;
   except
      Application.MessageBox( '�������� ���������� �� �������, ���� �� �������� ����� ������',
                            '�� ������� ��������');
      Exit;
   end;
   Info.Title:=edtTitle.Text;
   Info.Country:=edtCountry.Text;
   Info.Limit:=StrToDate(edtLimit.Text);
   Info.Count:=StrToInt(edtCount.Text);
   AddTop(Dec,Info);
   edtTitle.Text:='';
   edtCountry.Text:='';
   edtLimit.Text:='';
   edtCount.Text:='';
   btnViewDec.Click;
end;

procedure TForm1.btnAddBottomClick(Sender: TObject);
var
   Info:TInfo;
begin
   if Trim(edtTitle.Text)='' then begin
      Application.MessageBox( '�������� ����� �� �������, ���� ������� ������ �� ��������',
                            '�� ������� ��������');
      Exit;
   end;
   if Trim(edtCountry.Text)='' then begin
      Application.MessageBox( '�������� ������ �� �������, ���� ������� ������ �� ��������',
                            '�� ������� ��������');
      Exit;
   end;
   try
      StrToDate(edtLimit.Text);
   except
      Application.MessageBox( '�������� ���� �� �������, ���� �� �������� �����',
                            '�� ������� ��������');
      Exit;
   end;
   try
      if StrToInt(edtCount.Text)<0 then begin
         Application.MessageBox( '�������� ���������� �� ����� ���� ������ ����',
                            '�� ������� ��������');
         Exit;
      end;
   except
      Application.MessageBox( '�������� ���������� �� �������, ���� �� �������� ����� ������',
                            '�� ������� ��������');
      Exit;
   end;
   Info.Title:=edtTitle.Text;
   Info.Country:=edtCountry.Text;
   Info.Limit:=StrToDate(edtLimit.Text);
   Info.Count:=StrToInt(edtCount.Text);
   AddBottom(Dec,Info);
   edtTitle.Text:='';
   edtCountry.Text:='';
   edtLimit.Text:='';
   edtCount.Text:='';
   btnViewDec.Click;
end;

procedure TForm1.btnDelTopClick(Sender: TObject);
begin
  if not IsEmpty(Dec) then
  begin
    DelTop(Dec);
    btnViewDec.Click;
  end
  else
    Application.MessageBox( '��� ����',
                            '�� ������� �������');

end;

procedure TForm1.btnDelBottomClick(Sender: TObject);
begin
  if not IsEmpty(Dec) then
  begin
    DelBottom(Dec);
    btnViewDec.Click;
  end
  else
    Application.MessageBox( '��� ����',
                            '�� ������� �������');

end;

procedure TForm1.btnFreeDecClick(Sender: TObject);
begin
   FreeDec(Dec);
   FreeDec(ResDec);
   btnViewDec.Click;
end;

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  FreeDec(Dec);
  FreeDec(ResDec);
  Close;
end;

procedure TForm1.btnDecideClick(Sender: TObject);
var
   DopDec1, DopDec2:TDec;
   T:TDateTime;
   N, i:integer;
   isAdd:boolean;
begin
   try
      T:=StrToDate(edtDecide.Text);
   except
      Application.MessageBox( '�������� �������� �� �� �������, ���� �� �������� �����',
                            '�� ������� ������');
      Exit;
   end;
   InitDec(DopDec1);
   InitDec(ResDec);
   InitDec(DopDec2);
   lstCountry.Clear;
   while not IsEmpty(Dec) do begin
      if GetTop(Dec).Limit<T then begin
         AddBottom(DopDec2,GetTop(Dec));
         AddTop(ResDec,GetTop(Dec));
         isAdd:=true;
         for i:=0 to lstCountry.Lines.Count-1 do
            if lstCountry.Lines[i]=GetTop(Dec).Country then isAdd:=false;
         if isAdd then lstCountry.Lines.Add(GetTop(Dec).Country);
      end;

      TopToTop(Dec, DopDec1);
   end;

   while not IsEmpty(DopDec1) do
     TopToTop(DopDec1, Dec);


   sgDec.Cells[0,0]:='�����';
   sgDec.Cells[1,0]:='������';
   sgDec.Cells[2,0]:='����';
   sgDec.Cells[3,0]:='����������';

   sgDec.ColWidths[0]:=250;
   sgDec.ColWidths[1]:=150;
   sgDec.ColWidths[2]:=85;
   sgDec.ColWidths[3]:=85;

   sgDec.RowCount:=2;

   for N:=0 to 3 do sgDec.Cells[N,1]:='';

   N:=0;

   InitDec(DopDec1);
   if IsEmpty(DopDec2) then
       Application.MessageBox('��� � ������� ������!', '����������');

   while not IsEmpty(DopDec2) do begin
      N:=N+1;
      sgDec.RowCount:=max(2,N+1);
      sgDec.Cells[0,N]:=GetTop(DopDec2).Title;
      sgDec.Cells[1,N]:=GetTop(DopDec2).Country;
      sgDec.Cells[2,N]:=DateToStr(GetTop(DopDec2).Limit);
      sgDec.Cells[3,N]:=IntToStr(GetTop(DopDec2).Count);

      TopToTop(DopDec2, DopDec1);
   end;
   FreeDec(DopDec1);

end;

procedure TForm1.btnReportClick(Sender: TObject);
var
   f:TextFile;
   i:integer;
   DopDec1:TDec;
begin
   if SaveDlg.Execute then
  begin

    AssignFile(f, SaveDlg.FileName);
  try
    Rewrite(f); //��������� �� ��������������� ����� except
    try //������� ����� ����� except
      writeln(f,'�� '+edtDecide.Text+' ����� ���������� ��������� � ��������� ������:');
      for i:=0 to lstCountry.Lines.Count-1 do writeln(f,lstCountry.Lines[i]);
      writeln(f,'');

      InitDec(DopDec1);
      while not IsEmpty(ResDec) do
         TopToTop(ResDec,DopDec1);

      while not IsEmpty(DopDec1) do begin
         writeln(f,GetTop(DopDec1).Title,'   ',GetTop(DopDec1).Country,'   ', DateToStr(GetTop(DopDec1).Limit),'   ', IntToStr(GetTop(DopDec1).Count));
         AddTop(ResDec,GetTop(DopDec1));
         TopToTop(DopDec1,ResDec);
      end;



      finally //����������� � ����������
        CloseFile(f); ShowMessage('����� ������ � ��������!');
      end;
    except
      ShowMessage('�� ������� ������� ���� ������ '+ SaveDlg.FileName);
    end;
  end
  else
    ShowMessage('����� �� ������! �������� ��������!');
end;

end.
