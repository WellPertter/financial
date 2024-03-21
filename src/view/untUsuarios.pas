unit untUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadastroPadrao, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.WinXCtrls;

type
  TformUsuarios = class(TformCadastro)
    dsDbgrid: TDataSource;
    edtNome: TEdit;
    Label2: TLabel;
    edtSenha: TEdit;
    Label4: TLabel;
    edtLogin: TEdit;
    Label5: TLabel;
    TSstatus: TToggleSwitch;
    Label6: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    tipo: string;
  public
    { Public declarations }
  end;

var
  formUsuarios: TformUsuarios;

implementation

uses untDataModelUsuarios;

{$R *.dfm}

procedure TformUsuarios.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  //pnlPrincipal.activeCard := CardCadastro;
  tipo           := 'I';

  edtNome.Text   := '';
  edtLogin.Text  := '';
  edtSenha.Text  := '';
  TSstatus.State := tssOn
end;

procedure TformUsuarios.btnAlterarClick(Sender: TObject);
begin
  inherited;
  //pnlPrincipal.activeCard := CardCadastro;
  tipo                    := 'A';

  edtNome.Text     := DMusuarios.cdsUsuariosnome.AsString;
  edtLogin.Text    := DMusuarios.cdsUsuarioslogin.AsString;
  edtSenha.Text    := DMusuarios.cdsUsuariossenha.AsString;

  if DMusuarios.cdsUsuariosstatus.AsString = 'A' then
    TSstatus.State := tssOn
  else
    TSstatus.State := tssOff;
end;

procedure TformUsuarios.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  //DMusuarios.QryUsuarios.Open;
  DMusuarios.cdsUsuarios.Close;
  DMusuarios.cdsUsuarios.CommandText := 'select * from usuarios where nome like ' + QuotedStr('%' + edtPesquisa.Text + '%') + ' order by nome';
  DMusuarios.cdsUsuarios.Open;

  if DBGrid1.DataSource <> nil then
  begin
    btnAlterar.Enabled := true;
    btnExcluir.Enabled := true;
  end
  else
  begin
    btnAlterar.Enabled := false;
    btnExcluir.Enabled := false;
  end;


end;

procedure TformUsuarios.Button5Click(Sender: TObject);
var
  status: string;
begin
  status := 'A';

  if Trim(edtNome.Text) = '' then
  begin
    edtNome.SetFocus;
    ShowMessage('O NOME do usuário não pode ser vazio!');
    Abort;
  end;
  if Trim(edtLogin.Text) = '' then
  begin
    edtLogin.SetFocus;
    ShowMessage('O LOGIN do usuário não pode ser vazio!');
    Abort;
  end;
  if Trim(edtSenha.Text) = '' then
  begin
    edtSenha.SetFocus;
    ShowMessage('O SENHA do usuário não pode ser vazio!');
    Abort;
  end;

  if TSstatus.State = tssOff then
    status := 'B';

  if tipo = 'A' then
    DMusuarios.cdsUsuarios.Edit
  else
    DMusuarios.cdsUsuarios.Insert;

  DMusuarios.cdsUsuariosnome.AsString   := Trim(edtNome.Text);
  DMusuarios.cdsUsuarioslogin.AsString  := Trim(edtLogin.Text);
  DMusuarios.cdsUsuariossenha.AsString  := Trim(edtSenha.Text);
  DMusuarios.cdsUsuariosstatus.AsString := Trim(status);

  DMusuarios.cdsUsuarios.Post;
  DMusuarios.cdsUsuarios.ApplyUpdates(0);

  inherited;
end;

procedure TformUsuarios.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    btnPesquisarClick(nil);
    Key := #0;
  end;
end;

end.
