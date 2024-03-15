unit untCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList;

type
  TformCadastro = class(TForm)
    pnlPrincipal: TCardPanel;
    CardCadastro: TCard;
    CardPesquisa: TCard;
    pnlPesquisa: TPanel;
    pnlButtom: TPanel;
    pnlMain: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    Label1: TLabel;
    btnPesquisar: TButton;
    ImageList1: TImageList;
    btnSair: TButton;
    btnImprimir: TButton;
    btnExcluir: TButton;
    btnAdicionar: TButton;
    btnAlterar: TButton;
    Panel1: TPanel;
    Button1: TButton;
    Button5: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastro: TformCadastro;

implementation

{$R *.dfm}

procedure TformCadastro.btnAdicionarClick(Sender: TObject);
begin
  pnlPrincipal.activeCard := CardCadastro;
end;

procedure TformCadastro.btnAlterarClick(Sender: TObject);
begin
  pnlPrincipal.activeCard := CardCadastro;
end;

procedure TformCadastro.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TformCadastro.Button1Click(Sender: TObject);
begin
  pnlPrincipal.activeCard := CardPesquisa;
end;

procedure TformCadastro.Button5Click(Sender: TObject);
begin
  ShowMessage('Salvo com sucesso!');
  pnlPrincipal.activeCard := CardPesquisa;
end;

procedure TformCadastro.FormShow(Sender: TObject);
begin
  pnlPrincipal.activeCard := CardPesquisa;
end;

end.
