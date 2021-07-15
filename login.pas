unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection;

type
  Tlogen = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  logen: Tlogen;

implementation

uses sede_de_coneccao, menu, adiminis_cliente, adiminis_fornecedor,
  adiminis_funcionario, clickk, configuracao_sistema, controle_de_estoque,
  splash, Urecibo, usuario, utrans, uvendas;

{$R *.dfm}

procedure Tlogen.SpeedButton2Click(Sender: TObject);
begin

if
messagebox(handle,'Deseja sair?','Atenção',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin
abort;
end
else
begin
application.terminate;
end;

end;

procedure Tlogen.Edit1Change(Sender: TObject);
begin
	if not (sededeconeccao.zt_usuario.locate('login',edit1.text,[lopartialkey,locaseinsensitive])) then
        begin

	showmessage('usuario nao existe');
	edit1.setfocus;

        end;
end;

procedure Tlogen.SpeedButton1Click(Sender: TObject);
begin
logen.hide;
menuu.show;
    end;
    procedure Tlogen.FormShow(Sender: TObject);
begin
sededeconeccao.zt_usuario.Open;
end;

procedure Tlogen.SpeedButton3Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
    if sededeconeccao.zt_usuariosenha.Value=Edit2.Text then
      begin
       // PRIMEIRA SETENÇA
        if (sededeconeccao.zt_usuarionivel.Value='total') and (sededeconeccao.zt_funcionariosituacao.Value='Liberado')  then
          begin
            sededeconeccao.Zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_funcionariocodigo.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario entrou no sistema completo!!';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
            sededeconeccao.zt_espiao.Close;
            menuu.mo1.Enabled:=true;
            ad_cliente.cadastrar.Enabled:=true;
            menuu.SpeedButton1.Visible:=true;
            menuu.SpeedButton3.Visible:=true;
            menuu.SpeedButton4.Visible:=true;
            menuu.SpeedButton5.Visible:=true;
            menuu.SpeedButton6.Visible:=true;
            menuu.SpeedButton2.Top:=48;
            menuu.SpeedButton2.Left:=71;
            menuu.SpeedButton7.Top:=288;
            menuu.SpeedButton7.Left:=296;
            logen.Hide;
            menuu.Show;
          end
        // SEGUNDA SETENÇA
        else if (sededeconeccao.zt_usuarionivel.Value='parcial') and (sededeconeccao.zt_funcionariosituacao.Value='Liberado') then
          begin
            logen.Hide;
            menuu.Show;
            sededeconeccao.Zt_espiao.Open;
            sededeconeccao.Zt_espiao.Edit;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario entrou no sistema parcial!!';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
            menuu.mo1.Enabled:=false;
            ad_cliente.cadastrar.Enabled:=False;
            menuu.SpeedButton1.Visible:=false;
            menuu.SpeedButton3.Visible:=false;
            menuu.SpeedButton4.Visible:=false;
            menuu.SpeedButton5.Visible:=false;
            menuu.SpeedButton6.Visible:=false;
            menuu.SpeedButton2.Top:=200;
            menuu.SpeedButton2.Left:=271;
            menuu.SpeedButton7.Top:=200;
            menuu.SpeedButton7.Left:=465;
          end
         //TERCEIRA SETENÇA
        else
          begin
            ShowMessage('Você nao tem permissao de entrar no sistema!');

            sededeconeccao.Zt_espiao.Open;
            sededeconeccao.Zt_espiao.Edit;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= ' Este usuario tentou entrar no sistema sem ter permissão!!';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
            Application.Terminate;

          end
      end
    else
      begin
      ShowMessage('A senha esta incorreta!!');
      end

  end;
end;

procedure Tlogen.Button1Click(Sender: TObject);
begin
menuu.ShowModal;
end;

procedure Tlogen.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if
messagebox(handle,'Deseja sair?','Atenção',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin
abort;
end
else
begin
application.terminate;
end;

end;

end.
