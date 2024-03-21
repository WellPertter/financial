object DMusuarios: TDMusuarios
  OldCreateOrder = False
  Height = 275
  Width = 475
  object QryUsuarios: TFDQuery
    Connection = DMprincipal.FDConexao
    SQL.Strings = (
      'select * from usuarios')
    Left = 16
    Top = 8
    object QryUsuariosid: TIntegerField
      FieldName = 'id'
    end
    object QryUsuariosnome: TStringField
      FieldName = 'nome'
      Size = 150
    end
    object QryUsuarioslogin: TStringField
      FieldName = 'login'
      Size = 100
    end
    object QryUsuariossenha: TStringField
      FieldName = 'senha'
      Size = 100
    end
    object QryUsuariosstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object QryUsuariosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsUsuarios'
    Left = 144
    Top = 8
    object cdsUsuariosid: TIntegerField
      FieldName = 'id'
    end
    object cdsUsuariosnome: TStringField
      FieldName = 'nome'
      Size = 150
    end
    object cdsUsuarioslogin: TStringField
      FieldName = 'login'
      Size = 100
    end
    object cdsUsuariossenha: TStringField
      FieldName = 'senha'
      Size = 100
    end
    object cdsUsuariosstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
  end
  object dsUsuarios: TDataSetProvider
    DataSet = QryUsuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 81
    Top = 8
  end
end
