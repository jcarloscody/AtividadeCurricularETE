object Vendas: TVendas
  Left = -8
  Top = -8
  Width = 1040
  Height = 616
  BorderIcons = [biSystemMenu]
  Caption = 'Vendas de Mercadorias'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1017
    Height = 577
    ActivePage = Cadastrar
    TabOrder = 0
    object Cadastrar: TTabSheet
      Caption = 'Vendas de Mercadorias'
      ImageIndex = 1
      object Label11: TLabel
        Left = 8
        Top = 72
        Width = 39
        Height = 13
        Caption = 'C'#243'digo.:'
      end
      object Label12: TLabel
        Left = 152
        Top = 568
        Width = 17
        Height = 13
        Caption = 'obs'
      end
      object Label13: TLabel
        Left = 152
        Top = 608
        Width = 17
        Height = 13
        Caption = 'tel1'
      end
      object Label14: TLabel
        Left = 152
        Top = 648
        Width = 17
        Height = 13
        Caption = 'tel2'
      end
      object Label15: TLabel
        Left = 152
        Top = 688
        Width = 27
        Height = 13
        Caption = 'e-mail'
      end
      object Label16: TLabel
        Left = 152
        Top = 728
        Width = 21
        Height = 13
        Caption = 'data'
      end
      object Label3: TLabel
        Left = 136
        Top = 72
        Width = 38
        Height = 13
        Caption = 'Cliente.:'
      end
      object Label5: TLabel
        Left = 8
        Top = 192
        Width = 83
        Height = 13
        Caption = 'Itens da Compra.:'
      end
      object Label6: TLabel
        Left = 40
        Top = 432
        Width = 30
        Height = 13
        Caption = 'Total.:'
      end
      object Label9: TLabel
        Left = 336
        Top = 72
        Width = 29
        Height = 13
        Caption = 'Data.:'
      end
      object Label1: TLabel
        Left = 8
        Top = 120
        Width = 64
        Height = 13
        Caption = 'Observa'#231#227'o.:'
      end
      object SpeedButton1: TSpeedButton
        Left = 544
        Top = 416
        Width = 73
        Height = 14
        Caption = 'Atualizar'
        Flat = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 504
        Top = 448
        Width = 105
        Height = 41
        Caption = 'Pagar Agora >>>>>'
        Flat = True
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 368
        Top = 448
        Width = 121
        Height = 41
        Caption = 'Formar Boleto'
        Flat = True
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 88
        Width = 121
        Height = 21
        DataField = 'codigo'
        DataSource = sededeconeccao.ds_saidapai
        TabOrder = 0
      end
      object x: TDBGrid
        Left = 8
        Top = 208
        Width = 609
        Height = 209
        DataSource = sededeconeccao.ds_saidaproduto
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo_produto'
            Title.Caption = 'C'#243'digo do Produto'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'produto'
            Title.Caption = 'Produto'
            Width = 189
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_unitario'
            Title.Caption = 'Valor Unitario'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Caption = 'Quantidade'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desconto'
            Title.Caption = 'Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_total'
            Title.Caption = 'Valor Total'
            Width = 96
            Visible = True
          end>
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 136
        Width = 583
        Height = 49
        DataField = 'observacao'
        DataSource = sededeconeccao.ds_saidapai
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 640
        Top = 8
        Width = 311
        Height = 329
        Caption = 'Pagar a Mercadoria Agora.:'
        TabOrder = 3
        object Label8: TLabel
          Left = 8
          Top = 44
          Width = 30
          Height = 13
          Caption = 'Total.:'
        end
        object Label10: TLabel
          Left = 16
          Top = 140
          Width = 79
          Height = 13
          Caption = 'Valor Recebido.:'
        end
        object Label17: TLabel
          Left = 24
          Top = 212
          Width = 34
          Height = 13
          Caption = 'Troco.:'
        end
        object SpeedButton4: TSpeedButton
          Left = 80
          Top = 256
          Width = 121
          Height = 33
          Caption = 'Finalizar Compra'
          Flat = True
          OnClick = SpeedButton4Click
        end
        object DBMemo4: TDBMemo
          Left = 24
          Top = 64
          Width = 249
          Height = 49
          Color = clMenuHighlight
          DataField = 'valor_total'
          DataSource = sededeconeccao.ds_saidapai
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Papyrus'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 144
          Width = 145
          Height = 21
          DataField = 'valorrecebido'
          DataSource = sededeconeccao.ds_saidapai
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 64
          Top = 216
          Width = 145
          Height = 21
          DataField = 'troco'
          DataSource = sededeconeccao.ds_saidapai
          TabOrder = 2
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 16
        Width = 410
        Height = 33
        DataSource = sededeconeccao.ds_saidapai
        TabOrder = 4
        OnClick = DBNavigator1Click
      end
      object DBEdit2: TDBEdit
        Left = 336
        Top = 88
        Width = 151
        Height = 21
        DataField = 'data_venda'
        DataSource = sededeconeccao.ds_saidapai
        MaxLength = 10
        TabOrder = 5
      end
      object DBMemo2: TDBMemo
        Left = 80
        Top = 432
        Width = 249
        Height = 49
        Color = clMenuHighlight
        DataField = 'valor_total'
        DataSource = sededeconeccao.ds_saidapai
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Papyrus'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 6
      end
      object GroupBox2: TGroupBox
        Left = 640
        Top = 344
        Width = 313
        Height = 153
        Caption = 'Informa'#231#245'es do Estoque'
        TabOrder = 7
        object Label2: TLabel
          Left = 16
          Top = 24
          Width = 43
          Height = 13
          Caption = 'Produto.:'
        end
        object Label4: TLabel
          Left = 16
          Top = 72
          Width = 27
          Height = 13
          Caption = 'Tipo.:'
        end
        object Label7: TLabel
          Left = 16
          Top = 112
          Width = 88
          Height = 13
          Caption = 'Quantidade Atual.:'
        end
        object DBText1: TDBText
          Left = 72
          Top = 24
          Width = 65
          Height = 17
          DataField = 'produto'
          DataSource = sededeconeccao.ds_saidaproduto
        end
        object DBText2: TDBText
          Left = 56
          Top = 72
          Width = 65
          Height = 17
          DataField = 'tipo'
          DataSource = sededeconeccao.ds_saidaproduto
        end
        object DBText3: TDBText
          Left = 112
          Top = 112
          Width = 65
          Height = 17
          DataField = 'quantidade_atual'
          DataSource = sededeconeccao.ds_saidaproduto
        end
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 136
        Top = 88
        Width = 185
        Height = 21
        DataField = 'codigo_cliente'
        DataSource = sededeconeccao.ds_saidapai
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = sededeconeccao.Ds_cliente
        TabOrder = 8
      end
    end
  end
end
