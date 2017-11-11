unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.FileCtrl, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    Splitter1: TSplitter;
    FileListBox1: TFileListBox;
    Panel2: TPanel;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  DirectoryListBox1.Align := alLeft;
  DirectoryListBox1.Width := Form1.ClientWidth div 3;
  Splitter1.Left := DirectoryListBox1.Left + DirectoryListBox1.Width + 1;
  Splitter1.Align := DirectoryListBox1.Align;
  Splitter1.Width := 4;
  Splitter1.MinSize := Form1.ClientWidth div 4;
  DirectoryListBox1.FileList := FileListBox1;
end;

end.
