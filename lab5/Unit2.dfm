object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 369
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Orders'
  end
  object Label2: TLabel
    Left = 351
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Items'
  end
  object Label3: TLabel
    Left = 8
    Top = 176
    Width = 19
    Height = 13
    Caption = 'Join'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 27
    Width = 337
    Height = 143
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 351
    Top = 27
    Width = 333
    Height = 143
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 195
    Width = 676
    Height = 158
    DataSource = DataSource3
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 304
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 640
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 608
    Top = 296
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select ORDERNO, CUSTNO, SALEDATE from ORDERS;')
    Left = 256
    Top = 120
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      
        'select ORDERNO, PARTNO, QTY  from ITEMS where  ORDERNO = :ORDERN' +
        'O;')
    Left = 592
    Top = 120
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ORDERNO'
        ParamType = ptUnknown
        Size = 8
      end>
  end
  object IBQuery3: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select o.ORDERNO, o.CUSTNO, o.SALEDATE, i.PARTNO, i.QTY from ord' +
        'ers o join items i on o.orderno = i.orderno order by o.orderno;')
    Left = 560
    Top = 296
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 120
    Top = 328
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
    Left = 56
    Top = 328
  end
end
