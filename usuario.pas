unit usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls, ZAbstractTable,
  ExtDlgs;

type
  Tuser = class(TForm)
    PageControl1: TPageControl;
    Pesquisar: TTabSheet;
    Cadastrar: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBGrid1: TDBGrid;
    Label38: TLabel;
    Edit1: TEdit;
    SpeedButton9: TSpeedButton;
    SpeedButton13: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    Edit2: TEdit;
    ds_usuario: TDataSource;
    Abrifotos: TOpenPictureDialog;
    foto: TImage;
    DBText1: TDBText;
    Label1: TLabel;
    DBNavigator2: TDBNavigator;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    zq_usuario: TZQuery;
    zq_usuariocodigo_funcionario: TIntegerField;
    zq_usuariologin: TStringField;
    zq_usuariosenha: TStringField;
    zq_usuarionivel: TStringField;
    zq_usuariosituacao: TStringField;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure Edit1Change(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user: Tuser;

implementation

uses sede_de_coneccao, menu, adiminis_fornecedor, adiminis_cliente,
  adiminis_funcionario, clickk, configuracao_sistema, controle_de_estoque,
  login, splash, Urecibo, utrans, uvendas;

{$R *.dfm}

procedure Tuser.SpeedButton5Click(Sender: TObject);
begin
Fornecedor.Hide;

end;

procedure Tuser.SpeedButton8Click(Sender: TObject);
begin
Fornecedor.Hide;

end;

procedure Tuser.SpeedButton2Click(Sender: TObject);
begin
sededeconeccao.zt_fornecedordata.asstring:= (formatdatetime('dd/mm/yyyy',now));
sededeconeccao.zt_fornecedor.insert;
ShowMessage('Salvo com Sucesso!');

end;

procedure Tuser.SpeedButton3Click(Sender: TObject);
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

procedure Tuser.SpeedButton4Click(Sender: TObject);
begin
Pesquisar.show;
end;

procedure Tuser.SpeedButton6Click(Sender: TObject);
begin

sededeconeccao.zt_fornecedor.post;
ShowMessage('Edição feita com sucesso!');



end;

procedure Tuser.SpeedButton7Click(Sender: TObject);
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

procedure Tuser.SpeedButton9Click(Sender: TObject);
begin
if (edit1.text<>'') then
BEGIN
zq_usuario.close;
zq_usuario.sql.clear;
zq_usuario.sql.add('select * from usuario where login like' + quotedstr('%' + edit1.text + '%'));
zq_usuario.open;
end
else
begin
showmessage('dados não encontrados');
end;

end;

procedure Tuser.SpeedButton12Click(Sender: TObject);
begin
zq_usuario.Close;
ZQ_usuario.SQL.Clear;
ZQ_usuario.SQL.Add('select * from usuario');
ZQ_usuario.Open;

end;

procedure Tuser.SpeedButton13Click(Sender: TObject);
begin
zq_usuario.Close;
zq_usuario.SQL.Clear;
zq_usuario.SQL.Add(' select * from USUARIO');
zq_usuario.Open;
end;

procedure Tuser.Edit2Exit(Sender: TObject);
begin
  if (edit2.Text <> DBEdit3.Text) then
  begin
  ShowMessage('Senhas Incorretas');
  DBEdit3.Text:= '';
  Edit2.Text:='';
  DBEdit3.SetFocus;
  end;

end;

procedure Tuser.DBGrid1DblClick(Sender: TObject);
begin
if sededeconeccao.zt_usuario.locate( 'codigo_funcionario' ,DBGrid1.DataSource.DataSet.FieldByName( 'codigo_funcionario' ).AsString, []) then
begin
Cadastrar.Show;
end;

end;

procedure Tuser.FormShow(Sender: TObject);
begin
sededeconeccao.zt_usuario.Open;
zq_usuario.Open;
sededeconeccao.ZT_FUNCIONARIO.Open;
if sededeconeccao.zt_usuariofoto.Value='' then
begin
 sededeconeccao.zt_usuario.Edit;
 sededeconeccao.zt_usuariofoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
        foto.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value);
        end
        else
        begin
 foto.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value);
end;
end;




procedure Tuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
sededeconeccao.ZT_FUNCIONARIO.Close;
zq_usuario.Close;
sededeconeccao.zt_usuario.Close;
transparente.hide;
end;



procedure Tuser.Edit1Change(Sender: TObject);
begin
sededeconeccao.zt_usuario.locate('login',edit1.text,[lopartialkey,loCaseInsensitive]);
end;

procedure Tuser.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
 if sededeconeccao.ds_usuario.State in [dsinsert] then
    begin
        sededeconeccao.zt_usuariofoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
        foto.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value);
    end
    else
    begin

        foto.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value)
    end;

end;

end.
