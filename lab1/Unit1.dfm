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
    Left = 257
    Top = 41
    Width = 375
    Height = 242
    Align = alClient
    ExplicitWidth = 16
    ExplicitHeight = 218
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 0
    Top = 41
    Width = 257
    Height = 242
    Align = alLeft
    FileList = FileListBox1
    TabOrder = 0
    OnChange = DirectoryListBox1Change
    ExplicitHeight = 215
  end
  object FileListBox1: TFileListBox
    Left = 257
    Top = 41
    Width = 375
    Height = 242
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
    OnChange = FileListBox1Change
    ExplicitHeight = 215
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 41
    Align = alTop
    TabOrder = 2
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
