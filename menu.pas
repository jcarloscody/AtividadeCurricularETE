unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, ExtCtrls, jpeg, ExtDlgs, StdCtrls, DBCtrls,
  XPMan, ComCtrls;

type
  Tmenuu = class(TForm)
    foto: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    main: TMainMenu;
    Sair1: TMenuItem;
    SpeedButton5: TSpeedButton;
    Image4: TImage;
    SpeedButton6: TSpeedButton;
    abrefoto: TOpenPictureDialog;
    SpeedButton7: TSpeedButton;
    Login1: TMenuItem;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    mo1: TMenuItem;
    fotousu: TImage;
    abriusuario: TOpenPictureDialog;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    ProgressBar2: TProgressBar;
    Timer2: TTimer;
    Label4: TLabel;
    DBText2: TDBText;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure mo1Click(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure suario1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menuu: Tmenuu;

implementation

uses adiminis_cliente, adiminis_fornecedor, adiminis_funcionario, login, sede_de_coneccao, splash,
  usuario, controle_de_estoque, configuracao_sistema, uvendas, cinza,
  clBackground, clickk, clNavy, gree, Urecibo, width, utrans, Math,
  uanotacoess;

{$R *.dfm}

procedure Tmenuu.SpeedButton2Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario Acessou a tela de cadastro de cliente.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
ad_cliente.zt_aux.Open;
sededeconeccao.zt_cliente.Open;
menuu.Hide;
ad_cliente.Show;

end;

procedure Tmenuu.SpeedButton4Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de fornecedor';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;

              menuu.Hide;
              fornecedor.Show;
end;

procedure Tmenuu.SpeedButton1Click(Sender: TObject);
begin

         
sededeconeccao.ZT_FUNCIONARIO.Open;
Funcionario.zt_axiliar.Open;
menuu.Hide;
funcionario.Show;
    sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de funcionario.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
end;

procedure Tmenuu.Sair1Click(Sender: TObject);
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

procedure Tmenuu.Image4Click(Sender: TObject);
begin
ShowMessage('Esta em Construção!');
end;

procedure Tmenuu.Image7Click(Sender: TObject);
begin
ShowMessage('Esta em Construção!');
end;

procedure Tmenuu.Image6Click(Sender: TObject);
begin
ShowMessage('Esta em Construção!');
end;

procedure Tmenuu.SpeedButton6Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de configuração do sistema.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
            transparente.Show;
            configu_dosistema.ShowModal;
end;

procedure Tmenuu.SpeedButton7Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de vendas.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
            menuu.hide;
            Vendas.Show;
end;

procedure Tmenuu.SpeedButton3Click(Sender: TObject);
begin

sededeconeccao.zt_usuario.Open;
sededeconeccao.ZT_FUNCIONARIO.Open;
transparente.Show;
user.ShowModal;

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessoua tela de usuario.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
end;

procedure Tmenuu.SpeedButton5Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou o controle de estoque.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
            menuu.Hide;
            controle_estoque.ShowModal;
end;

procedure Tmenuu.Login1Click(Sender: TObject);
begin
menuu.Hide;
logen.show;
logen.Edit1.Text:='';
logen.Edit2.Text:='';
end;

procedure Tmenuu.mo1Click(Sender: TObject);
begin
            transparente.Show;
            esp.ShowModal;
                   sededeconeccao.zt_espiao.Open;

            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario Acessou a tela de espionagem.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;

end;

procedure Tmenuu.Configurao1Click(Sender: TObject);
begin
         sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de configuração do sistema.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
configu_dosistema.ShowModal;
end;

procedure Tmenuu.Clientes1Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario Acessou a tela de cadastro de cliente.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
ad_cliente.zt_aux.Open;
sededeconeccao.zt_cliente.Open;
ad_cliente.showmodal;

end;

procedure Tmenuu.Funcionario1Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de funcionario.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
sededeconeccao.ZT_FUNCIONARIO.Open;
Funcionario.zt_axiliar.Open;
funcionario.showmodal;

end;

procedure Tmenuu.Fornecedor1Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de fornecedor';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
fornecedor.showmodal;

end;

procedure Tmenuu.Estoque1Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou o controle de estoque.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
controle_estoque.ShowModal;

end;

procedure Tmenuu.Vendas1Click(Sender: TObject);
begin
         sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessou a tela de vendas.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
Vendas.ShowModal;
end;

procedure Tmenuu.suario1Click(Sender: TObject);
begin

            sededeconeccao.zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_usuariocodigo_funcionario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario acessoua tela de usuario.';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
sededeconeccao.zt_usuario.Open;
sededeconeccao.ZT_FUNCIONARIO.Open;
user.ShowModal;
end;

procedure Tmenuu.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure Tmenuu.Timer1Timer(Sender: TObject);
begin
foto.Visible:=false;
sededeconeccao.zt_configuracao.Open;
sededeconeccao.zt_configuracao.Edit;
fotousu.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value);
if (sededeconeccao.zt_configuracaofotodaempresa.Value='') then
		begin
      sededeconeccao.zt_configuracaofotodaempresa.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto1.jpg';
      foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);
		end
    else
    begin
    foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);
    end;

ProgressBar1.Position:= ProgressBar1.Position + 39;
if ProgressBar1.Position = 100 then
begin
ProgressBar1.Visible:=false;
foto.Visible:=true;
fotousu.Visible:=true;
Timer1.Enabled:=false;
end;

end;

procedure Tmenuu.Timer2Timer(Sender: TObject);
begin
Image4.Visible:=false;
ProgressBar2.Position:= ProgressBar2.Position + 60;
if ProgressBar2.Position = 100 then
begin
Image4.Visible:=true;
timer2.Enabled:=false;
ProgressBar2.Position:=0;
timer2.Enabled:=true;
end;
end;

procedure Tmenuu.Button1Click(Sender: TObject);
begin
Timer2.Enabled:=false;
end;

procedure Tmenuu.FormShow(Sender: TObject);
begin
sededeconeccao.zt_usuario.Open;
sededeconeccao.ZT_FUNCIONARIO.Open;
sededeconeccao.zt_configuracao.Open;
if (sededeconeccao.zt_usuariofoto.Value='') and (sededeconeccao.zt_usuariofoto.Value='')then
begin
 sededeconeccao.zt_usuario.Edit;
 sededeconeccao.zt_usuariofoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
        fotousu.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value);
         sededeconeccao.zt_configuracao.Edit;
 sededeconeccao.zt_configuracaofotodaempresa.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
        foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);
        end
        else
        begin
 foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);
  fotousu.Picture.LoadFromFile(sededeconeccao.zt_usuariofoto.Value);
end;

end;

end.
