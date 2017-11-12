unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    Splitter1: TSplitter;
    FileListBox1: TFileListBox;
    Panel2: TPanel;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FileListBox1Change(Sender: TObject);
  var F: TSearchRec;
begin
  if FileListBox1.ItemIndex >= 0 then
    if FindFirst(FileListBox1.Items[FileListBox1.ItemIndex], faAnyFile, F) = 0 then
      Panel1.Caption := F.Name + ' ' + IntToStr(F.Size) + ' bytes ';
end;

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
