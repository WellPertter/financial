inherited formUsuarios: TformUsuarios
  Caption = '.: Cadastro de Usu'#225'rios :.'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TCardPanel
    ActiveCard = CardCadastro
    inherited CardCadastro: TCard
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
        HelpType = htKeyword
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 3
      end
      object edtLogin: TEdit
        Left = 22
        Top = 108
        Width = 312
        Height = 27
        CharCase = ecUpperCase
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
        inherited edtPesquisa: TEdit
          OnKeyPress = edtPesquisaKeyPress
        end
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      inherited pnlButtom: TPanel
        inherited btnExcluir: TButton
          Enabled = False
          OnClick = btnExcluirClick
        end
        inherited btnAlterar: TButton
          Enabled = False
        end
      end
      inherited pnlMain: TPanel
        inherited DBGrid1: TDBGrid
          DataSource = dsDbgrid
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'login'
              Title.Caption = 'Login'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 211
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Title.Caption = 'Status atual'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 235
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_cadastro'
              Title.Caption = 'Data de Cadastro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 171
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
