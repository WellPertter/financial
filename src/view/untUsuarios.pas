unit untUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadastroPadrao, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TformUsuarios = class(TformCadastro)
    DataSource1: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formUsuarios: TformUsuarios;

implementation

uses untDataModelConnection;

{$R *.dfm}

procedure TformUsuarios.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  DMprincipal.QryUsuarios.Open;
end;

end.
