object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 315
  ClientWidth = 630
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
    Top = 5
    Width = 5
    Height = 19
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 30
    Width = 609
    Height = 219
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
    Visible = False
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object StringGrid2: TStringGrid
    Left = 8
    Top = 263
    Width = 609
    Height = 33
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
    Visible = False
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24)
  end
  object Button1: TButton
    Left = 536
    Top = 2
    Width = 75
    Height = 25
    Caption = #1047#1072#1076#1072#1085#1080#1077' '#8470'2'
    TabOrder = 2
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 576
    Top = 264
    object Start1: TMenuItem
      Caption = 'Start'
      OnClick = Start1Click
    end
    object N1: TMenuItem
      Caption = #1057#1090#1088#1086#1082#1080
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1090#1086#1083#1073#1094#1099
      OnClick = N2Click
    end
    object Minimum1: TMenuItem
      Caption = 'Minimum'
      OnClick = Minimum1Click
    end
  end
end
