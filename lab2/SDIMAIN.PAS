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
    FileReopenItem: TMenuItem;
    Name01: TMenuItem;
    Name11: TMenuItem;
    Name21: TMenuItem;
    Name41: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure FileSave1Execute(Sender: TObject);
    procedure FileSaveAs1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileClose1Execute(Sender: TObject);
    procedure ItemClick(Sender: TObject);
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
  Hint := 'Form1';
  Memo1.Lines.Clear;
  Memo1.Visible := true;
  FileSaveItem.Enabled := true;
  FileSaveAsItem.Enabled := true;
  FileCloseItem.Enabled := true;
  FileReopenItem.Items[0].Checked := false;
end;

procedure TSDIAppForm.FileOpen1Execute(Sender: TObject);
  var idx: Integer;
      newName, oldPath: String;
      seen: boolean;
begin
  if OpenDialog.Execute then
  begin
    if SysUtils.FileExists(OpenDialog.FileName) then
      Memo1.Lines.LoadFromFile(OpenDialog.FileName);
    Memo1.Visible := true;
    Caption := ExtractFileName(OpenDialog.FileName);
    Hint := OpenDialog.FileName;
    FileSaveItem.Enabled := true;
    FileSaveAsItem.Enabled := true;
    FileCloseItem.Enabled := true;
    FileReopenItem.Enabled := true;

    for idx := 0 to (FileReopenItem.Count - 1) do
    begin
      FileReopenItem.Items[idx].Checked := false;
      if FileReopenItem.Items[idx].Hint = OpenDialog.FileName then
      begin
        seen := true;
        if FileReopenItem.Items[idx].Visible then
        begin
          oldPath := FileReopenItem.Items[0].Hint;
          FileReopenItem.Items[idx].Hint := oldPath;
          FileReopenItem.Items[idx].Caption := '&' + IntToStr(idx+1) + ' ' + ExtractFileName(oldPath);
        end;
      end;
    end;
    if not seen then
      for idx := (FileReopenItem.Count - 1) downto 1 do
      begin
        newName := FileReopenItem.Items[idx-1].Caption;
        System.Delete(newName, 1, 2);
        FileReopenItem.Items[idx].Caption := '&' + IntToStr(idx+1) + newName;
        FileReopenItem.Items[idx].Hint := FileReopenItem.Items[idx-1].Hint;
        FileReopenItem.Items[idx].Visible := FileReopenItem.Items[idx-1].Visible;
      end;
    FileReopenItem.Items[0].Checked := true;
    FileReopenItem.Items[0].Visible := true;
    FileReopenItem.Items[0].Hint := OpenDialog.FileName;
    FileReopenItem.Items[0].Caption := '&1 ' + ExtractFileName(OpenDialog.FileName);
  end;
end;

procedure TSDIAppForm.FileSave1Execute(Sender: TObject);
begin
  if Hint = 'Form1' then
  begin
    Hint := '';
    FileSaveAs1Execute(Sender);
    if Hint = '' then
      Hint := 'Form1';
  end
  else
    Memo1.Lines.SaveToFile(Hint);
end;

procedure TSDIAppForm.FileSaveAs1Execute(Sender: TObject);
begin
  SaveDialog.InitialDir := ExtractFileDir(Hint);
  SaveDialog.FileName := ExtractFileName(Hint);
  if SaveDialog.Execute then
  begin
    Memo1.Lines.SaveToFile(SaveDialog.FileName);
    Hint := SaveDialog.FileName;
    Caption := ExtractFileName(SaveDialog.FileName);
  end;
end;

procedure TSDIAppForm.FileClose1Execute(Sender: TObject);
  var idx: Integer;
begin
  Memo1.Visible := false;
  Caption := 'Form1';
  Hint := 'Form1';
  FileSaveItem.Enabled := false;
  FileSaveAsItem.Enabled := false;
  FileCloseItem.Enabled := false;
  for idx := 0 to (FileReopenItem.Count - 1) do
    FileReopenItem.Items[idx].Checked := false;
end;

procedure TSDIAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TSDIAppForm.HelpAbout1Execute(Sender: TObject);
begin
  MessageDlg('Авторы'#13#10'Студенты СибГУТИ', mtInformation, [mbOK], 0, mbOK);
end;

procedure TSDIAppForm.ItemClick(Sender: TObject);
  var idx: Integer;
      item: TMenuItem;
begin
  item := TMenuItem(Sender);
  for idx := 0 to (FileReopenItem.Count - 1) do
  begin
    if FileReopenItem.Items[idx].Hint = item.Hint then
    begin
      if SysUtils.FileExists(item.Hint) then
        Memo1.Lines.LoadFromFile(item.Hint);
      Memo1.Visible := true;
      FileSaveItem.Enabled := true;
      FileSaveAsItem.Enabled := true;
      FileCloseItem.Enabled := true;
      Caption := ExtractFileName(item.Hint);
      Hint := item.Hint;
      FileReopenItem.Items[idx].Checked := true
    end
    else
      FileReopenItem.Items[idx].Checked := false;
  end;
end;

end.
