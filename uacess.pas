unit uacess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, StdCtrls;

type
  Tacesso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acesso: Tacesso;

implementation

uses sede_de_coneccao, uanotacoess, menu;

{$R *.dfm}

procedure Tacesso.SpeedButton2Click(Sender: TObject);
begin
anotacoes.hide;
acesso.Hide;
menuu.show;

end;

procedure Tacesso.SpeedButton1Click(Sender: TObject);
begin
if (Edit2.Text<>'') then
  begin
    if sededeconeccao.zt_acessosenha.Value=Edit2.Text then
      begin
          acesso.Hide;
          anotacoes.AlphaBlend:=false;
           sededeconeccao.Zt_espiao.Open;
            sededeconeccao.Zt_espiao.Insert;
            sededeconeccao.zt_espiaocodigo_funcionario.Value:= sededeconeccao.zt_acessocod_usuario.Value;
            sededeconeccao.Zt_espiaodata.Value:= Date;
            sededeconeccao.Zt_espiaohora.Value:= Time;
            sededeconeccao.Zt_espiaolocal.Value:= 'O usuario entrou na tela de anotação!!';
            sededeconeccao.Zt_espiao.Post;
            sededeconeccao.Zt_espiao.Edit;
            sededeconeccao.zt_espiao.Close;
       end
    else
      begin
ShowMessage('Senha Errada!!');
        end
  end
else
begin
      ShowMessage('campo vazio');
end

  end;

end;

end.
