program Financial;

uses
  Vcl.Forms,
  untMainFinancial in '..\view\untMainFinancial.pas' {formMainPrincipal},
  untCadastroPadrao in '..\view\untCadastroPadrao.pas' {formCadastro},
  untSplash in '..\view\untSplash.pas' {formSplash},
  untDataModelConnection in '..\model\untDataModelConnection.pas' {DMprincipal: TDataModule},
  untUsuarios in '..\view\untUsuarios.pas' {formUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMprincipal, DMprincipal);
  Application.CreateForm(TformMainPrincipal, formMainPrincipal);
  Application.CreateForm(TformCadastro, formCadastro);
  Application.CreateForm(TformSplash, formSplash);
  Application.CreateForm(TformUsuarios, formUsuarios);
  Application.Run;
end.
