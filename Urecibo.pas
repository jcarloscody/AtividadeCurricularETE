unit Urecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, ExtDlgs;

type
  Trecibo = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    abrefoto: TOpenPictureDialog;
    Foto: TQRImage;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel13: TQRLabel;
    procedure QuickRep1Preview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  recibo: Trecibo;

implementation

uses sede_de_coneccao;

{$R *.dfm}

procedure Trecibo.QuickRep1Preview(Sender: TObject);
begin

sededeconeccao.zt_configuracao.Open;
sededeconeccao.zt_saidaproduto.Open;
sededeconeccao.zt_saidapai.Open;


if (sededeconeccao.zt_configuracaofotodaempresa.Value<>'') then
foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);


end;

end.
