object user: Tuser
  Left = 117
  Top = 44
  Width = 787
  Height = 454
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de '#218'suario'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 769
    Height = 415
    ActivePage = Cadastrar
    TabOrder = 0
    object Pesquisar: TTabSheet
      Caption = 'Pesquisar'
      object Label38: TLabel
        Left = 8
        Top = 40
        Width = 71
        Height = 13
        Caption = 'Digite o Login.:'
      end
      object SpeedButton9: TSpeedButton
        Left = 288
        Top = 64
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Pesquisar'
        Flat = True
        OnClick = SpeedButton9Click
      end
      object SpeedButton13: TSpeedButton
        Left = 0
        Top = 104
        Width = 37
        Height = 25
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
          FDFDFDFBFBFBF9F9F9F7F7F7F5F5F5F1F1F1EFEFEFEBEBEBE9E9E9E9E9E9E7E7
          E7E7E7E7E9E9E9E9E9E9EBEBEBEFEFEFF1F1F1F3F3F3F7F7F7F9F9F9FBFBFBFD
          FDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7
          EFEFEFE9E9E9E1E1E1DBDBDBD3D3D3CBCBCBC5C5C5BFBFBFB9B9B9B3B3B3B1B1
          B1B1B1B1B3B3B3B9B9B9BDBDBDC5C5C5CBCBCBD3D3D3D9D9D9D1C6C1AA7F6CCE
          BAB2F5F5F5FBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9
          F5F5F5EFEFEFE9E9E9E3E3E3DBDBDBD5D5D5CFCFCFCBCBCBC7C7C7C3C3C3C1C1
          C1C1C1C1C3C3C3C5C5C5CBCBCBCFCFCFD5D5D5DBDBDBE1E1E1DFD8D5A95F35A0
          552BA66C50E3D4CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDFDFDFDFDFDFDFBFBFBF9F9F9F9F9F9F7F7F7F7F7F7F5F5F5F5F5
          F5F5F5F5F5F5F5F7F7F7F7F7F7F9F9F9F9F9F9FBFBFBFDFDFDFDFDFDCEAC9DA1
          552B9147249F542DC8A597FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDB9
          81679B5028893E1FA4552BC09381FEFDFDFFFFFFFFFFFFFFFFFFE8D4CCBE7D5C
          C48764C48661C3855FC2835DC2825CC2805AC17F58C07D57BF7B55BF7A53BE79
          52BD7750BC754EBB744DBA724BB97149AF643FD7B4A6FFFFFFFFFFFFFFFFFFF5
          EEEBAD61398A41208E3F1FA6562BCEA99AFFFFFFFFFFFFFFFFFFE7D0C8C6865F
          AF5B2FAE5A2EAD592EAD582DAC572DAB562CAA552CA9542BA8532AA8522AA750
          29A64F28A54E27A44C27A54F29B96C3ED2A896FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCFA594A5572D8B3D1E944321A9592FECDED8FFFFFFFFFFFFE7D1C8C88A65
          B05C2EAE592DAD592CAD582CAC572CAB562BAA552AAA542AA95329A85129A750
          28A64F28A54E27A65029BC7043D4AA97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF7F0EDB05F348A3E1F984321A45129BE8367FFFFFFFFFFFFE8D2C8CA8E6B
          B36030B25E30AF5B2EAF5A2DAE592DAD582CAC572CAB562BAB552BAA542AA953
          29A85129A9542BBF7649D5AC99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC082639B4D289742219B4422AE5B2EF0E3DEFFFFFFE8D2C9CD9371
          B66432B76433B36031B15C2FB05B2EAF5A2EAE592DAD582CAC572CAB562BAB55
          2BAC582EC27C4ED6AE9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCE9F8BA85A309442219F4623AE5A2ED2A897FFFFFFE9D3C9CF9778
          B96834BA6835BA6835B46131B25E2FB15D2FB05C2EAF5B2EAE592DAD582CAF5C
          30C68254D7B09BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD8B2A2AE5E33954221A24925A8532AC38567FFFFFFE9D4C9D29C7E
          BC6C36BD6C37BD6D37BD6C37B56231B35F30B25E2FB15D2FB05C2EB25F32C988
          5AD9B19CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD6AE9BB16135984321A44C26A54E27BB734CFFFFFFEAD4CAD4A084
          BF6F39C07039C07039C0703ABE6E39B66332B46031B35F30B25E2FB76839CB8C
          5DDCB8A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCD997DAD5B329C4422A64F27A54D27B96E43FFFFFFEAD5CAD6A58B
          C1733CC1733DC2733DC2743DC2743DBF703BB66432B56231B46031B35F30B565
          36CD8E5FD6A98FFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF9F4F1BE764BA34C279F4623A85229A85229BC7348FFFFFFEBD6CAD8A992
          C37640C37640C37740C37741C37741C37741C0723DB76533B56332B46131B360
          30B46233CC8D5ECE9774F4E8E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FDFDCE9A7CB96C40A24A25A24A25AB552BAE5B2FC48460FFFFFFEBD6CBDAAC96
          C57943C57944C57A44C57A44C57A44C57A44C57A44C27640B96735B66332B562
          31B46131B35F30C47E50CC8D5FD5A689EDDAD0FDFCFBFFFFFFFFFFFFF0E0D8CD
          9675C1794AA54F28A34B26A75128AD582CB8693BD1A188FFFFFFECD7CBDBAE98
          C67C47C67D47C77D48C77D48C77E4AC77D48C77D47C67C47C57A45BC6C39B764
          33B66332B46131B36030B46233C58051CA8858CA8B5CCE9267CB8C5FC58050BB
          7044A85129A64F27A54D27AF5B2EAF5B2EBE7343E9D3C8FFFFFFECD8CBDCAF99
          C87F4AC8804BC8804BCA8450E0B8A3DCAD90C8804BC8804AC87F4AC77E49C175
          41B86735B66332B56231B46031B25F30B15D2FB05C2FB26033AF5B2FAC562BAA
          542AA95329A75128AE592DB46131B96A3BC78861FEFDFDFFFFFFEDD8CCDDB19B
          CA844FCA8450CC8956E2BCAADBB097D7A78CDCAE91CA844FCA834EC9824DC981
          4CC77E49C0733FB86735B56232B46131B35F30B15D2FB05C2EAE5A2DAD582CAC
          562BAA552AB25E2FB86634B76534C57F4EE9D1C4FFFFFFFFFFFFEDD9CCDEB39D
          CD8954CF8D5BE4C0AFDDB49CFEFDFDFAF4F0D8A98CDFB499CD8955CC8752CB85
          50CA834FC9814DC87F4AC37743BD6E3BB86635B46031B15D2FB05C2EB15E30B5
          6332BC6B36BC6C36BB6936C98553D7AA8FFFFFFFFFFFFFFFFFFFEED9CCDFB59F
          D1915FE3BFADDDB399FEFDFDFFFFFFFFFFFFFBF7F4DAAD91E2BBA5D3976ACD8A
          56CC8854CB8651CA844FC9814CC87F4AC77D48C67C46C57943C47741C3753FC1
          733DC0713AC0723CCE8D5AD4A382FDFCFBFFFFFFFFFFFFFFFFFFEEDACDE2BCA8
          E4C0AEDFB89EFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDE7C8B4DCAF95E1B7
          9DD4986BCE8B57CC8854CB8651CA834EC8804BC77E49C67C47C57A44C47842C3
          7740CE8B57CF905EDEB69DFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFEFDBCDE3BEAF
          E0BAA1FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F2E3C0
          A8DCB095DEB296DFB395D8A27BD29466CE8C5BCC8957CE8C5CD29669D69D71D3
          9869D8A783F2E4DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDBCEDDB294
          FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFDFDF2E1D6E3C0A8DFB69BDDB294DDAE8FDBAD8CDCAE8DDEB294E5C5AEF8
          EFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8F5FEFDFD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton13Click
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 144
        Width = 753
        Height = 233
        DataSource = ds_usuario
        ImeMode = imHanguel
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo_funcionario'
            Title.Caption = 'C'#243'digo de Funcionario'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'login'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'senha'
            Width = 198
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nivel'
            Title.Caption = 'Nivel'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'foto'
            Title.Caption = 'Foto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'situacao'
            Title.Caption = 'Situa'#231#227'o'
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 8
        Top = 64
        Width = 257
        Height = 21
        TabOrder = 1
        OnChange = Edit1Change
      end
    end
    object Cadastrar: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 61
        Height = 13
        Caption = 'F'#250'ncionario.:'
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 37
        Height = 13
        Caption = 'Senha.:'
        FocusControl = DBEdit3
      end
      object Label7: TLabel
        Left = 216
        Top = 96
        Width = 114
        Height = 13
        Caption = 'Confirma'#231#227'o de Senha.:'
      end
      object Label11: TLabel
        Left = 256
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Login.:'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 152
        Top = 568
        Width = 17
        Height = 13
        Caption = 'obs'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 152
        Top = 608
        Width = 17
        Height = 13
        Caption = 'tel1'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 152
        Top = 648
        Width = 17
        Height = 13
        Caption = 'tel2'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 152
        Top = 688
        Width = 27
        Height = 13
        Caption = 'e-mail'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 152
        Top = 728
        Width = 21
        Height = 13
        Caption = 'data'
        FocusControl = DBEdit16
      end
      object foto: TImage
        Left = 512
        Top = 48
        Width = 225
        Height = 209
        Stretch = True
      end
      object DBText1: TDBText
        Left = 480
        Top = 272
        Width = 273
        Height = 33
        DataField = 'foto'
        DataSource = sededeconeccao.ds_funcionario
      end
      object Label1: TLabel
        Left = 16
        Top = 152
        Width = 42
        Height = 13
        Caption = 'Situa'#231#227'o'
        FocusControl = DBEdit3
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 112
        Width = 185
        Height = 20
        DataField = 'Senha'
        DataSource = sededeconeccao.ds_usuario
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings'
        Font.Style = []
        ParentFont = False
        PasswordChar = 'i'
        TabOrder = 3
      end
      object DBEdit11: TDBEdit
        Left = 256
        Top = 56
        Width = 185
        Height = 21
        DataField = 'Login'
        DataSource = sededeconeccao.ds_usuario
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 152
        Top = 584
        Width = 3904
        Height = 21
        DataField = 'obs'
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 152
        Top = 624
        Width = 199
        Height = 21
        DataField = 'tel1'
        TabOrder = 8
      end
      object DBEdit14: TDBEdit
        Left = 152
        Top = 664
        Width = 199
        Height = 21
        DataField = 'tel2'
        TabOrder = 9
      end
      object DBEdit15: TDBEdit
        Left = 152
        Top = 704
        Width = 589
        Height = 21
        DataField = 'e-mail'
        TabOrder = 10
      end
      object DBEdit16: TDBEdit
        Left = 152
        Top = 744
        Width = 134
        Height = 21
        DataField = 'data'
        TabOrder = 11
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 40
        Top = 208
        Width = 321
        Height = 65
        Caption = 'Nivel de Acesso.:'
        Columns = 2
        DataField = 'nivel'
        DataSource = sededeconeccao.ds_usuario
        Items.Strings = (
          'Total'
          'Parcial ')
        TabOrder = 6
        Values.Strings = (
          'total'
          'parcial')
      end
      object Edit2: TEdit
        Left = 216
        Top = 112
        Width = 233
        Height = 20
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings'
        Font.Style = []
        ParentFont = False
        PasswordChar = 'i'
        TabOrder = 4
        Text = 'Edit2'
        OnExit = Edit2Exit
      end
      object DBNavigator2: TDBNavigator
        Left = 40
        Top = 296
        Width = 324
        Height = 49
        DataSource = sededeconeccao.ds_usuario
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 7
        OnClick = DBNavigator2Click
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 168
        Width = 225
        Height = 21
        DataField = 'situacao'
        DataSource = sededeconeccao.ds_usuario
        ItemHeight = 13
        Items.Strings = (
          'Liberado'
          'Blonqueado')
        TabOrder = 5
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 56
        Width = 233
        Height = 21
        DataField = 'codigo_funcionario'
        DataSource = sededeconeccao.ds_usuario
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = sededeconeccao.ds_funcionario
        TabOrder = 1
      end
    end
  end
  object ds_usuario: TDataSource
    DataSet = zq_usuario
    Left = 428
    Top = 8
  end
  object Abrifotos: TOpenPictureDialog
    InitialDir = 'C:\Users\windows7\Pictures\israel'
    Left = 464
    Top = 8
  end
  object zq_usuario: TZQuery
    Connection = sededeconeccao.shimsoftware
    Active = True
    SQL.Strings = (
      'select * from usuario')
    Params = <>
    DataSource = sededeconeccao.ds_usuario
    MasterSource = sededeconeccao.ds_usuario
    Left = 372
    Top = 16
    object zq_usuariocodigo_funcionario: TIntegerField
      FieldName = 'codigo_funcionario'
      Required = True
    end
    object zq_usuariologin: TStringField
      FieldName = 'login'
      Required = True
      Size = 45
    end
    object zq_usuariosenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 45
    end
    object zq_usuarionivel: TStringField
      FieldName = 'nivel'
      Required = True
      Size = 45
    end
    object zq_usuariosituacao: TStringField
      FieldName = 'situacao'
      Required = True
      Size = 45
    end
  end
end
