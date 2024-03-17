unit untSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TformSplash = class(TForm)
    pnlPesquisa: TPanel;
    imgLogin: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    lblStatus: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSplash: TformSplash;

implementation

{$R *.dfm}

procedure TformSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position < 100 then
  begin
    ProgressBar1.StepIt;
    case ProgressBar1.Position of
      10 : lblStatus.Caption := 'Carregando dependências...';
      25 : lblStatus.Caption := 'Conectando ao banco de dados...';
      45 : lblStatus.Caption := 'Carregando as configurações...';
      75 : lblStatus.Caption := 'Inicializando...';
    end;
  end;

  if ProgressBar1.Position = 100 then
    close;

end;

end.
