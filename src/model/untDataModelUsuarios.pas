unit untDataModelUsuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient;

type
  TDMusuarios = class(TDataModule)
    QryUsuarios: TFDQuery;
    cdsUsuarios: TClientDataSet;
    dsUsuarios: TDataSetProvider;
    QryUsuariosid: TIntegerField;
    QryUsuariosnome: TStringField;
    QryUsuarioslogin: TStringField;
    QryUsuariossenha: TStringField;
    QryUsuariosstatus: TStringField;
    QryUsuariosdata_cadastro: TDateField;
    cdsUsuariosid: TIntegerField;
    cdsUsuariosnome: TStringField;
    cdsUsuarioslogin: TStringField;
    cdsUsuariossenha: TStringField;
    cdsUsuariosstatus: TStringField;
    cdsUsuariosdata_cadastro: TDateField;


  private
    FNomeUsuarioLogado: String;
    FLoginUsuarioLogado: String;
    FIdUsuarioLogado: String;
    procedure SetNomeUsuarioLogado(const Value: String);
    procedure SetLoginUsuarioLogado(const Value: String);
    procedure SetIdUsuarioLogado(const Value: String);
    { Private declarations }
  public
    function GetLoginCadastrado(login: string): Boolean;
    procedure validarLogin(login, senha: string);

    property NomeUsuarioLogado : String read FNomeUsuarioLogado write SetNomeUsuarioLogado;
    property LoginUsuarioLogado : String read FLoginUsuarioLogado write SetLoginUsuarioLogado;
    property IdUsuarioLogado : String read FIdUsuarioLogado write SetIdUsuarioLogado;
    { Public declarations }

  end;

var
  DMusuarios: TDMusuarios; vNomeUsuarioLogado, vLoginUsuarioLogado, vIdUsuarioLogado : string;

implementation

uses untDataModelConnection;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TDMusuarios }

function TDMusuarios.GetLoginCadastrado(login: string): Boolean;
var
  SQLConsulta : TFDQuery;
begin
  Result := True;
  SQLConsulta := TFDQuery.Create(nil);
  try
    SQLConsulta.Connection := DMprincipal.FDConexao;
    SQLConsulta.SQL.Clear;
    SQLConsulta.SQL.Add('select id from usuarios where login = :login');
    SQLConsulta.ParamByName('login').AsString := login;
    SQLConsulta.open;

    if SQLConsulta.RecordCount = 0 then
      Result := False;
  finally
    SQLConsulta.Close;
    FreeAndNil(SQLConsulta);
  end;
end;

procedure TDMusuarios.SetIdUsuarioLogado(const Value: String);
begin
  FIdUsuarioLogado := Value;
end;

procedure TDMusuarios.SetLoginUsuarioLogado(const Value: String);
begin
  FLoginUsuarioLogado := Value;
end;

procedure TDMusuarios.SetNomeUsuarioLogado(const Value: String);
begin
  FNomeUsuarioLogado := Value;
end;

procedure TDMusuarios.validarLogin(login, senha: string);
var
  SQLConsulta : TFDQuery;
begin
  SQLConsulta := TFDQuery.Create(nil);
  try
    SQLConsulta.Connection := DMprincipal.FDConexao;
    SQLConsulta.SQL.Clear;
    SQLConsulta.SQL.Add('select * from usuarios where login = :login and senha = :senha');
    SQLConsulta.ParamByName('login').AsString := login;
    SQLConsulta.ParamByName('senha').AsString := senha;
    SQLConsulta.open;

    if SQLConsulta.IsEmpty then
      raise Exception.Create('Usuário ou senha inválido.');
    if SQLConsulta.FieldByName('status').AsString <> 'A' then
      raise Exception.Create('Usuário bloqueado.');
    {
   // SetIdUsuarioLogado(SQLConsulta.FieldByName('id').Value);
    vIdUsuarioLogado    := SQLConsulta.FieldByName('id').Value;
    vNomeUsuarioLogado  := SQLConsulta.FieldByName('nome').AsString;
    vLoginUsuarioLogado := SQLConsulta.FieldByName('login').AsString;
     }
    FIdUsuarioLogado    := SQLConsulta.FieldByName('id').Value;
    FNomeUsuarioLogado  := SQLConsulta.FieldByName('nome').AsString;
    FLoginUsuarioLogado := SQLConsulta.FieldByName('login').AsString;
  finally
    SQLConsulta.Close;
    FreeAndNil(SQLConsulta);
  end;
end;

end.
