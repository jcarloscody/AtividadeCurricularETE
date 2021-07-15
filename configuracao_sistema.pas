unit configuracao_sistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls,  ComObj, ShlObj,
  ExtDlgs;

type
  Tconfigu_dosistema = class(TForm)
    foto: TImage;
    abrefoto: TOpenPictureDialog;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    abrefoto2: TOpenPictureDialog;
    foto2: TImage;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
  function ExecutarProcesso(cmd: string): Boolean;
  procedure caminhoDir();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  configu_dosistema: Tconfigu_dosistema;
  DirDesktop: String;

implementation

uses sede_de_coneccao, menu, adiminis_cliente, adiminis_fornecedor,
  adiminis_funcionario, controle_de_estoque, login, splash, Urecibo,
  usuario, uvendas, width, cinza, clBackground, gree, clNavy, utrans;

{$R *.dfm}

procedure Tconfigu_dosistema.SpeedButton1Click(Sender: TObject);
begin
 if abrefoto.Execute then
      begin
         foto.Picture.LoadFromFile(abrefoto.FileName);
          sededeconeccao.zt_configuracao.Edit;
          sededeconeccao.zt_configuracaofotodaempresa.Value:= abrefoto.FileName;
      end;

end;

procedure Tconfigu_dosistema.FormShow(Sender: TObject);
begin
sededeconeccao.zt_configuracao.Open;
sededeconeccao.zt_configuracao.Edit;
if (sededeconeccao.zt_configuracaofotodaempresa.Value='') then
		begin
      sededeconeccao.zt_configuracaofotodaempresa.Value:='C:\Users\windows7\Desktop\sistema - Cópia\shim 2.5 sof\imagens do sistema shimsoftware2.6\semfoto1.jpg';
      foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);
		end
    else
    begin
    foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);
    end;
        foto2.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotopraorelatorio.Value);
    end;

procedure Tconfigu_dosistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
menuu.foto.Picture.LoadFromFile(sededeconeccao.zt_configuracaofotodaempresa.Value);
transparente.Hide;
end;

procedure Tconfigu_dosistema.SpeedButton3Click(Sender: TObject);
begin
 if abrefoto2.Execute then
      begin
         foto2.Picture.LoadFromFile(abrefoto2.FileName);
          sededeconeccao.zt_configuracao.Edit;
          sededeconeccao.zt_configuracaofotopraorelatorio.Value:= abrefoto2.FileName;
      end;

end;

function Tconfigu_dosistema.ExecutarProcesso(cmd: string): Boolean;
var
 SUInfo : TStartupInfo;
 ProcInfo: TProcessInformation;
begin
 FillChar(SUInfo, SizeOf(SUInfo), #0);
 SUInfo.cb := SizeOf(SUInfo);
 SUInfo.dwFlags := STARTF_USESHOWWINDOW;
 SUInfo.wShowWindow := SW_HIDE;
 Result := CreateProcess(nil, PChar(cmd), nil, nil, False, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, SUInfo, ProcInfo);
if (Result) then
 begin
 WaitForSingleObject(ProcInfo.hProcess, INFINITE);
 CloseHandle(ProcInfo.hProcess);
 CloseHandle(ProcInfo.hThread);
 end;
 end;

 procedure Tconfigu_dosistema.caminhoDir;
 var
 ItemIDList : PItemIDList;
begin
 SetLength(DirDesktop,MAX_PATH);
 SHGetSpecialFolderLocation(Application.Handle, CSIDL_DESKTOPDIRECTORY,ItemIDList);
 SHGetPathFromIDList(ItemIdList,PChar(DirDesktop));
 SetLength(DirDesktop,StrLen(PChar(DirDesktop)));
end;

procedure Tconfigu_dosistema.SpeedButton4Click(Sender: TObject);
var
strBanco, strHost, strUsuario, strSenha, strCaminho, strComando, strArquivo: string;
begin
caminhoDir;
   try
      strCaminho := DirDesktop + '\Backup\';
      if not DirectoryExists(strCaminho) then
      begin
         CreateDir(strCaminho);
      end;
      if FileExists(ExtractFilePath(Application.ExeName) + 'mysqldump.exe') then
      begin
          strArquivo := strCaminho + 'BACKUP_' + FormatDateTime('YYYY-mm-dd_hhnnss', Now) + '.sql';
         strHost := sededeconeccao.shimsoftware.HostName;
         strUsuario := sededeconeccao.shimsoftware.User;
         strSenha := sededeconeccao.shimsoftware.Password;
         strBanco := sededeconeccao.shimsoftware.Database;
        strComando := 'cmd.exe /c ""' +
                       ExtractFilePath(Application.ExeName) +
                       '\mysqldump.exe" ' + strBanco +
                       ' -h' + strHost +
                       ' -u' + strUsuario +
                       ' -p' + strSenha +
                       ' --databases --opt -c -e ' +
                       '>' + '"' +
                       strArquivo + '""';
        ExecutarProcesso(strComando);
        ShowMessage('Backup realizado com sucesso! ' +
                    'Agora, copie o backup da área de trabalho para um local seguro.');
      end
      else
      begin
         ShowMessage('ERRO: Backup não foi realizado com sucesso, ' +
                     'contate imediatamente o administrador do sistema.');
      end;
   finally
   end;end;


end.
