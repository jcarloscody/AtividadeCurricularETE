unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, XPMan;

type
  Tsplach = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    XPManifest1: TXPManifest;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splach: Tsplach;

implementation

uses login, sede_de_coneccao;

{$R *.dfm}

procedure Tsplach.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:= ProgressBar1.Position + 39;
if ProgressBar1.Position = 100 then
begin
splach.Destroy;
logen.show;
end;

end;
end.
