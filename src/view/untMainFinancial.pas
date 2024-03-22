unit untMainFinancial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TformMainPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    CadastroPadro1: TMenuItem;
    StatusBar: TStatusBar;
    Timer1: TTimer;
    procedure CadastroPadro1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainPrincipal: TformMainPrincipal;

implementation

uses
  untCadastroPadrao, untSplash, untUsuarios, untLogin, untDataModelUsuarios;

{$R *.dfm}


procedure TformMainPrincipal.CadastroPadro1Click(Sender: TObject);
begin
  formUsuarios.Show;
  //formCadastro.show;
  //formCadastro.pnlPrincipal.activeCard := CardPesquisa;
end;

procedure TformMainPrincipal.FormCreate(Sender: TObject);
begin

  // Sistema para login. deixando obrigatório a tela.
  formSplash := TformSplash.Create(nil);
  try
    formSplash.ShowModal;
  finally
    FreeAndNil(formSplash);     // Limpar e deixa nulo
  end;
  formlogin := Tformlogin.Create(nil);
  try
    formlogin.ShowModal;
    // verificar se tem o resultado esperando para pode acessar os sistema.
    if formLogin.ModalResult <> mrOk then
      Application.Terminate;
  finally
    FreeAndNil(formlogin);     // Limpar e deixa nulo
  end;
  StatusBar.Panels.Items[1].Text := 'Usuário: ' + DMusuarios.NomeUsuarioLogado;
end;

procedure TformMainPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar.Panels.Items[0].Text := 'Data e hora atual: ' + DateTimeToStr(Now);
end;

end.
