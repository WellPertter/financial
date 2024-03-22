unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TformLogin = class(TForm)
    pnlLeft: TPanel;
    imgLogin: TImage;
    Panel1: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtPassword: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    edtUser: TEdit;
    btEnter: TButton;
    procedure btEnterClick(Sender: TObject);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}

uses untDataModelUsuarios;

procedure TformLogin.btEnterClick(Sender: TObject);
begin
  if Trim(edtUser.Text) = '' then
  begin
    ShowMessage('Informe o seu usuários!');
    edtUser.SetFocus;
    Abort;
  end;

  if Trim(edtPassword.Text) = '' then
  begin
    ShowMessage('Informe o sua senha!');
    edtPassword.SetFocus;
    Abort;
  end;

  try
    DMusuarios.validarLogin(Trim(edtUser.Text), Trim(edtPassword.Text));
    ModalResult := mrOk;
  except
    on ERROR : Exception do
    begin
      ShowMessage(ERROR.Message);
    end;
  end;

end;

procedure TformLogin.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btEnterClick(nil);
    Key := #0;
  end;
end;

end.
