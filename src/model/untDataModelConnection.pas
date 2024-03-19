unit untDataModelConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDMprincipal = class(TDataModule)
    FDConexao: TFDConnection;
    QryUsuarios: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    const ARQUIVO_CONFING = 'Financial.cfg';
    { Private declarations }
  public
    { Public declarations }
    procedure LoadConfing;
    procedure Connection;
    procedure Disconnection;
  end;

var
  DMprincipal: TDMprincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMprincipal }

procedure TDMprincipal.LoadConfing;
var
  ParamName, ParamValue : String;
  Count : Integer;
  ParamList : TStringList;
begin
  FDConexao.Params.Clear;
  FDConexao.DriverName := 'SQLite';

  if not FileExists(ARQUIVO_CONFING) then
  begin
     raise Exception.Create('Arquivo de inicialização não foi criado!');
    //Halt;
  end;

  ParamList := TStringList.Create;
  try
    ParamList.LoadFromFile(ARQUIVO_CONFING);

    for Count := 0 to Pred(ParamList.Count) do
    begin

      if ParamList[Count].IndexOf('=') > 0 then
      begin
        ParamName  := ParamList[Count].Split(['='])[0].Trim;
        ParamValue := ParamList[Count].Split(['='])[1].Trim;

        FDConexao.Params.Add(ParamName + '=' + ParamValue);
      end;

      end;

  finally
    ParamList.Free;
    //FreeAndNil(ParamList);
  end;

end;


procedure TDMprincipal.Connection;
begin
  FDConexao.Connected := true;
end;

procedure TDMprincipal.DataModuleCreate(Sender: TObject);
begin
  LoadConfing;
  Connection;
end;

procedure TDMprincipal.Disconnection;
begin
  FDConexao.Connected := false;
end;

end.
