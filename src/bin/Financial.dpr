program Financial;

uses
  Vcl.Forms,
  untMainFinancial in '..\view\untMainFinancial.pas' {frmMainPrincipal},
  untCadastroPadrao in '..\view\untCadastroPadrao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainPrincipal, frmMainPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
