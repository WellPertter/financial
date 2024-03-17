program Financial;

uses
  Vcl.Forms,
  untMainFinancial in '..\view\untMainFinancial.pas' {frmMainPrincipal},
  untCadastroPadrao in '..\view\untCadastroPadrao.pas' {formCadastro},
  untSplash in '..\view\untSplash.pas' {formSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainPrincipal, frmMainPrincipal);
  Application.CreateForm(TformCadastro, formCadastro);
  Application.CreateForm(TformSplash, formSplash);
  Application.Run;
end.
