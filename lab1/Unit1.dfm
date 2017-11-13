object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 302
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
    Left = 193
    Top = 41
    Width = 263
    Height = 242
    Align = alClient
    ExplicitLeft = 257
    ExplicitWidth = 16
    ExplicitHeight = 218
  end
  object Image1: TImage
    Left = 456
    Top = 41
    Width = 176
    Height = 242
    Align = alRight
    ExplicitLeft = 462
    ExplicitTop = 38
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 0
    Top = 41
    Width = 193
    Height = 242
    Align = alLeft
    FileList = FileListBox1
    TabOrder = 0
    OnChange = DirectoryListBox1Change
  end
  object FileListBox1: TFileListBox
    Left = 193
    Top = 41
    Width = 263
    Height = 242
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
    OnChange = FileListBox1Change
    ExplicitLeft = 257
    ExplicitWidth = 240
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 41
    Align = alTop
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 583
      Top = 8
      Width = 23
      Height = 22
    end
    object Label1: TLabel
      Left = 12
      Top = 14
      Width = 25
      Height = 13
      Caption = #1044#1080#1089#1082
    end
    object Label2: TLabel
      Left = 365
      Top = 12
      Width = 53
      Height = 13
      Caption = #1058#1080#1087' '#1092#1072#1081#1083#1072
    end
    object DriveComboBox1: TDriveComboBox
      Left = 46
      Top = 11
      Width = 145
      Height = 19
      HelpType = htKeyword
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object FilterComboBox1: TFilterComboBox
      Left = 424
      Top = 9
      Width = 145
      Height = 21
      FileList = FileListBox1
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 283
    Width = 632
    Height = 19
    DoubleBuffered = False
    Panels = <
      item
        Bevel = pbRaised
        Width = 300
      end
      item
        Bevel = pbRaised
        Width = 50
      end
      item
        Alignment = taRightJustify
        Bevel = pbNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 25
      end>
    ParentDoubleBuffered = False
    ExplicitTop = 289
  end
end
