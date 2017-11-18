object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1060#1072#1082#1090#1099' '#1086' '#1088#1099#1073#1072#1093
  ClientHeight = 460
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 273
    Height = 215
    TabOrder = 0
    object DBText1: TDBText
      Left = 8
      Top = 176
      Width = 241
      Height = 33
      Alignment = taCenter
      DataField = 'COMMON_NAME'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'MS Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBImage1: TDBImage
      Left = 4
      Top = 0
      Width = 265
      Height = 170
      DataField = 'GRAPHIC'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 287
    Top = 8
    Width = 202
    Height = 25
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 56
      Height = 13
      Caption = 'About the'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 67
      Top = 5
      Width = 126
      Height = 17
      DataField = 'COMMON_NAME'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 264
    Width = 601
    Height = 193
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 599
      Height = 191
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel4: TPanel
    Left = 287
    Top = 39
    Width = 312
    Height = 219
    TabOrder = 3
    object DBMemo1: TDBMemo
      Left = 1
      Top = 1
      Width = 310
      Height = 217
      Align = alClient
      BorderStyle = bsNone
      Color = clSilver
      DataField = 'NOTES'
      DataSource = DataSource1
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 223
    Width = 270
    Height = 35
    DataSource = DataSource1
    Flat = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 495
    Top = 8
    Width = 103
    Height = 25
    Caption = #1047#1072#1076#1072#1085#1080#1077' '#8470'2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost:C:\Users\Public\Documents\Embarcadero\Studio\19.0\Samp' +
      'les\Data\dbdemos.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 56
    Top = 40
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 136
    Top = 32
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from biolife'
      'where'
      '  SPECIES_NO = :OLD_SPECIES_NO')
    InsertSQL.Strings = (
      'insert into biolife'
      
        '  (SPECIES_NO, CATEGORY, COMMON_NAME, SPECIES_NAME, LENGTH__CM_,' +
        ' LENGTH_IN, '
      '   NOTES, GRAPHIC)'
      'values'
      
        '  (:SPECIES_NO, :CATEGORY, :COMMON_NAME, :SPECIES_NAME, :LENGTH_' +
        '_CM_, :LENGTH_IN, '
      '   :NOTES, :GRAPHIC)')
    RefreshSQL.Strings = (
      'Select *'
      'from biolife '
      'where'
      '  SPECIES_NO = :SPECIES_NO')
    SelectSQL.Strings = (
      'select * from BIOLIFE')
    ModifySQL.Strings = (
      'update biolife'
      'set'
      '  SPECIES_NO = :SPECIES_NO,'
      '  CATEGORY = :CATEGORY,'
      '  COMMON_NAME = :COMMON_NAME,'
      '  SPECIES_NAME = :SPECIES_NAME,'
      '  LENGTH__CM_ = :LENGTH__CM_,'
      '  LENGTH_IN = :LENGTH_IN,'
      '  NOTES = :NOTES,'
      '  GRAPHIC = :GRAPHIC'
      'where'
      '  SPECIES_NO = :OLD_SPECIES_NO')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 56
    Top = 96
    object IBDataSet1CATEGORY: TIBStringField
      DisplayLabel = 'Category'
      DisplayWidth = 11
      FieldName = 'CATEGORY'
      Origin = '"BIOLIFE"."CATEGORY"'
      Size = 15
    end
    object IBDataSet1COMMON_NAME: TIBStringField
      DisplayLabel = 'Common name'
      DisplayWidth = 21
      FieldName = 'COMMON_NAME'
      Origin = '"BIOLIFE"."COMMON_NAME"'
      Size = 30
    end
    object IBDataSet1SPECIES_NAME: TIBStringField
      DisplayLabel = 'Species name'
      DisplayWidth = 26
      FieldName = 'SPECIES_NAME'
      Origin = '"BIOLIFE"."SPECIES_NAME"'
      Size = 40
    end
    object IBDataSet1LENGTH__CM_: TFloatField
      DisplayLabel = 'Length (cm)'
      DisplayWidth = 11
      FieldName = 'LENGTH__CM_'
      Origin = '"BIOLIFE"."LENGTH__CM_"'
    end
    object IBDataSet1LENGTH_IN: TFloatField
      DisplayLabel = 'Length (in)'
      DisplayWidth = 18
      FieldName = 'LENGTH_IN'
      Origin = '"BIOLIFE"."LENGTH_IN"'
    end
    object IBDataSet1NOTES: TWideMemoField
      DisplayLabel = 'Notes'
      DisplayWidth = 10
      FieldName = 'NOTES'
      Origin = '"BIOLIFE"."NOTES"'
      ProviderFlags = [pfInUpdate]
      Visible = False
      BlobType = ftWideMemo
      Size = 8
    end
    object IBDataSet1GRAPHIC: TBlobField
      DisplayLabel = 'Graphic'
      FieldName = 'GRAPHIC'
      Origin = '"BIOLIFE"."GRAPHIC"'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Left = 136
    Top = 96
  end
end
