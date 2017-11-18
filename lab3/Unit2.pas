unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBTable;

type
  TForm2 = class(TForm)
    IBTable1: TIBTable;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    IBTable1LastName: TIBStringField;
    IBTable1FirstName: TIBStringField;
    IBTable1SalaryLast: TIntegerField;
    IBTable1SalaryCurrent: TIntegerField;
    IBTable1Additions: TIntegerField;
    procedure IBTable1AdditionsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.IBTable1AdditionsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := IBTable1SalaryCurrent.CurValue - IBTable1SalaryLast.CurValue;
end;

end.
