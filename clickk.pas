unit clickk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, DBCtrls, ExtDlgs;

type
  Tesp = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    ds_espiao: TDataSource;
    SpeedButton2: TSpeedButton;
    ZQ_espiao: TZQuery;
    ZQ_espiaocodigo: TIntegerField;
    ZQ_espiaocodigo_funcionario: TIntegerField;
    ZQ_espiaodata: TDateField;
    ZQ_espiaohora: TTimeField;
    ZQ_espiaolocal: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    foto: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    abrifoto: TOpenPictureDialog;
    DBNavigator1: TDBNavigator;
    ZQ_espiaofoto: TStringField;
    ZQ_espiaonome: TStringField;
    ZQ_espiaonivel: TStringField;
    ZQ_espiaositu: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  esp: Tesp;

implementation

uses sede_de_coneccao, adiminis_cliente, adiminis_fornecedor,
  adiminis_funcionario, configuracao_sistema, controle_de_estoque, login,
  menu, splash, Urecibo, usuario, utrans, uvendas;

{$R *.dfm}

procedure Tesp.SpeedButton1Click(Sender: TObject);
begin
If (ComboBox1.Text <> '') and (Edit1.Text <> '') then
 begin
   ZQ_espiao.Close;
   ZQ_espiao.SQL.Clear;
   ZQ_espiao.SQL.Add ('select * from cliente where '+ComboBox1.Text+' LIKE ' + quotedstr('%'+Edit1.Text+ '%'));
   ZQ_espiao.Open;
 end
 else
 begin
   ShowMessage('Preencha todos os campos');
 end;

end;

procedure Tesp.FormShow(Sender: TObject);
begin
sededeconeccao.zt_usuario.Open;
end;

procedure Tesp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 transparente.Hide;
end;

procedure Tesp.SpeedButton2Click(Sender: TObject);
begin
ZQ_espiao.Active:=False;
ZQ_espiao.SQL.Clear;
ZQ_espiao.SQL.Add(' select * from espiao');
ZQ_espiao.Active:=True;
end;

procedure Tesp.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
        foto.Picture.LoadFromFile(ZQ_espiaofoto.Value);
end;

procedure Tesp.DBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
        foto.Picture.LoadFromFile(ZQ_espiaofoto.Value);
end;

procedure Tesp.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
        foto.Picture.LoadFromFile(ZQ_espiaofoto.Value);
end;

procedure Tesp.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        foto.Picture.LoadFromFile(ZQ_espiaofoto.Value);
        
end;

procedure Tesp.DBGrid1TitleClick(Column: TColumn);
begin
        foto.Picture.LoadFromFile(ZQ_espiaofoto.Value);
end;

end.
