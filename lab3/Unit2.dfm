object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
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
    Top = 39
    Width = 625
    Height = 252
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FirstName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Additions'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 350
    Height = 25
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 384
    Top = 8
    Width = 121
    Height = 21
    DataField = 'FirstName'
    DataSource = DataSource1
    TabOrder = 2
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'LastName'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FirstName'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PhoneExt'
        DataType = ftInteger
      end
      item
        Name = 'HireDate'
        DataType = ftDate
      end
      item
        Name = 'SalaryLast'
        DataType = ftInteger
      end
      item
        Name = 'SalaryCurrent'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'LastName;FirstName'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'EMPLOYEE'
    UniDirectional = False
    Left = 168
    Top = 248
    object IBTable1FirstName: TIBStringField
      FieldName = 'FirstName'
      FixedChar = True
      Size = 10
    end
    object IBTable1LastName: TIBStringField
      FieldName = 'LastName'
      FixedChar = True
      Size = 10
    end
    object IBTable1SalaryLast: TIntegerField
      FieldName = 'SalaryLast'
    end
    object IBTable1SalaryCurrent: TIntegerField
      FieldName = 'SalaryCurrent'
    end
    object IBTable1Additions: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Additions'
      OnGetText = IBTable1AdditionsGetText
      Calculated = True
    end
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost:C:\Users\IEUser\Documents\Embarcadero\Studio\Projects\' +
      'visual_programming_course\lab3\UNIT2.IB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 32
    Top = 248
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 104
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 224
    Top = 248
  end
end
