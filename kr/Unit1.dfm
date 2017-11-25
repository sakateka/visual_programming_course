object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 350
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
    DataSource = DataSource1
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
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 519
    Top = 184
    Width = 75
    Height = 25
    Caption = #1057#1074#1103#1079#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 135
    Width = 240
    Height = 25
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 519
    Top = 215
    Width = 108
    Height = 17
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object MainMenu1: TMainMenu
    Left = 584
    Top = 304
    object N1: TMenuItem
      Caption = '1'
      object N11: TMenuItem
        Caption = 'Fnd'
        OnClick = N11Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object N21: TMenuItem
      Caption = '2'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 480
    Top = 96
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'SUPPLY'
        DataType = ftInteger
      end
      item
        Name = 'SOLD'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'SOFTDRINKSTYPES'
    UniDirectional = False
    Left = 536
    Top = 96
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      FixedChar = True
      Size = 30
    end
    object IBTable1SUPPLY: TIntegerField
      FieldName = 'SUPPLY'
    end
    object IBTable1SOLD: TIntegerField
      FieldName = 'SOLD'
    end
    object IBTable1INSTOCK: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'INSTOCK'
      OnGetText = IBTable1InStockGetText
      Calculated = True
    end
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost:C:\Users\IEUser\Documents\Embarcadero\Studio\Projects\' +
      'visual_programming_course\kr\KRDB.IB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 480
    Top = 296
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 536
    Top = 296
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select *  from drinks where "TYPE" = :id;')
    Left = 440
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 400
    Top = 296
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from drinks'
      'where'
      '  "DRINKID" = :OLD_DRINKID')
    InsertSQL.Strings = (
      'insert into drinks'
      '  ("TYPE", "NAME", "COUNT")'
      'values'
      '  (:TYPE, :NAME, :COUNT)')
    RefreshSQL.Strings = (
      'Select *'
      'from drinks '
      'where'
      '  "DRINKID" = :DRINKID')
    SelectSQL.Strings = (
      'select * from drinks where "TYPE" = :ID;')
    ModifySQL.Strings = (
      'update drinks'
      'set'
      '  "TYPE" = :TYPE,'
      '  "NAME" = :NAME,'
      '  "COUNT" = :COUNT'
      'where'
      '  "DRINKID" = :OLD_DRINKID')
    ParamCheck = True
    UniDirectional = False
    DataSource = DataSource1
    Left = 464
    Top = 152
  end
end
