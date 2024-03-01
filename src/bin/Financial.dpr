program Financial;

uses
  Vcl.Forms,
  untMainFinancial in '..\view\untMainFinancial.pas' {frmMainPrincipal};

{$R *.res}



var
  ProjectDir: string;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainPrincipal, frmMainPrincipal);
  Application.Run;


  // Obter o diretório do arquivo de projeto

  // Exibir o diretório
end.
