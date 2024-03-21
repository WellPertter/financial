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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMusuarios: TDMusuarios;

implementation

uses untDataModelConnection;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
