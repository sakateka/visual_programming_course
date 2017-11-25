unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.ExtCtrls, Vcl.DBCtrls, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBTable, IBX.IBQuery, Unit2;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    IBTable1: TIBTable;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    DataSource2: TDataSource;
    IBTable1ID: TIntegerField;
    IBTable1NAME: TIBStringField;
    IBTable1SUPPLY: TIntegerField;
    IBTable1SOLD: TIntegerField;
    IBTable1INSTOCK: TIntegerField;
    IBDataSet1: TIBDataSet;
    CheckBox1: TCheckBox;
    procedure IBTable1InStockGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Exit1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  IBQuery1.DataSource := DataSource1;
  IBQuery1.SQL.Text := 'select * from drinks where "TYPE" = :id;';
  IBQuery1.Open;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    IBQuery1.Active := false;
    DataSource2.DataSet := IBDataSet1;
    IBDataSet1.Active := true;
  end
  else
  begin
    IBDataSet1.Active := false;
    DataSource2.DataSet := IBQuery1;
    IBQuery1.Active := true;
  end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.IBTable1InStockGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  with IBTable1 do begin
    if (FieldByName('SUPPLY').AsString <> '') and (FieldByName('SOLD').AsString <> '') then
      Text := IntToStr(FieldByName('SUPPLY').Value - FieldByName('SOLD').Value);
  end;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Unit2.Form2.IBQuery1 := IBQuery1;
  Unit2.Form2.Show;
end;
end.
