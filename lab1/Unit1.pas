unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Generics.Collections,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    DirectoryListBox1: TDirectoryListBox;
    Splitter1: TSplitter;
    FileListBox1: TFileListBox;
    Panel2: TPanel;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure SetStatusBarTextAndWidth(textP1, textP2: String);
    procedure SetFileFilter();
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
  SetFileFilter;
  DirectoryListBox1.Align := alLeft;
  DirectoryListBox1.Width := Form1.ClientWidth div 3;
  Splitter1.Left := DirectoryListBox1.Left + DirectoryListBox1.Width + 1;
  Splitter1.Align := DirectoryListBox1.Align;
  Splitter1.Width := 4;
  Splitter1.MinSize := Form1.ClientWidth div 4;
  DirectoryListBox1.FileList := FileListBox1;
  SetStatusBarTextAndWidth(DirectoryListBox1.Directory, '');
end;

procedure TForm1.DirectoryListBox1Change(Sender: TObject);
begin
  SetFileFilter;
  SetStatusBarTextAndWidth(DirectoryListBox1.Directory, '');
end;

procedure TForm1.FileListBox1Change(Sender: TObject);

begin
  if FileListBox1.ItemIndex >= 0 then
    SetStatusBarTextAndWidth(DirectoryListBox1.Directory, FileListBox1.Items[FileListBox1.ItemIndex]);

end;

procedure TForm1.SetStatusBarTextAndWidth(textP1, textP2: String);
  var F: TSearchRec;
      PanelWidth: Integer;
      formattedTime: String;
begin
  StatusBar1.Canvas.Font := StatusBar1.Font;
  DateTimeToString(formattedTime, '  hh:nn:ss      ', Time);
  StatusBar1.Panels[2].Text := formattedTime;
  StatusBar1.Panels[2].Width := StatusBar1.Canvas.TextWidth(StatusBar1.Panels[2].Text);
  PanelWidth := StatusBar1.Width - StatusBar1.Panels[2].Width;


  if textP2.Length > 0 then
    if FindFirst(textP2, faAnyFile, F) = 0 then
       textP2 := F.Name + ' ' + IntToStr(F.Size) + ' bytes';
  StatusBar1.Panels[1].Text :=  textP2;
  StatusBar1.Panels[1].Width := StatusBar1.Canvas.TextWidth(textP2) + 6;

  PanelWidth := PanelWidth - StatusBar1.Panels[1].Width;
  if (StatusBar1.Canvas.TextWidth(textP1) + 6) > PanelWidth then
    textP1 := MinimizeName(textP1, StatusBar1.Canvas, PanelWidth - 6);
  StatusBar1.Panels[0].Text := textP1;
  StatusBar1.Panels[0].Width := PanelWidth;
end;

procedure TForm1.SetFileFilter();
  var dict: TDictionary<String, boolean>;
  ext: String;
  FName: String;
begin
  dict := TDictionary<String, boolean>.Create;
  for FName in FileListBox1.Items do
  begin
     ext := ExtractFileExt(FName);
     dict.AddOrSetValue(ext, True);
  end;
  FilterComboBox1.Filter := 'All files (*.*)|*.*';
  for ext in dict.Keys do
    FilterComboBox1.Filter :=  FilterComboBox1.Filter + '|' + '*' + ext + '|' + '*' + ext;
end;
end.
