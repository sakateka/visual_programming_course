unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  IBX.IBCustomDataSet, IBX.IBTable, IBX.IBDatabase;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
