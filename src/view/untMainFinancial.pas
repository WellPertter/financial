unit untMainFinancial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMainPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainPrincipal: TfrmMainPrincipal;

implementation

{$R *.dfm}


end.
