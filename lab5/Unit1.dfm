object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 458
  ClientWidth = 639
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
    Left = 40
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 160
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 288
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object SpeedButton1: TSpeedButton
    Left = 480
    Top = 35
    Width = 57
    Height = 22
    Caption = 'Close'
  end
  object Label4: TLabel
    Left = 24
    Top = 384
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 623
    Height = 193
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 24
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 136
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 264
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
  end
  object Button4: TButton
    Left = 24
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 24
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
  end
  object Button6: TButton
    Left = 136
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
  end
  object TabControl1: TTabControl
    Left = 176
    Top = 368
    Width = 441
    Height = 47
    TabOrder = 7
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
    Left = 120
    Top = 416
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
    Left = 8
    Top = 416
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 56
    Top = 416
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 168
    Top = 416
  end
end
