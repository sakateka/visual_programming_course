object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 464
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 549
    Top = 335
    Width = 70
    Height = 13
    Caption = #1058#1086#1095#1085#1099#1081' '#1087#1086#1080#1089#1082
  end
  object Label2: TLabel
    Left = 736
    Top = 333
    Width = 95
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1080#1084#1074#1086#1083#1072#1084
  end
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 58
    Height = 13
    Caption = #1060#1072#1082#1091#1083#1100#1077#1090#1099
  end
  object Label4: TLabel
    Left = 464
    Top = 8
    Width = 38
    Height = 13
    Caption = #1043#1088#1091#1087#1087#1099
  end
  object Label5: TLabel
    Left = 8
    Top = 205
    Width = 52
    Height = 13
    Caption = #1057#1090#1091#1076#1077#1085#1090#1099
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 449
    Height = 124
    DataSource = dsF
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 464
    Top = 32
    Width = 447
    Height = 124
    DataSource = dsGrp
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 224
    Width = 449
    Height = 170
    DataSource = dsStd
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 463
    Top = 162
    Width = 240
    Height = 25
    DataSource = dsGrp
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 162
    Width = 240
    Height = 25
    DataSource = dsF
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 39
    Top = 400
    Width = 75
    Height = 25
    Caption = 'First'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 39
    Top = 431
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Prev'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 120
    Top = 431
    Width = 75
    Height = 25
    Caption = 'Delete All'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 201
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Next'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 201
    Top = 431
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 10
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 282
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Last'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 282
    Top = 431
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 12
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 628
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 13
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 544
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Move By'
    TabOrder = 14
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 512
    Top = 304
    Width = 107
    Height = 25
    Caption = #1055#1086#1080#1089#1082' '#1087#1077#1088#1077#1073#1086#1088#1086#1084
    TabOrder = 15
  end
  object Edit1: TEdit
    Left = 376
    Top = 433
    Width = 121
    Height = 21
    TabOrder = 16
  end
  object Edit2: TEdit
    Left = 498
    Top = 352
    Width = 191
    Height = 21
    TabOrder = 17
  end
  object Edit3: TEdit
    Left = 695
    Top = 352
    Width = 170
    Height = 21
    TabOrder = 18
  end
  object SpinEdit1: TSpinEdit
    Left = 625
    Top = 258
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 19
    Value = 0
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:DatabaseLab4'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 24
    Top = 320
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 72
    Top = 328
  end
  object tbF: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'F_Num'
        DataType = ftInteger
      end
      item
        Name = 'F_Name'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'F_Kurs'
        DataType = ftInteger
      end
      item
        Name = 'F_KolGrp'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'F_Num'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'Faculty'
    UniDirectional = False
    Left = 280
    Top = 144
    object tbFF_Num: TIntegerField
      FieldName = 'F_Num'
    end
    object tbFF_Name: TIBStringField
      DisplayLabel = #1060#1072#1082#1091#1083#1100#1090#1077#1090
      FieldName = 'F_Name'
      FixedChar = True
      Size = 5
    end
    object tbFF_Kurs: TIntegerField
      DisplayLabel = #1050#1091#1088#1089
      FieldName = 'F_Kurs'
    end
    object tbFF_KolGrp: TIntegerField
      DisplayLabel = #1050#1086#1083'. '#1075#1088#1091#1087#1087
      FieldName = 'F_KolGrp'
    end
  end
  object dsF: TDataSource
    DataSet = tbF
    Left = 320
    Top = 144
  end
  object tbGrp: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'G_Num'
        DataType = ftInteger
      end
      item
        Name = 'F_Num'
        DataType = ftInteger
      end
      item
        Name = 'G_Name'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'G_Prefect'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'G_KolStd'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY4'
        Fields = 'G_Num'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN7'
        Fields = 'F_Num'
      end>
    IndexFieldNames = 'F_Num'
    MasterFields = 'F_Num'
    MasterSource = dsF
    StoreDefs = True
    TableName = 'Group'
    UniDirectional = False
    Left = 816
    Top = 160
    object tbGrpG_Num: TIntegerField
      DisplayWidth = 7
      FieldName = 'G_Num'
    end
    object tbGrpF_Num: TIntegerField
      DisplayWidth = 6
      FieldName = 'F_Num'
    end
    object tbGrpG_Name: TIBStringField
      DisplayLabel = #1043#1088#1091#1087#1087#1072
      DisplayWidth = 10
      FieldName = 'G_Name'
      FixedChar = True
      Size = 10
    end
    object tbGrpG_Prefect: TIBStringField
      DisplayLabel = #1057#1090#1072#1088#1086#1089#1090#1072
      DisplayWidth = 16
      FieldName = 'G_Prefect'
      FixedChar = True
    end
    object tbGrpG_KolStd: TIntegerField
      DisplayLabel = #1050#1086#1083'. '#1089#1090#1091#1076#1077#1085#1090#1086#1074
      DisplayWidth = 13
      FieldName = 'G_KolStd'
    end
  end
  object dsGrp: TDataSource
    DataSet = tbGrp
    Left = 848
    Top = 160
  end
  object tbStd: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'St_Num'
        DataType = ftInteger
      end
      item
        Name = 'G_Num'
        DataType = ftInteger
      end
      item
        Name = 'St_FIO'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'St_HomeAddr'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'St_HomeTel'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY5'
        Fields = 'St_Num'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN6'
        Fields = 'G_Num'
      end>
    IndexFieldNames = 'G_Num'
    MasterFields = 'G_Num'
    MasterSource = dsGrp
    StoreDefs = True
    TableName = 'Stud'
    UniDirectional = False
    Left = 128
    Top = 320
    object tbStdSt_Num: TIntegerField
      DisplayWidth = 10
      FieldName = 'St_Num'
    end
    object tbStdG_Num: TIntegerField
      DisplayWidth = 10
      FieldName = 'G_Num'
    end
    object tbStdSt_FIO: TIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 12
      FieldName = 'St_FIO'
      FixedChar = True
      Size = 50
    end
    object tbStdSt_HomeAddr: TIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 17
      FieldName = 'St_HomeAddr'
      FixedChar = True
      Size = 80
    end
    object tbStdSt_HomeTel: TIBStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 7
      FieldName = 'St_HomeTel'
      FixedChar = True
      Size = 15
    end
  end
  object dsStd: TDataSource
    DataSet = tbStd
    Left = 160
    Top = 336
  end
end
