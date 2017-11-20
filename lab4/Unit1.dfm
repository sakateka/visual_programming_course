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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 449
    Height = 153
    DataSource = dsF
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 468
    Top = 8
    Width = 447
    Height = 153
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
    Top = 264
    Width = 881
    Height = 169
    DataSource = dsStd
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    Left = 48
    Top = 416
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 104
    Top = 416
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
    Left = 16
    Top = 208
  end
  object dsF: TDataSource
    DataSet = tbF
    Left = 56
    Top = 208
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
      end
      item
        Name = 'F_Num'
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
    Left = 840
    Top = 208
  end
  object dsGrp: TDataSource
    DataSet = tbGrp
    Left = 872
    Top = 208
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
    Left = 216
    Top = 416
  end
  object dsStd: TDataSource
    DataSet = tbStd
    Left = 248
    Top = 416
  end
end
