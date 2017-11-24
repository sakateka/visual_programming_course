object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 346
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 150
    Height = 23
    Caption = #1058#1080#1087#1099' '#1085#1072#1087#1080#1090#1082#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 171
    Width = 83
    Height = 23
    Caption = #1053#1072#1087#1080#1090#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 21
    Width = 593
    Height = 108
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 200
    Width = 505
    Height = 138
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 536
    Top = 184
    Width = 75
    Height = 25
    Caption = #1057#1074#1103#1079#1100
    TabOrder = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 519
    Top = 215
    Width = 108
    Height = 105
    Caption = #1056#1077#1078#1080#1084
    TabOrder = 3
  end
  object RadioButton1: TRadioButton
    Left = 530
    Top = 240
    Width = 91
    Height = 17
    Caption = 'Edit'
    TabOrder = 4
  end
  object RadioButton2: TRadioButton
    Left = 530
    Top = 272
    Width = 91
    Height = 17
    Caption = 'Insert'
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 135
    Width = 240
    Height = 25
    TabOrder = 6
  end
  object MainMenu1: TMainMenu
    Left = 584
    Top = 304
    object N1: TMenuItem
      Caption = '1'
      object N11: TMenuItem
        Caption = 'Fnd'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object N21: TMenuItem
      Caption = '2'
    end
  end
end
