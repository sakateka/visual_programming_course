object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 302
  ClientWidth = 633
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
    Width = 264
    Height = 242
    Align = alClient
    ExplicitLeft = 257
    ExplicitWidth = 16
    ExplicitHeight = 218
  end
  object Image1: TImage
    Left = 457
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
    Width = 264
    Height = 242
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
    OnChange = FileListBox1Change
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 41
    Align = alTop
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 583
      Top = 8
      Width = 23
      Height = 22
      AllowAllUp = True
      GroupIndex = 1
      Down = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333700000733333333F777773FF3333333007F0F70
        0333333773373377FF3333300FFF7FFF003333773F3333377FF33300F0FFFFF0
        F00337737333F37377F33707FFFF0FFFF70737F33337F33337FF300FFFFF0FFF
        FF00773F3337F333377F30707FFF0FFF70707F733337F333737F300FFFF09FFF
        FF0077F33377F33337733707FF0F9FFFF70737FF3737F33F37F33300F0FF9FF0
        F003377F7337F373773333300FFF9FFF00333377FF37F3377FF33300007F9F70
        000337777FF7FF77773333703070007030733373777777737333333333330333
        333333333337FF33333333333330003333333333337773333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
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
    Width = 633
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
  end
end
