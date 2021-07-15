unit uvendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls, ZAbstractTable,
  ExtDlgs, pngimage;

type
  TVendas = class(TForm)
    PageControl1: TPageControl;
    Cadastrar: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    x: TDBGrid;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    DBMemo2: TDBMemo;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBMemo4: TDBMemo;
    Label8: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vendas: TVendas;

implementation

uses sede_de_coneccao, menu, adiminis_fornecedor, Urecibo;

{$R *.dfm}

procedure TVendas.SpeedButton5Click(Sender: TObject);
begin
Fornecedor.Hide;

end;

procedure TVendas.SpeedButton8Click(Sender: TObject);
begin
Fornecedor.Hide;

end;

procedure TVendas.SpeedButton2Click(Sender: TObject);
begin
sededeconeccao.zt_saidapai.Edit;
DBEdit3.SetFocus;

end;

procedure TVendas.SpeedButton3Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja Realmete Cancelar o Cadastramento?','Atenção',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin

Fornecedor.Show;
end
else
begin
fornecedor.Hide;
menuu.showmodal;

end;

end;

procedure TVendas.SpeedButton6Click(Sender: TObject);
begin

sededeconeccao.zt_fornecedor.post;
ShowMessage('Edição feita com sucesso!');



end;

procedure TVendas.SpeedButton7Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja realmente Editar?','Ediçao',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin
Abort;
end
else
begin
sededeconeccao.zt_fornecedor.Delete;
ShowMessage('Exclução feita com sucesso!');

end;

end;

procedure TVendas.FormShow(Sender: TObject);
begin
sededeconeccao.zt_saidapai.Open;
sededeconeccao.zt_saidaproduto.Open;
sededeconeccao.zt_cliente.Open;
end;




  procedure TVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

sededeconeccao.zt_saidapai.Close;
sededeconeccao.zt_saidaproduto.Close;
Vendas.Hide;
menuu.Show;

end;



procedure TVendas.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);

begin
	if sededeconeccao.ds_saidapai.state in [ dsinsert ] then
		begin
      sededeconeccao.zt_saidapaidata_venda.Value:= Date;
      sededeconeccao.zt_saidaproduto.Close;
      sededeconeccao.zt_saidaproduto.open;
		end;



end;

procedure TVendas.Button1Click(Sender: TObject);
var soma: Currency;
begin
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

procedure TVendas.SpeedButton1Click(Sender: TObject);
begin
sededeconeccao.zt_saidaproduto.Close;
sededeconeccao.zt_saidaproduto.Open;
end;

procedure TVendas.SpeedButton4Click(Sender: TObject);
begin
sededeconeccao.zt_configuracao.Open;
if sededeconeccao.zt_configuracaofotopraorelatorio.Value='' then
begin
 sededeconeccao.zt_configuracao.Edit;
 sededeconeccao.zt_configuracaofotopraorelatorio.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
        recibo.Foto.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value);
        end
        else
        begin
recibo.Foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotopraorelatorio.Value);
end;


recibo.QuickRep1.Print;


end;

end.
