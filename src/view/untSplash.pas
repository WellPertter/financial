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
    Label3: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    lblStatus: TLabel;
    imgDLL: TImage;
    imgBanco: TImage;
    imgConfing: TImage;
    imgIni: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    procedure UpdateStatusTLabel(messagem: string; component:TImage);
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
close;
  if ProgressBar1.Position < 100 then
  begin
    ProgressBar1.StepIt;
    case ProgressBar1.Position of
      10 : UpdateStatusTLabel('Carregando dependências...', imgDLL);
      25 : UpdateStatusTLabel('Conectando ao banco de dados...', imgBanco);
      45 : UpdateStatusTLabel('Carregando as configurações...', imgConfing);
      75 : UpdateStatusTLabel('Inicializando...', imgIni);
    end;
  end;

  if ProgressBar1.Position = 100 then
    close;

end;

procedure TformSplash.UpdateStatusTLabel(messagem: string; component: TImage);
begin
  lblStatus.Caption := messagem;
  component.Visible := true;
end;

end.
