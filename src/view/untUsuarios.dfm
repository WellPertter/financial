inherited formUsuarios: TformUsuarios
  Caption = '.: Cadastro de Usu'#225'rios :.'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TCardPanel
    inherited CardCadastro: TCard
      ExplicitLeft = -31
      object Label2: TLabel [0]
        Left = 22
        Top = 22
        Width = 42
        Height = 19
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [1]
        Left = 22
        Top = 145
        Width = 43
        Height = 19
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [2]
        Left = 22
        Top = 83
        Width = 39
        Height = 19
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel [3]
        Left = 22
        Top = 201
        Width = 43
        Height = 19
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtNome: TEdit
        Left = 22
        Top = 47
        Width = 312
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtSenha: TEdit
        Left = 22
        Top = 168
        Width = 211
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtLogin: TEdit
        Left = 22
        Top = 108
        Width = 312
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object TSstatus: TToggleSwitch
        Left = 22
        Top = 226
        Width = 90
        Height = 20
        StateCaptions.CaptionOn = 'Ativo'
        StateCaptions.CaptionOff = 'Inativo'
        TabOrder = 4
      end
    end
    inherited CardPesquisa: TCard
      inherited pnlPesquisa: TPanel
        ExplicitLeft = -1
        ExplicitTop = -6
        inherited edtPesquisa: TEdit
          OnKeyPress = edtPesquisaKeyPress
        end
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
          ExplicitTop = -6
        end
      end
      inherited pnlButtom: TPanel
        inherited btnExcluir: TButton
          ExplicitLeft = 209
          ExplicitTop = 6
        end
      end
      inherited pnlMain: TPanel
        inherited DBGrid1: TDBGrid
          DataSource = dsDbgrid
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'login'
              Title.Caption = 'Login'
              Width = 211
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Title.Caption = 'Status atual'
              Width = 235
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_cadastro'
              Title.Caption = 'Data de Cadastro'
              Width = 171
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id'
              Width = 20
              Visible = True
            end>
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 728
    Top = 40
  end
  object dsDbgrid: TDataSource
    DataSet = DMusuarios.cdsUsuarios
    Left = 728
    Top = 104
  end
end
