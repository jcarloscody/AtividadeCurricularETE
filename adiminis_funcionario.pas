unit adiminis_funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls, ZAbstractTable,
  ExtDlgs;

type
  TFuncionario = class(TForm)
    ad_funcionario: TPageControl;
    pesquisar: TTabSheet;
    cadastro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label41: TLabel;
    SpeedButton9: TSpeedButton;
    Label42: TLabel;
    DBMemo2: TDBMemo;
    ds_funcionario: TDataSource;
    ComboBox1: TComboBox;
    Label47: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    foto: TImage;
    abrefoto: TOpenPictureDialog;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    zt_axiliar: TZTable;
    zq_funcionario: TZQuery;
    DBNavigator1: TDBNavigator;
    zq_funcionariocodigo: TIntegerField;
    zq_funcionarionome: TStringField;
    zq_funcionariorua: TStringField;
    zq_funcionariocompl: TStringField;
    zq_funcionariobairro: TStringField;
    zq_funcionariocidade: TStringField;
    zq_funcionariocep: TLargeintField;
    zq_funcionariouf: TStringField;
    zq_funcionariocpf: TStringField;
    zq_funcionariosalario: TFloatField;
    zq_funcionariosituacao: TStringField;
    zq_funcionarioobs: TStringField;
    zq_funcionariotel1: TLargeintField;
    zq_funcionariotel2: TLargeintField;
    zq_funcionarioemail: TStringField;
    zq_funcionariodata: TDateField;
    zq_funcionariofoto: TStringField;
    zq_funcionarionumero: TLargeintField;
    zt_axiliarcodigo: TIntegerField;
    zt_axiliarnome: TStringField;
    zt_axiliarrua: TStringField;
    zt_axiliarcompl: TStringField;
    zt_axiliarbairro: TStringField;
    zt_axiliarcidade: TStringField;
    zt_axiliarcep: TLargeintField;
    zt_axiliaruf: TStringField;
    zt_axiliarcpf: TStringField;
    zt_axiliarsalario: TFloatField;
    zt_axiliarsituacao: TStringField;
    zt_axiliarobs: TStringField;
    zt_axiliartel1: TLargeintField;
    zt_axiliartel2: TLargeintField;
    zt_axiliaremail: TStringField;
    zt_axiliardata: TDateField;
    zt_axiliarfoto: TStringField;
    zt_axiliarnumero: TLargeintField;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Funcionario: TFuncionario;

implementation

uses sede_de_coneccao, menu;

{$R *.dfm}

procedure TFuncionario.SpeedButton10Click(Sender: TObject);
begin
Funcionario.Hide;
menuu.Show;
end;

procedure TFuncionario.SpeedButton5Click(Sender: TObject);
begin
Funcionario.Hide;

end;

procedure TFuncionario.SpeedButton8Click(Sender: TObject);
begin
Funcionario.Hide;

end;

procedure TFuncionario.SpeedButton1Click(Sender: TObject);
begin
      if abrefoto.Execute then
      begin
         foto.Picture.LoadFromFile(abrefoto.FileName);
          sededeconeccao.ZT_FUNCIONARIO.Edit;
          sededeconeccao.ZT_FUNCIONARIOfoto.Value:= abrefoto.FileName;
      end;



end;

procedure TFuncionario.SpeedButton3Click(Sender: TObject);
begin
zq_funcionario.Close;
zq_funcionario.SQL.Clear;
zq_funcionario.SQL.Add('select * from funcionario');
zq_funcionario.Open;
end;

procedure TFuncionario.SpeedButton4Click(Sender: TObject);
begin
pesquisar.show;
end;

procedure TFuncionario.SpeedButton6Click(Sender: TObject);
begin

sededeconeccao.zt_funcionario.post;
ShowMessage('Edição feita com sucesso!');


end;

