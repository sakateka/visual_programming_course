unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Generics.Collections,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    DirectoryListBox1: TDirectoryListBox;
    Splitter1: TSplitter;
    FileListBox1: TFileListBox;
    Panel2: TPanel;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    StatusBar1: TStatusBar;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure SetStatusBarTextAndWidth(textP1, textP2: String);
    procedure SetFileFilter();
    procedure SetImagePreview(Fname: String);
    procedure SpeedButton1Click(Sender: TObject);
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
  Image1.Width := Form1.ClientWidth div 3;
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
   var FName: String;
begin
  if FileListBox1.ItemIndex >= 0 then
  begin
    FName := FileListBox1.Items[FileListBox1.ItemIndex];
    SetStatusBarTextAndWidth(DirectoryListBox1.Directory, FName);
    SetImagePreview(FName);
  end
end;

procedure TForm1.SetStatusBarTextAndWidth(textP1, textP2: String);
  var F: TSearchRec;
      PanelWidth: Integer;
      formattedTime: String;
      TimeWidth: Integer;
begin
  StatusBar1.Canvas.Font := StatusBar1.Font;
  DateTimeToString(formattedTime, '  hh:nn:ss      ', Time);
  StatusBar1.Panels[2].Text := formattedTime;
  TimeWidth := 0;
  if SpeedButton1.Down then
    TimeWidth := StatusBar1.Canvas.TextWidth(StatusBar1.Panels[2].Text);

  StatusBar1.Panels[2].Width := TimeWidth;
  PanelWidth := StatusBar1.Width - TimeWidth;


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

procedure TForm1.SpeedButton1Click(Sender: TObject);
  var FName: String;
begin
  FName := '';
  if FileListBox1.ItemIndex >= 0 then
    FName := FileListBox1.Items[FileListBox1.ItemIndex];
  SetStatusBarTextAndWidth(DirectoryListBox1.Directory, FName);
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

procedure TForm1.SetImagePreview(FName: String);
begin
  if LowerCase(ExtractFileExt(FName)) = '.bmp' then
    Image1.Picture.LoadFromFile(FName)
  else
    Image1.Picture.Assign(nil);
end;
end.
