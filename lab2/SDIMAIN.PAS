unit SDIMAIN;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, System.ImageList,
  System.Actions, System.UITypes, SysUtils;

type
  TSDIAppForm = class(TForm)
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    ActionList1: TActionList;
    FileNew1: TAction;
    FileOpen1: TAction;
    FileSave1: TAction;
    FileSaveAs1: TAction;
    FileExit1: TAction;
    HelpAbout1: TAction;
    StatusBar: TStatusBar;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    Memo1: TMemo;
    FileClose1: TAction;
    FileCloseItem: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure FileSave1Execute(Sender: TObject);
    procedure FileSaveAs1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileClose1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SDIAppForm: TSDIAppForm;

implementation

uses About;

{$R *.dfm}

procedure TSDIAppForm.FileNew1Execute(Sender: TObject);
begin
  Caption := 'Form1';
  Memo1.Lines.Clear;
  Memo1.Visible := true;
  FileSaveItem.Enabled := true;
  FileSaveAsItem.Enabled := true;
  FileCloseItem.Enabled := true;
end;

procedure TSDIAppForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    if SysUtils.FileExists(OpenDialog.FileName) then
      Memo1.Lines.LoadFromFile(OpenDialog.FileName);
    Memo1.Visible := true;
    Caption := OpenDialog.FileName;
    FileSaveItem.Enabled := true;
    FileSaveAsItem.Enabled := true;
    FileCloseItem.Enabled := true;
  end;
end;

procedure TSDIAppForm.FileSave1Execute(Sender: TObject);
begin
  if Caption = 'Form1' then
  begin
    Caption := '';
    FileSaveAs1Execute(Sender);
    if Caption = '' then
      Caption := 'Form1';
  end
  else
    Memo1.Lines.SaveToFile(Caption);
end;

procedure TSDIAppForm.FileSaveAs1Execute(Sender: TObject);
begin
  SaveDialog.InitialDir := ExtractFileDir(Caption);
  SaveDialog.FileName := ExtractFileName(Caption);
  if SaveDialog.Execute then
  begin
    Memo1.Lines.SaveToFile(SaveDialog.FileName);
    Caption := SaveDialog.FileName;
  end;
end;

procedure TSDIAppForm.FileClose1Execute(Sender: TObject);
begin
    Memo1.Visible := false;
    Caption := 'Form1';
    FileSaveItem.Enabled := false;
    FileSaveAsItem.Enabled := false;
    FileCloseItem.Enabled := false;
end;

procedure TSDIAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TSDIAppForm.HelpAbout1Execute(Sender: TObject);
begin
  MessageDlg('Авторы'#13#10'Студенты СибГУТИ', mtInformation, [mbOK], 0, mbOK);
end;

end.
