unit sede_de_coneccao;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZConnection, ZAbstractConnection, dialogs;

type
  Tsededeconeccao = class(TDataModule)
    shimsoftware: TZConnection;
    zt_cliente: TZTable;
    Ds_cliente: TDataSource;
    zt_fornecedor: TZTable;
    ds_fornecedor: TDataSource;
    ds_configuracao: TDataSource;
    zt_funcionario: TZTable;
    ds_funcionario: TDataSource;
    ds_usuario: TDataSource;
    zt_usuario: TZTable;
    zt_usuariocodigo_funcionario: TIntegerField;
    zt_usuariologin: TStringField;
    zt_usuariosenha: TStringField;
    zt_usuarionivel: TStringField;
    zt_usuariosituacao: TStringField;
    zt_usuariofoto: TStringField;
    ds_estoque: TDataSource;
    zt_fornecedorcodigo: TIntegerField;
    zt_fornecedornome: TStringField;
    zt_fornecedornumero: TLargeintField;
    zt_fornecedorbairro: TStringField;
    zt_fornecedorcidade: TStringField;
    zt_fornecedorcep: TLargeintField;
    zt_fornecedoruf: TStringField;
    zt_fornecedorcompl: TStringField;
    zt_fornecedorsituacao: TStringField;
    zt_fornecedorrua: TStringField;
    zt_fornecedorobs: TStringField;
    zt_fornecedortel1: TLargeintField;
    zt_fornecedortel2: TLargeintField;
    zt_fornecedoremail: TStringField;
    zt_fornecedordata: TDateField;
    zt_fornecedorcn: TStringField;
    zt_clientecodigo: TIntegerField;
    zt_clientenome: TStringField;
    zt_clientenumero: TLargeintField;
    zt_clientebairro: TStringField;
    zt_clientecidade: TStringField;
    zt_clientecep: TStringField;
    zt_clienteuf: TStringField;
    zt_clientecpf: TStringField;
    zt_clientecnpj: TStringField;
    zt_clientepessoa: TStringField;
    zt_clientesituacao: TStringField;
    zt_clienterua: TStringField;
    zt_clienteobs: TStringField;
    zt_clientecompl: TStringField;
    zt_clientetel1: TLargeintField;
    zt_clientetel2: TLargeintField;
    zt_clienteemail: TStringField;
    zt_clientedata: TDateField;
    ds_saidapai: TDataSource;
    zt_saidaproduto: TZTable;
    ds_saidaproduto: TDataSource;
    zt_estoque: TZTable;
    zt_estoquecodigo: TIntegerField;
    zt_estoqueproduto: TStringField;
    zt_estoquetipo: TStringField;
    zt_estoqueunidade: TStringField;
    zt_estoquepreco_custo: TFloatField;
    zt_estoquepercentagem_lucro: TFloatField;
    zt_estoquepreco_venda: TFloatField;
    zt_estoquequantidade: TLargeintField;
    zt_estoquequantidade_minima: TLargeintField;
    zt_estoquequantidade_maxima: TLargeintField;
    zt_estoquesituacao: TStringField;
    zt_estoqueobservacao: TStringField;
    zt_estoquedata: TStringField;
    zt_estoquesetor: TStringField;
    zt_estoquecodigo_funcionario: TIntegerField;
    zt_saidaprodutoproduto: TStringField;
    zt_saidaprodutovalor_unitario: TFloatField;
    zt_saidaprodutocodigo_saidapai: TIntegerField;
    zt_saidaprodutocodigo_produto: TIntegerField;
    zt_saidaprodutoquantidade: TLargeintField;
    zt_saidaprodutovalor_total: TFloatField;
    zt_saidaprodutodesconto: TFloatField;
    zt_saidaprodutotipo: TStringField;
    zt_saidaprodutoquantidade_atual: TIntegerField;
    zt_saidaprodutoquantidademini: TIntegerField;
    zt_saidapai: TZTable;
    zt_saidapaicodigo: TIntegerField;
    zt_saidapaicodigo_cliente: TIntegerField;
    zt_saidapaidata_venda: TDateField;
    zt_saidapaivalor_total: TFloatField;
    zt_saidapaiobservacao: TStringField;
    zt_saidapaivalorrecebido: TFloatField;
    zt_saidapaitroco: TFloatField;
    zt_configuracao: TZTable;
    zt_configuracaocodigo: TLargeintField;
    zt_configuracaofotodaempresa: TStringField;
    zt_configuracaofotopraorelatorio: TStringField;
    zt_configuracaofrasedeagradecimentopraorelatorio: TStringField;
    zt_saidapainome: TStringField;
    zt_usuarionome: TStringField;
    ds_espiao: TDataSource;
    ZT_espiao: TZTable;
    ZT_espiaocodigo: TIntegerField;
    ZT_espiaocodigo_funcionario: TIntegerField;
    ZT_espiaodata: TDateField;
    ZT_espiaohora: TTimeField;
    ZT_espiaolocal: TStringField;
    zt_funcionariocodigo: TIntegerField;
    zt_funcionarionome: TStringField;
    zt_funcionariorua: TStringField;
    zt_funcionariocompl: TStringField;
    zt_funcionariobairro: TStringField;
    zt_funcionariocidade: TStringField;
    zt_funcionariocep: TLargeintField;
    zt_funcionariouf: TStringField;
    zt_funcionariocpf: TStringField;
    zt_funcionariosalario: TFloatField;
    zt_funcionariosituacao: TStringField;
    zt_funcionarioobs: TStringField;
    zt_funcionariotel1: TLargeintField;
    zt_funcionariotel2: TLargeintField;
    zt_funcionarioemail: TStringField;
    zt_funcionariodata: TDateField;
    zt_funcionariofoto: TStringField;
    zt_funcionarionumero: TLargeintField;
    procedure zt_saidaprodutoquantidadeValidate(Sender: TField);
    procedure zt_saidaprodutodescontoChange(Sender: TField);
    procedure zt_saidaprodutoquantidadeChange(Sender: TField);
    procedure zt_saidaprodutoAfterPost(DataSet: TDataSet);
    procedure zt_saidapaivalorrecebidoChange(Sender: TField);
    procedure zt_estoquepercentagem_lucroChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sededeconeccao: Tsededeconeccao;

