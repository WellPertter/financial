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
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 8
  end
  object dsUsuarios: TDataSetProvider
    Left = 81
    Top = 8
  end
end
