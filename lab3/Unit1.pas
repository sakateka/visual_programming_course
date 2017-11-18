unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, IBX.IBCustomDataSet, IBX.IBDatabase,
  Unit2;

type
  TForm1 = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBDataSet1: TIBDataSet;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBImage1: TDBImage;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    IBDataSet1CATEGORY: TIBStringField;
    IBDataSet1COMMON_NAME: TIBStringField;
    IBDataSet1SPECIES_NAME: TIBStringField;
    IBDataSet1LENGTH__CM_: TFloatField;
    IBDataSet1LENGTH_IN: TFloatField;
    IBDataSet1NOTES: TWideMemoField;
    IBDataSet1GRAPHIC: TBlobField;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
  Application.CreateForm(TForm2, Form2);
  Form2.Show;
end;

end.
