object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
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
    Height = 218
    Align = alClient
    ExplicitWidth = 16
  end
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 632
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 0
    ExplicitTop = 265
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 0
    Top = 41
    Width = 257
    Height = 218
    Align = alLeft
    TabOrder = 1
  end
  object FileListBox1: TFileListBox
    Left = 257
    Top = 41
    Width = 375
    Height = 218
    Align = alClient
    ItemHeight = 13
    TabOrder = 2
    ExplicitLeft = 272
    ExplicitWidth = 360
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 3
    object DriveComboBox1: TDriveComboBox
      Left = 16
      Top = 11
      Width = 145
      Height = 19
      TabOrder = 0
    end
    object FilterComboBox1: TFilterComboBox
      Left = 472
      Top = 11
      Width = 145
      Height = 21
      TabOrder = 1
    end
  end
end
