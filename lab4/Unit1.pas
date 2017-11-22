unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  IBX.IBCustomDataSet, IBX.IBTable, IBX.IBDatabase, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    tbF: TIBTable;
    dsF: TDataSource;
    DBGrid1: TDBGrid;
    tbGrp: TIBTable;
    dsGrp: TDataSource;
    DBGrid2: TDBGrid;
    tbStd: TIBTable;
    dsStd: TDataSource;
    DBGrid3: TDBGrid;
    tbGrpG_Num: TIntegerField;
    tbGrpF_Num: TIntegerField;
    tbGrpG_Name: TIBStringField;
    tbGrpG_Prefect: TIBStringField;
    tbGrpG_KolStd: TIntegerField;
    tbFF_Num: TIntegerField;
    tbFF_Name: TIBStringField;
    tbFF_Kurs: TIntegerField;
    tbFF_KolGrp: TIntegerField;
    tbStdSt_Num: TIntegerField;
    tbStdG_Num: TIntegerField;
    tbStdSt_FIO: TIBStringField;
    tbStdSt_HomeAddr: TIBStringField;
    tbStdSt_HomeTel: TIBStringField;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  OriginIndex: String;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
  tbStd.MoveBy(StrToInt(SpinEdit1.Text));
end;

procedure TForm1.Button11Click(Sender: TObject);
  var i: Integer;
begin
  if Edit1.Text <> '' then
  begin
    tbStd.First;
    for i := 0 to tbStd.RecordCount -1 do
    begin
      if String(tbStd.FieldByName('St_FIO').Value).Trim().Equals(Edit1.Text) then
        break;
      tbStd.Next;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  tbStd.First;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  tbStd.Delete;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  tbStd.Prior;
end;

procedure TForm1.Button4Click(Sender: TObject);
  var i:Integer;
begin
  for i := tbStd.RecordCount - 1 downto 0 do
    tbStd.Delete;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  tbStd.Next;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  with tbStd do
  begin
    if Edit1.Text <> '' then
    begin
    Edit;
    FieldByName('St_FIO').Value := Edit1.Text;
    Post;
    end;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  tbStd.Last;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  with tbStd do
  begin
    if Edit1.Text <> '' then
    begin
      Insert;
      FieldByName('St_FIO').Value := Edit1.Text;
      Post;
    end;
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if tbStd.IndexFieldNames = 'G_Num;St_FIO'
  then tbStd.IndexFieldNames := 'G_Num;'
  else tbStd.IndexFieldNames := 'G_Num;St_FIO';
end;

end.
