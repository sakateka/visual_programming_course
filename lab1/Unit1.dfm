object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 257
    Top = 41
    Width = 375
    Height = 215
    Align = alClient
    ExplicitWidth = 16
    ExplicitHeight = 218
  end
  object Panel1: TPanel
    Left = 0
    Top = 256
    Width = 632
    Height = 43
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    Alignment = taRightJustify
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 253
      Height = 13
      Caption = 'C:\Program Files (x86)\Embarcadero\Studio\19.0\bin'
    end
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 0
    Top = 41
    Width = 257
    Height = 215
    Align = alLeft
    DirLabel = Label1
    FileList = FileListBox1
    TabOrder = 1
    OnChange = DirectoryListBox1Change
  end
  object FileListBox1: TFileListBox
    Left = 257
    Top = 41
    Width = 375
    Height = 215
    Align = alClient
    ItemHeight = 13
    TabOrder = 2
    OnChange = FileListBox1Change
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 41
    Align = alTop
    TabOrder = 3
    object DriveComboBox1: TDriveComboBox
      Left = 16
      Top = 11
      Width = 145
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object FilterComboBox1: TFilterComboBox
      Left = 472
      Top = 11
      Width = 145
      Height = 21
      FileList = FileListBox1
      TabOrder = 1
    end
  end
end
