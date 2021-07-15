program Project1;

uses
  Forms,
  splash in 'splash.pas' {splach},
  login in 'login.pas' {logen},
  menu in 'menu.pas' {menuu},
  adiminis_cliente in 'adiminis_cliente.pas' {ad_cliente},
  sede_de_coneccao in 'sede_de_coneccao.pas' {sededeconeccao: TDataModule},
  adiminis_funcionario in 'adiminis_funcionario.pas' {Funcionario},
  adiminis_fornecedor in 'adiminis_fornecedor.pas' {Fornecedor},
  usuario in 'usuario.pas' {user},
  controle_de_estoque in 'controle_de_estoque.pas' {controle_estoque},
  configuracao_sistema in 'configuracao_sistema.pas' {configu_dosistema},
  uvendas in 'uvendas.pas' {Vendas},
  Urecibo in 'Urecibo.pas' {recibo},
  clickk in 'clickk.pas' {esp},
  utrans in 'utrans.pas' {transparente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tsplach, splach);
  Application.CreateForm(Tsededeconeccao, sededeconeccao);
  Application.CreateForm(Tlogen, logen);
  Application.CreateForm(Tmenuu, menuu);
  Application.CreateForm(Tad_cliente, ad_cliente);
  Application.CreateForm(TFuncionario, Funcionario);
  Application.CreateForm(TFornecedor, Fornecedor);
  Application.CreateForm(Tuser, user);
  Application.CreateForm(Tcontrole_estoque, controle_estoque);
  Application.CreateForm(Tconfigu_dosistema, configu_dosistema);
  Application.CreateForm(TVendas, Vendas);
  Application.CreateForm(Trecibo, recibo);
  Application.CreateForm(Tesp, esp);
  Application.CreateForm(Ttransparente, transparente);
  Application.Run;
end.
