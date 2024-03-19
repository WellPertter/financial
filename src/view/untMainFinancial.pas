unit untMainFinancial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TformMainPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    CadastroPadro1: TMenuItem;
    procedure CadastroPadro1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainPrincipal: TformMainPrincipal;

implementation

uses
  untCadastroPadrao, untSplash, untUsuarios;

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
end;

end.
