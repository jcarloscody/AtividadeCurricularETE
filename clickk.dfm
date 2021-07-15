object esp: Tesp
  Left = -8
  Top = -8
  Width = 1040
  Height = 616
  BorderIcons = [biSystemMenu]
  Caption = 'Clicks dos Usuarios'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 67
    Height = 13
    Caption = 'Pesquisar por:'
  end
  object Label2: TLabel
    Left = 216
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object SpeedButton1: TSpeedButton
    Left = 456
    Top = 64
    Width = 137
    Height = 33
    Caption = 'Pesquisar'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 8
    Top = 120
    Width = 25
    Height = 17
    Caption = 'X'
    Flat = True
    OnClick = SpeedButton2Click
  end
  object DBText1: TDBText
    Left = 856
    Top = 232
    Width = 65
    Height = 17
    DataField = 'nome'
    DataSource = ds_espiao
  end
  object DBText2: TDBText
    Left = 896
    Top = 256
    Width = 65
    Height = 17
    DataField = 'nivel'
    DataSource = ds_espiao
  end
  object DBText3: TDBText
    Left = 872
    Top = 280
    Width = 65
    Height = 17
    DataField = 'situ'
    DataSource = ds_espiao
  end
  object foto: TImage
    Left = 832
    Top = 56
    Width = 145
    Height = 145
    Stretch = True
  end
  object Label3: TLabel
    Left = 808
    Top = 232
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label4: TLabel
    Left = 808
    Top = 280
    Width = 45
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object Label5: TLabel
    Left = 808
    Top = 256
    Width = 80
    Height = 13
    Caption = 'Nivel de Acesso:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 785
    Height = 425
    DataSource = ds_espiao
    Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColumnMoved = DBGrid1ColumnMoved
    OnMouseDown = DBGrid1MouseDown
    OnMouseMove = DBGrid1MouseMove
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo_funcionario'
        Title.Caption = 'C'#243'digo de Funcionario'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'Hora'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'local'
        Title.Caption = 'Local'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 216
    Top = 56
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 56
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'codigo'
      'codigo_funcionario'
      'login'
      'nome'
      'data'
      'hora')
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 112
    Width = 224
    Height = 26
    DataSource = ds_espiao
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
    OnClick = DBNavigator1Click
  end
  object ds_espiao: TDataSource
    DataSet = ZQ_espiao
    Left = 592
    Top = 112
  end
  object ZQ_espiao: TZQuery
    Connection = sededeconeccao.shimsoftware
    Active = True
    SQL.Strings = (
      'select * from espiao')
    Params = <>
    DataSource = sededeconeccao.ds_espiao
    Left = 616
    Top = 104
    object ZQ_espiaocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object ZQ_espiaocodigo_funcionario: TIntegerField
      FieldName = 'codigo_funcionario'
    end
    object ZQ_espiaodata: TDateField
      FieldName = 'data'
    end
    object ZQ_espiaohora: TTimeField
      FieldName = 'hora'
    end
    object ZQ_espiaolocal: TStringField
      FieldName = 'local'
      Size = 200
    end
    object ZQ_espiaofoto: TStringField
      FieldKind = fkLookup
      FieldName = 'foto'
      LookupDataSet = sededeconeccao.zt_usuario
      LookupKeyFields = 'codigo_funcionario'
      LookupResultField = 'foto'
      KeyFields = 'codigo_funcionario'
      Size = 200
      Lookup = True
    end
    object ZQ_espiaonome: TStringField
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = sededeconeccao.zt_usuario
      LookupKeyFields = 'codigo_funcionario'
      LookupResultField = 'nome'
      KeyFields = 'codigo_funcionario'
      Size = 45
      Lookup = True
    end
    object ZQ_espiaonivel: TStringField
      FieldKind = fkLookup
      FieldName = 'nivel'
      LookupDataSet = sededeconeccao.zt_usuario
      LookupKeyFields = 'codigo_funcionario'
      LookupResultField = 'nivel'
      KeyFields = 'codigo_funcionario'
      Size = 45
      Lookup = True
    end
    object ZQ_espiaositu: TStringField
      FieldKind = fkLookup
      FieldName = 'situ'
      LookupDataSet = sededeconeccao.zt_usuario
      LookupKeyFields = 'codigo_funcionario'
      LookupResultField = 'situacao'
      KeyFields = 'codigo_funcionario'
      Size = 45
      Lookup = True
    end
  end
  object abrifoto: TOpenPictureDialog
    Left = 728
    Top = 40
  end
end