procedure TFuncionario.SpeedButton7Click(Sender: TObject);
begin
if
messagebox(handle,'Deseja realmente Excluir?','Excluir',mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
begin
abort;
end
else
begin
sededeconeccao.zt_funcionario.Delete;
ShowMessage('Exclução feita com sucesso!');

end;

end;

procedure TFuncionario.DBGrid1DblClick(Sender: TObject);
begin
 // abrir tela de visualização do arquivo correspondente a linha clicada no dbgrid
if sededeconeccao.ZT_FUNCIONARIO.locate( 'codigo' ,DBGrid1.DataSource.DataSet.FieldByName( 'codigo' ).AsString, []) then
begin
cadastro.Show;
foto.Picture.LoadFromFile(sededeconeccao.ZT_FUNCIONARIOfoto.Value);
end;

end;

procedure TFuncionario.SpeedButton9Click(Sender: TObject);
begin
If (ComboBox1.Text <> '') and (Edit1.Text <> '') then
 begin
   ZQ_funcionario.Close;
   ZQ_funcionario.SQL.Clear;
   ZQ_funcionario.SQL.Add ('select * from funcionario where '+ComboBox1.Text+' LIKE ' + quotedstr('%'+Edit1.Text+ '%'));
   ZQ_funcionario.Open;
 end
 else
 begin
   ShowMessage('Preencha todos os campos');
 end;

end;


procedure TFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
zt_axiliar.Close;
ZQ_funcionario.Close;
sededeconeccao.ZT_FUNCIONARIO.Close;
Funcionario.Hide;
menuu.show;
end;

procedure TFuncionario.FormShow(Sender: TObject);
begin
zt_axiliar.open;
ZQ_funcionario.Open;
sededeconeccao.zt_funcionario.Open;
if (sededeconeccao.zt_funcionariofoto.Value='') then
begin
sededeconeccao.zt_funcionario.Edit;
sededeconeccao.zt_funcionariofoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
foto.Picture.LoadFromFile(sededeconeccao.zt_funcionariofoto.Value);
end
else
begin
foto.Picture.LoadFromFile(sededeconeccao.zt_funcionariofoto.Value);
end;
end;

procedure TFuncionario.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
  var ultcodigo:Integer;
  begin
	if sededeconeccao.ds_funcionario.state in [ dsinsert ] then
		begin
      sededeconeccao.ZT_FUNCIONARIOfoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';

      foto.Picture.LoadFromFile(sededeconeccao.ZT_FUNCIONARIOfoto.Value);
			zt_axiliar.last;
			ultcodigo:= zt_axiliarcodigo.value + 1;
			sededeconeccao.ZT_FUNCIONARIOcodigo.value:=ultcodigo;
      sededeconeccao.ZT_FUNCIONARIOdata.Value:= Date;
		end
    else if  (sededeconeccao.ZT_FUNCIONARIOfoto.Value='')then
    begin
      sededeconeccao.ZT_FUNCIONARIO.Edit;
      sededeconeccao.ZT_FUNCIONARIOfoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
      foto.Picture.LoadFromFile(sededeconeccao.ZT_FUNCIONARIOfoto.Value);

    end
    else
    begin
    foto.Picture.LoadFromFile(sededeconeccao.ZT_FUNCIONARIOfoto.Value);
    end;


end;

procedure TFuncionario.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
    var ultcodigo:Integer;

  begin
	if sededeconeccao.ds_funcionario.state in [ dsinsert ] then
		begin
      sededeconeccao.ZT_FUNCIONARIOfoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';

      foto.Picture.LoadFromFile(sededeconeccao.ZT_FUNCIONARIOfoto.Value);
			zt_axiliar.last;
			ultcodigo:= zt_axiliarcodigo.value + 1;
			sededeconeccao.ZT_FUNCIONARIOcodigo.value:=ultcodigo;
      sededeconeccao.ZT_FUNCIONARIOdata.Value:= Date;
		end
    else if  (sededeconeccao.ZT_FUNCIONARIOfoto.Value='')then
    begin
      sededeconeccao.ZT_FUNCIONARIO.Edit;
      sededeconeccao.ZT_FUNCIONARIOfoto.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\semfoto.jpg';
      foto.Picture.LoadFromFile(sededeconeccao.ZT_FUNCIONARIOfoto.Value);

    end
    else
    begin
    foto.Picture.LoadFromFile(sededeconeccao.ZT_FUNCIONARIOfoto.Value);
    end;


end;


procedure TFuncionario.SpeedButton2Click(Sender: TObject);
begin
zq_funcionario.Close;
zq_funcionario.SQL.Clear;
zq_funcionario.SQL.Add(' select * from FUNCIOARIO');
zq_funcionario.Open;
end;

end.
