inherited formUsuarios: TformUsuarios
  Caption = '.: Cadastro de Usu'#225'rios :.'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TCardPanel
    inherited CardPesquisa: TCard
      inherited pnlPesquisa: TPanel
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      inherited pnlMain: TPanel
        inherited DBGrid1: TDBGrid
          DataSource = DataSource1
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'login'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senha'
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Width = 141
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_cadastro'
              Width = 107
              Visible = True
            end>
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DMprincipal.QryUsuarios
    Left = 552
    Top = 216
  end
end
