unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls, System.Math, Unit2;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    Start1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Minimum1: TMenuItem;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Button1: TButton;
    procedure Start1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Minimum1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Mas: array of array of Extended;
  D: array of Extended;
  Rows: Integer;
  Cols: Integer;

const
  RoundTo: Integer = 5000;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Unit2.Form2.Show;
end;

procedure TForm1.Minimum1Click(Sender: TObject);
var c: Integer;
begin
  if (StringGrid1.ColCount > 0) and (StringGrid1.RowCount > 0) then
  begin
    SetLength(D, StringGrid1.ColCount);
    StringGrid2.ColCount := StringGrid1.ColCount;
    for c := 0 to StringGrid1.ColCount -1 do
    begin
      D[c] := MinValue(Mas[c]);
      StringGrid2.Cells[c, 0] := IntToStr(Round(D[c]*RoundTo));
    end;
    StringGrid2.Visible := true;
  end;
end;

procedure TForm1.N1Click(Sender: TObject);
var strRows: String;
begin
  strRows := inputbox('Количество строк', 'Укажите количество строк: ', '0');
  Rows := StrToInt(strRows);
end;

procedure TForm1.N2Click(Sender: TObject);
var strCols:String;
begin
  strCols := inputbox('Количество столбцов', 'Укажите количество столбцов: ', '0');
  Cols := StrToInt(strCols);
end;

procedure TForm1.Start1Click(Sender: TObject);
var msg: String;
  I: Integer;
  j: Integer;
begin
  StringGrid1.Visible := false;
  StringGrid2.Visible := false;
  Randomize;
  msg := '';
  if Rows = 0 then
    msg := 'Укажите количество строк';
  if Cols = 0 then
  begin
    if msg.Length > 0 then
      msg := msg + ', '
    else
      msg := 'Укажите количество ';
    msg := msg + 'столбцов';
  end;
  Label1.Caption := msg;
  if msg.Length = 0 then
  begin
    StringGrid1.RowCount := Rows;
    StringGrid1.ColCount := Cols;
    SetLength(Mas, Cols, Rows);
    for i := 0 to Rows-1 do
    begin
      for j := 0 to Cols-1 do
      begin
        Mas[j, i] := Random();
        StringGrid1.Cells[j,i] := IntToStr(Round(Mas[j, i]*RoundTo));
      end;
    end;
    StringGrid1.Visible := true;
  end;
end;

end.