implementation

uses adiminis_cliente, adiminis_fornecedor, adiminis_funcionario,
  configuracao_sistema, controle_de_estoque, login, menu, splash, usuario,
  uvendas;

{$R *.dfm}

procedure Tsededeconeccao.zt_saidaprodutoquantidadeValidate(
  Sender: TField);
begin
sededeconeccao.zt_saidaprodutovalor_total.Value:=sededeconeccao.zt_saidaprodutoquantidade.Value * sededeconeccao.zt_saidaprodutovalor_unitario.Value; 
end;

procedure Tsededeconeccao.zt_saidaprodutodescontoChange(Sender: TField);
begin
sededeconeccao.zt_saidaprodutovalor_total.Value:=
((sededeconeccao.zt_saidaprodutovalor_total.Value  *
sededeconeccao.zt_saidaprodutodesconto.Value)/100)

end;

procedure Tsededeconeccao.zt_saidaprodutoquantidadeChange(Sender: TField);
var soma : Currency;
begin
 sededeconeccao.zt_saidaprodutovalor_total.Value:=
 sededeconeccao.zt_saidaprodutoquantidade.Value *
 sededeconeccao.zt_saidaprodutovalor_unitario.Value;
   soma := 0;
  sededeconeccao.zt_saidaproduto.First;
  while not sededeconeccao.zt_saidaproduto.Eof do
  begin
    soma := soma + sededeconeccao.zt_saidaprodutovalor_total.Value;
    sededeconeccao.zt_saidaproduto.Next;
  end;

  sededeconeccao.zt_saidapai.Edit;
    sededeconeccao.zt_saidapaivalor_total.Value:= soma;
  sededeconeccao.zt_saidapai.Post;


end;

procedure Tsededeconeccao.zt_saidaprodutoAfterPost(DataSet: TDataSet);
begin
    sededeconeccao.zt_estoque.Open;
    sededeconeccao.zt_estoque.edit;

   if (sededeconeccao.zt_saidaprodutoquantidade.Value<=sededeconeccao.zt_estoquequantidade.Value) then
   begin
    sededeconeccao.zt_estoquequantidade.Value:=
    sededeconeccao.zt_estoquequantidade.Value -
    sededeconeccao.zt_saidaprodutoquantidade.Value;
    sededeconeccao.zt_estoque.Post;
    sededeconeccao.zt_estoque.Close;
   end
   else
   begin
   ShowMessage('Finalizou o Produto no estoque !!');

   End;

end;

procedure Tsededeconeccao.zt_saidapaivalorrecebidoChange(Sender: TField);
begin
sededeconeccao.zt_saidapaitroco.Value:=
sededeconeccao.zt_saidapaivalorrecebido.Value -
sededeconeccao.zt_saidapaivalor_total.Value;
end;

procedure Tsededeconeccao.zt_estoquepercentagem_lucroChange(
  Sender: TField);
begin
zt_estoquepreco_venda.Value:=
((zt_estoquepreco_custo.Value *
zt_estoquepercentagem_lucro.Value)/100) +
zt_estoquepreco_custo.value;
end;

end.
