unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, System.RegularExpressions, Unit2;

type
  TForm1 = class(TForm)
    IBQuery1: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnAll: TButton;
    btnSAmerica: TButton;
    btnSort: TButton;
    btnC3dot: TButton;
    btn3dotC3dot: TButton;
    btnNAmerica: TButton;
    Label4: TLabel;
    TabControl1: TTabControl;
    BitBtn1: TBitBtn;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure btnC3dotClick(Sender: TObject);
    procedure btn3dotC3dotClick(Sender: TObject);
    procedure btnContinentClick(Sender: TObject);
    procedure btnSortClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
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

procedure TForm1.btn3dotC3dotClick(Sender: TObject);
begin
  IBQuery1.Close;
  IBQuery1.SQL.Text := 'select * from Country where upper(name) like ''%C%'';';
  IBQuery1.Open;
end;

procedure TForm1.btnAllClick(Sender: TObject);
begin
  IBQuery1.Close;
  IBQuery1.SQL.Text := 'select * from Country'; { where name like ''A%'';';  }
  IBQuery1.Open;
end;

procedure TForm1.btnC3dotClick(Sender: TObject);
begin
  IBQuery1.Close;
  IBQuery1.SQL.Text := 'select * from Country where name like ''C%'';';
  IBQuery1.Open;
end;

procedure TForm1.btnContinentClick(Sender: TObject);
  var b:TButton;
begin
  b := TButton(Sender);
  IBQuery1.Close;
  IBQuery1.SQL.Text := 'select * from Country where continent like ''' + b.Caption + ''';';
  IBQuery1.Open;
end;

procedure TForm1.btnSortClick(Sender: TObject);
  var query: String;
      regex: TRegEx;
begin
  IBQuery1.Close;
  query := IBQuery1.SQL.Text;
  if query.ToLower.Contains('order by') then
    if query.ToLower.Contains(' asc;') then
      query := regex.Replace(query, ' asc;.*', ' desc;', [roIgnoreCase])
    else
      query := regex.Replace(query, ' desc;.*', ' asc;', [roIgnoreCase])
  else
    query := regex.Replace(query, ';.*$', ' order by population asc;');
  IBQuery1.SQL.Text := query;
  IBQuery1.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  Form2.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
  var name: Char;
begin
  for name := 'A' to 'Z' do
    TabControl1.Tabs.Add(name);
end;

procedure TForm1.TabControl1Change(Sender: TObject);
  var C:String;
begin
  C := TabControl1.Tabs[TabControl1.TabIndex];
  IBQuery1.Close;
  IBQuery1.SQL.Text := 'select * from Country where capital like ''' + C + '%'';';
  IBQuery1.Open;
end;

end.
