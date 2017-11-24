object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 401
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object Label2: TLabel
    Left = 152
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Continent:'
  end
  object Label3: TLabel
    Left = 272
    Top = 8
    Width = 54
    Height = 13
    Caption = 'Population:'
  end
  object Label4: TLabel
    Left = 24
    Top = 360
    Width = 33
    Height = 13
    Caption = 'Capital'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 135
    Width = 628
    Height = 193
    TabStop = False
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAll: TButton
    Left = 24
    Top = 35
    Width = 75
    Height = 25
    Caption = 'All'
    TabOrder = 0
    OnClick = btnAllClick
  end
  object btnSAmerica: TButton
    Left = 136
    Top = 35
    Width = 89
    Height = 25
    Caption = 'South America'
    TabOrder = 3
    OnClick = btnContinentClick
  end
  object btnSort: TButton
    Left = 264
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 5
    OnClick = btnSortClick
  end
  object btnC3dot: TButton
    Left = 24
    Top = 66
    Width = 75
    Height = 25
    Caption = 'C...'
    TabOrder = 1
    OnClick = btnC3dotClick
  end
  object btn3dotC3dot: TButton
    Left = 24
    Top = 97
    Width = 75
    Height = 25
    Caption = '...C...'
    TabOrder = 2
    OnClick = btn3dotC3dotClick
  end
  object btnNAmerica: TButton
    Left = 136
    Top = 66
    Width = 89
    Height = 25
    Caption = 'North America'
    TabOrder = 4
    OnClick = btnContinentClick
  end
  object TabControl1: TTabControl
    Left = 69
    Top = 350
    Width = 567
    Height = 33
    TabOrder = 6
    OnChange = TabControl1Change
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 35
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 8
  end
  object Button1: TButton
    Left = 506
    Top = 80
    Width = 81
    Height = 25
    Caption = #1047#1072#1076#1072#1085#1080#1077' '#8470'2'
    TabOrder = 9
    OnClick = Button1Click
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from country;')
    Left = 256
    Top = 352
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost:C:\Users\IEUser\Documents\Embarcadero\Studio\Projects\' +
      'visual_programming_course\lab5\dbdemos.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 168
    Top = 352
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 216
    Top = 352
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 312
    Top = 352
  end
end
