object FormTipoInventario: TFormTipoInventario
  Left = 0
  Top = 0
  Caption = 'Tipo de Inventario'
  ClientHeight = 393
  ClientWidth = 709
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
    Width = 58
    Height = 13
    Caption = 'Nombre tipo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Descripcion'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 72
    Height = 13
    Caption = 'Fecha creaci'#243'n'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 200
    Height = 21
    DataField = 'nombre_tipo'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 200
    Height = 21
    DataField = 'descripcion'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 200
    Height = 21
    DataField = 'fecha_creacion'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 144
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 215
    Width = 681
    Height = 170
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Productos: TButton
    Left = 480
    Top = 22
    Width = 121
    Height = 25
    Caption = 'Productos'
    TabOrder = 5
    OnClick = ProductosClick
  end
  object Button2: TButton
    Left = 616
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Cristina A' +
      'costa\Documents\db inventario\inventario.mdb;Persist Security In' +
      'fo=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 664
    Top = 336
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tipo_de_inventario'
    Left = 528
    Top = 352
    object ADOTable1Id_tipo: TAutoIncField
      FieldName = 'Id_tipo'
      ReadOnly = True
    end
    object ADOTable1nombre_tipo: TWideStringField
      FieldName = 'nombre_tipo'
      Size = 100
    end
    object ADOTable1descripcion: TWideStringField
      FieldName = 'descripcion'
      Size = 100
    end
    object ADOTable1fecha_creacion: TDateTimeField
      FieldName = 'fecha_creacion'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 584
    Top = 352
  end
end
