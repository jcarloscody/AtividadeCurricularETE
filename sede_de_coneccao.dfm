object sededeconeccao: Tsededeconeccao
  OldCreateOrder = False
  Left = 348
  Top = 42
  Height = 429
  Width = 356
  object shimsoftware: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'shimsoftware25'
    User = 'root'
    Password = '123'
    Catalog = 'shimsoftware25'
    Connected = True
    Left = 16
    Top = 8
  end
  object zt_cliente: TZTable
    Connection = shimsoftware
    TableName = 'cliente'
    UpdateMode = umUpdateAll
    Left = 32
    Top = 72
    object zt_clientecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object zt_clientenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object zt_clientenumero: TLargeintField
      FieldName = 'numero'
      Required = True
    end
    object zt_clientebairro: TStringField
      FieldName = 'bairro'
      Required = True
      Size = 45
    end
    object zt_clientecidade: TStringField
      FieldName = 'cidade'
      Required = True
      Size = 45
    end
    object zt_clientecep: TStringField
      FieldName = 'cep'
      Required = True
      EditMask = '00-000.000;0;_'
      Size = 45
    end
    object zt_clienteuf: TStringField
      FieldName = 'uf'
      Required = True
      Size = 45
    end
    object zt_clientecpf: TStringField
      FieldName = 'cpf'
      EditMask = '000-000-000.00;0;_'
      Size = 45
    end
    object zt_clientecnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '00.000.000/0000-00;0;_'
      Size = 45
    end
    object zt_clientepessoa: TStringField
      FieldName = 'pessoa'
      Required = True
      Size = 45
    end
    object zt_clientesituacao: TStringField
      FieldName = 'situacao'
      Required = True
      Size = 45
    end
    object zt_clienterua: TStringField
      FieldName = 'rua'
      Required = True
      Size = 45
    end
    object zt_clienteobs: TStringField
      FieldName = 'obs'
      Size = 45
    end
    object zt_clientecompl: TStringField
      FieldName = 'compl'
      Size = 45
    end
    object zt_clientetel1: TLargeintField
      FieldName = 'tel1'
    end
    object zt_clientetel2: TLargeintField
      FieldName = 'tel2'
    end
    object zt_clienteemail: TStringField
      FieldName = 'e-mail'
      Size = 45
    end
    object zt_clientedata: TDateField
      FieldName = 'data'
      EditMask = '!99/99/0000;0;_'
    end
  end
  object Ds_cliente: TDataSource
    DataSet = zt_cliente
    Left = 64
    Top = 72
  end
  object zt_fornecedor: TZTable
    Connection = shimsoftware
    TableName = 'shimsoftware25.fornecedor'
    Left = 16
    Top = 192
    object zt_fornecedorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object zt_fornecedornome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object zt_fornecedornumero: TLargeintField
      FieldName = 'numero'
      Required = True
    end
    object zt_fornecedorbairro: TStringField
      FieldName = 'bairro'
      Required = True
      Size = 45
    end
    object zt_fornecedorcidade: TStringField
      FieldName = 'cidade'
      Required = True
      Size = 45
    end
    object zt_fornecedorcep: TLargeintField
      FieldName = 'cep'
      Required = True
    end
    object zt_fornecedoruf: TStringField
      FieldName = 'uf'
      Required = True
      Size = 45
    end
    object zt_fornecedorcompl: TStringField
      FieldName = 'compl'
      Size = 45
    end
    object zt_fornecedorsituacao: TStringField
      FieldName = 'situacao'
      Required = True
      Size = 45
    end
    object zt_fornecedorrua: TStringField
      FieldName = 'rua'
      Required = True
      Size = 45
    end
    object zt_fornecedorobs: TStringField
      FieldName = 'obs'
      Size = 300
    end
    object zt_fornecedortel1: TLargeintField
      FieldName = 'tel1'
    end
    object zt_fornecedortel2: TLargeintField
      FieldName = 'tel2'
    end
    object zt_fornecedoremail: TStringField
      FieldName = 'e-mail'
      Size = 45
    end
    object zt_fornecedordata: TDateField
      FieldName = 'data'
      EditMask = '!99/99/0000;0;_'
    end
    object zt_fornecedorcn: TStringField
      FieldName = 'cn'
      ReadOnly = True
      EditMask = '00.000.000/0000-00;1;_'
      Size = 45
    end
  end
  object ds_fornecedor: TDataSource
    DataSet = zt_fornecedor
    Left = 48
    Top = 192
  end
  object ds_configuracao: TDataSource
    DataSet = zt_configuracao
    Left = 248
    Top = 72
  end
  object zt_funcionario: TZTable
    Connection = shimsoftware
    TableName = 'shimsoftware25.funcionario'
    Left = 32
    Top = 136
    object zt_funcionariocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object zt_funcionarionome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object zt_funcionariorua: TStringField
      FieldName = 'rua'
      Required = True
      Size = 45
    end
    object zt_funcionariocompl: TStringField
      FieldName = 'compl'
      Size = 100
    end
    object zt_funcionariobairro: TStringField
      FieldName = 'bairro'
      Required = True
      Size = 45
    end
    object zt_funcionariocidade: TStringField
      FieldName = 'cidade'
      Required = True
      Size = 45
    end
    object zt_funcionariocep: TLargeintField
      FieldName = 'cep'
      Required = True
    end
    object zt_funcionariouf: TStringField
      FieldName = 'uf'
      Required = True
      Size = 45
    end
    object zt_funcionariocpf: TStringField
      FieldName = 'cpf'
      Required = True
      EditMask = '000-000-000.00;0;_'
      Size = 45
    end
    object zt_funcionariosalario: TFloatField
      FieldName = 'salario'
      currency = True
    end
    object zt_funcionariosituacao: TStringField
      FieldName = 'situacao'
      Required = True
      Size = 45
    end
    object zt_funcionarioobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object zt_funcionariotel1: TLargeintField
      FieldName = 'tel1'
    end
    object zt_funcionariotel2: TLargeintField
      FieldName = 'tel2'
    end
    object zt_funcionarioemail: TStringField
      FieldName = 'email'
      Size = 45
    end
    object zt_funcionariodata: TDateField
      FieldName = 'data'
      EditMask = '!99/99/0000;0;_'
    end
    object zt_funcionariofoto: TStringField
      FieldName = 'foto'
      Size = 200
    end
    object zt_funcionarionumero: TLargeintField
      FieldName = 'numero'
      Required = True
    end
  end
  object ds_funcionario: TDataSource
    DataSet = zt_funcionario
    Left = 64
    Top = 136
  end
  object ds_usuario: TDataSource
    DataSet = zt_usuario
    Left = 56
    Top = 264
  end
  object zt_usuario: TZTable
    Connection = shimsoftware
    TableName = 'shimsoftware25.usuario'
    Left = 24
    Top = 264
    object zt_usuariocodigo_funcionario: TIntegerField
      FieldName = 'codigo_funcionario'
      Required = True
    end
    object zt_usuariologin: TStringField
      FieldName = 'login'
      Required = True
      Size = 45
    end
    object zt_usuariosenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 45
    end
    object zt_usuarionivel: TStringField
      FieldName = 'nivel'
      Required = True
      Size = 45
    end
    object zt_usuariosituacao: TStringField
      FieldName = 'situacao'
      Required = True
      Size = 45
    end
    object zt_usuariofoto: TStringField
      FieldKind = fkLookup
      FieldName = 'foto'
      LookupDataSet = zt_funcionario
      LookupKeyFields = 'codigo'
      LookupResultField = 'foto'
      KeyFields = 'codigo_funcionario'
      Size = 200
      Lookup = True
    end
    object zt_usuarionome: TStringField
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = zt_funcionario
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codigo_funcionario'
      Size = 45
      Lookup = True
    end
  end
  object ds_estoque: TDataSource
    DataSet = zt_estoque
    Left = 72
    Top = 328
  end
  object ds_saidapai: TDataSource
    DataSet = zt_saidapai
    Left = 240
    Top = 136
  end
  object zt_saidaproduto: TZTable
    Connection = shimsoftware
    AfterPost = zt_saidaprodutoAfterPost
    TableName = 'shimsoftware25.saida_produto'
    MasterFields = 'codigo'
    MasterSource = ds_saidapai
    LinkedFields = 'codigo_saidapai'
    Left = 208
    Top = 200
    object zt_saidaprodutoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = zt_estoque
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codigo_produto'
      Size = 45
      Lookup = True
    end
    object zt_saidaprodutotipo: TStringField
      FieldKind = fkLookup
      FieldName = 'tipo'
      LookupDataSet = zt_estoque
      LookupKeyFields = 'codigo'
      LookupResultField = 'tipo'
      KeyFields = 'codigo_produto'
      Size = 45
      Lookup = True
    end
    object zt_saidaprodutovalor_unitario: TFloatField
      FieldKind = fkLookup
      FieldName = 'valor_unitario'
      LookupDataSet = zt_estoque
      LookupKeyFields = 'codigo'
      LookupResultField = 'preco_venda'
      KeyFields = 'codigo_produto'
      currency = True
      Lookup = True
    end
    object zt_saidaprodutoquantidade: TLargeintField
      FieldName = 'quantidade'
      Required = True
      OnChange = zt_saidaprodutoquantidadeChange
    end
    object zt_saidaprodutodesconto: TFloatField
      FieldName = 'desconto'
      OnChange = zt_saidaprodutodescontoChange
    end
    object zt_saidaprodutovalor_total: TFloatField
      FieldName = 'valor_total'
      Required = True
      currency = True
    end
    object zt_saidaprodutocodigo_saidapai: TIntegerField
      FieldName = 'codigo_saidapai'
      Required = True
    end
    object zt_saidaprodutocodigo_produto: TIntegerField
      FieldName = 'codigo_produto'
      Required = True
    end
    object zt_saidaprodutoquantidade_atual: TIntegerField
      FieldKind = fkLookup
      FieldName = 'quantidade_atual'
      LookupDataSet = zt_estoque
      LookupKeyFields = 'codigo'
      LookupResultField = 'quantidade'
      KeyFields = 'codigo_produto'
      Lookup = True
    end
    object zt_saidaprodutoquantidademini: TIntegerField
      FieldKind = fkLookup
      FieldName = 'quantidademini'
      LookupDataSet = zt_estoque
      LookupKeyFields = 'codigo'
      LookupResultField = 'quantidade_minima'
      KeyFields = 'codigo_produto'
      Lookup = True
    end
  end
  object ds_saidaproduto: TDataSource
    DataSet = zt_saidaproduto
    Left = 248
    Top = 200
  end
  object zt_estoque: TZTable
    Connection = shimsoftware
    TableName = 'shimsoftware25.estoque'
    Left = 32
    Top = 328
    object zt_estoquecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object zt_estoqueproduto: TStringField
      FieldName = 'produto'
      Required = True
      Size = 45
    end
    object zt_estoquetipo: TStringField
      FieldName = 'tipo'
      Size = 45
    end
    object zt_estoqueunidade: TStringField
      FieldName = 'unidade'
      Size = 45
    end
    object zt_estoquepreco_custo: TFloatField
      FieldName = 'preco_custo'
      currency = True
    end
    object zt_estoquepercentagem_lucro: TFloatField
      FieldName = 'percentagem_lucro'
      OnChange = zt_estoquepercentagem_lucroChange
    end
    object zt_estoquepreco_venda: TFloatField
      FieldName = 'preco_venda'
      currency = True
    end
    object zt_estoquequantidade: TLargeintField
      FieldName = 'quantidade'
    end
    object zt_estoquequantidade_minima: TLargeintField
      FieldName = 'quantidade_minima'
    end
    object zt_estoquequantidade_maxima: TLargeintField
      FieldName = 'quantidade_maxima'
    end
    object zt_estoquesituacao: TStringField
      FieldName = 'situacao'
      Required = True
      Size = 45
    end
    object zt_estoqueobservacao: TStringField
      FieldName = 'observacao'
      Size = 200
    end
    object zt_estoquedata: TStringField
      FieldName = 'data'
      Size = 30
    end
    object zt_estoquesetor: TStringField
      FieldName = 'setor'
      Size = 45
    end
    object zt_estoquecodigo_funcionario: TIntegerField
      FieldName = 'codigo_funcionario'
      Required = True
    end
  end
  object zt_saidapai: TZTable
    Connection = shimsoftware
    TableName = 'shimsoftware25.saida_pai'
    Left = 200
    Top = 136
    object zt_saidapaicodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object zt_saidapaicodigo_cliente: TIntegerField
      FieldName = 'codigo_cliente'
    end
    object zt_saidapaidata_venda: TDateField
      FieldName = 'data_venda'
      EditMask = '!99/99/0000;0;_'
    end
    object zt_saidapaivalor_total: TFloatField
      FieldName = 'valor_total'
      currency = True
    end
    object zt_saidapaiobservacao: TStringField
      FieldName = 'observacao'
      Size = 200
    end
    object zt_saidapaivalorrecebido: TFloatField
      FieldName = 'valorrecebido'
      OnChange = zt_saidapaivalorrecebidoChange
      currency = True
    end
    object zt_saidapaitroco: TFloatField
      FieldName = 'troco'
      currency = True
    end
    object zt_saidapainome: TStringField
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = zt_cliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codigo_cliente'
      Size = 45
      Lookup = True
    end
  end
  object zt_configuracao: TZTable
    Connection = shimsoftware
    TableName = 'shimsoftware25.empresa'
    Left = 208
    Top = 72
    object zt_configuracaocodigo: TLargeintField
      FieldName = 'codigo'
      Required = True
    end
    object zt_configuracaofotodaempresa: TStringField
      FieldName = 'fotodaempresa'
      Required = True
      Size = 100
    end
    object zt_configuracaofotopraorelatorio: TStringField
      FieldName = 'fotopraorelatorio'
      Size = 200
    end
    object zt_configuracaofrasedeagradecimentopraorelatorio: TStringField
      FieldName = 'frasedeagradecimentopraorelatorio'
      Size = 100
    end
  end
  object ds_espiao: TDataSource
    DataSet = ZT_espiao
    Left = 224
    Top = 272
  end
  object ZT_espiao: TZTable
    Connection = shimsoftware
    TableName = 'shimsoftware25.espiao'
    Left = 208
    Top = 280
    object ZT_espiaocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object ZT_espiaocodigo_funcionario: TIntegerField
      FieldName = 'codigo_funcionario'
    end
    object ZT_espiaodata: TDateField
      FieldName = 'data'
    end
    object ZT_espiaohora: TTimeField
      FieldName = 'hora'
    end
    object ZT_espiaolocal: TStringField
      FieldName = 'local'
      Size = 200
    end
  end
end
