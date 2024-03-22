program Financial;

uses
  Vcl.Forms,
  untMainFinancial in '..\view\untMainFinancial.pas' {formMainPrincipal},
  untCadastroPadrao in '..\view\untCadastroPadrao.pas' {formCadastro},
  untSplash in '..\view\untSplash.pas' {formSplash},
  untDataModelConnection in '..\model\untDataModelConnection.pas' {DMprincipal: TDataModule},
  untUsuarios in '..\view\untUsuarios.pas' {formUsuarios},
  untDataModelUsuarios in '..\model\untDataModelUsuarios.pas' {DMusuarios: TDataModule},
  untUtilitarios in '..\util\untUtilitarios.pas',
  untLogin in '..\view\untLogin.pas' {formLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMprincipal, DMprincipal);
  Application.CreateForm(TDMusuarios, DMusuarios);
  Application.CreateForm(TformMainPrincipal, formMainPrincipal);
  Application.CreateForm(TformCadastro, formCadastro);
  Application.CreateForm(TformUsuarios, formUsuarios);
  Application.Run;
end.
