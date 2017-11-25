unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IBX.IBQuery;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    IBQuery1: TIBQuery;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    IBQuery1.SQL.Text := 'select * from DRINKS where "COUNT" = :p;';
    IBQuery1.ParamByName('p').AsString := Edit1.Text;
    IBQuery1.Open;
    Form2.Close;
  end;
end;

end.
