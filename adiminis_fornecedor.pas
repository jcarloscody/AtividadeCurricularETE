unit adiminis_fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls, ZAbstractTable;

type
  TFornecedor = class(TForm)
    PageControl1: TPageControl;
    Pesquisar: TTabSheet;
    Cadastrar: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    DBGrid1: TDBGrid;
    Label38: TLabel;
    Edit1: TEdit;
    SpeedButton9: TSpeedButton;
    Label39: TLabel;
    SpeedButton10: TSpeedButton;
    ds_fornecedor: TDataSource;
    zq_fornecedor: TZQuery;
    ComboBox1: TComboBox;
    DBMemo2: TDBMemo;
    DBComboBox1: TDBComboBox;
    SpeedButton13: TSpeedButton;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBNavigator1: TDBNavigator;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    zq_fornecedorcodigo: TIntegerField;
    zq_fornecedornome: TStringField;
    zq_fornecedornumero: TLargeintField;
    zq_fornecedorbairro: TStringField;
    zq_fornecedorcidade: TStringField;
    zq_fornecedorcep: TLargeintField;
    zq_fornecedoruf: TStringField;
    zq_fornecedorcompl: TStringField;
    zq_fornecedorsituacao: TStringField;
    zq_fornecedorrua: TStringField;
    zq_fornecedorobs: TStringField;
    zq_fornecedortel1: TLargeintField;
    zq_fornecedortel2: TLargeintField;
    zq_fornecedoremail: TStringField;
    zq_fornecedordata: TDateField;
    zq_fornecedorcn: TStringField;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fornecedor: TFornecedor;

implementation

uses sede_de_coneccao, menu, utrans;

{$R *.dfm}

procedure TFornecedor.SpeedButton10Click(Sender: TObject);
begin
menuu.Show;
Fornecedor.Hide;

end;

procedure TFornecedor.SpeedButton5Click(Sender: TObject);
begin
Fornecedor.Hide;

end;

procedure TFornecedor.SpeedButton8Click(Sender: TObject);
begin
Fornecedor.Hide;

end;

procedure TFornecedor.SpeedButton1Click(Sender: TObject);
begin
sededeconeccao.ZT_fornecedor.insert;
end;

procedure TFornecedor.SpeedButton2Click(Sender: TObject);
begin
sededeconeccao.zt_fornecedordata.asstring:= (formatdatetime('dd/mm/yyyy',now));
sededeconeccao.zt_fornecedor.insert;
ShowMessage('Salvo com Sucesso!');

end;

procedure TFornecedor.SpeedButton3Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja Realmete Cancelar o Cadastramento?','Aten��o',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin

Fornecedor.Show;
end
else
begin
fornecedor.Hide;
menuu.showmodal;

end;

end;

procedure TFornecedor.SpeedButton4Click(Sender: TObject);
begin
Pesquisar.show;
end;

procedure TFornecedor.SpeedButton9Click(Sender: TObject);
begin
If (ComboBox1.Text <> '') and (Edit1.Text <> '') then
 begin
   zq_fornecedor.Close;
   zq_fornecedor.SQL.Clear;
   zq_fornecedor.SQL.Add ('select * from fornecedor where '+ComboBox1.Text+' LIKE ' + quotedstr('%'+Edit1.Text+ '%'));
   zq_fornecedor.Open;
 end
 else
 begin
   ShowMessage('Preencha todos os campos');
 end;

end;

procedure TFornecedor.SpeedButton6Click(Sender: TObject);
begin

sededeconeccao.zt_fornecedor.post;
ShowMessage('Edi��o feita com sucesso!');



end;

procedure TFornecedor.SpeedButton7Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja realmente Editar?','Edi�ao',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin
Abort;
end
else
begin
sededeconeccao.zt_fornecedor.Delete;
ShowMessage('Exclu��o feita com sucesso!');

end;

end;

procedure TFornecedor.SpeedButton12Click(Sender: TObject);
begin
zq_fornecedor.Active:= false;
zq_fornecedor.Active:= True;
end;

procedure TFornecedor.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);

  begin
	if sededeconeccao.ds_funcionario.state in [ dsinsert ] then
		begin
			
      sededeconeccao.ZT_fornecedordata.Value:= Date;
		end;

end;

procedure TFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
sededeconeccao.ZT_fornecedor.Close;
Fornecedor.Hide;
  menuu.Show;
end;

procedure TFornecedor.DBGrid1DblClick(Sender: TObject);
begin
if sededeconeccao.ZT_fornecedor.locate( 'codigo' ,DBGrid1.DataSource.DataSet.FieldByName( 'codigo' ).AsString, []) then
begin
Cadastrar.Show;
end;

end;

procedure TFornecedor.FormShow(Sender: TObject);
begin
zq_fornecedor.Open;
sededeconeccao.ZT_fornecedor.Open;

end;

procedure TFornecedor.SpeedButton13Click(Sender: TObject);
begin
zq_fornecedor.Close;
zq_fornecedor.SQL.Clear;
zq_fornecedor.SQL.Add(' select * from fornecedor');
zq_fornecedor.Open;
end;

end.
