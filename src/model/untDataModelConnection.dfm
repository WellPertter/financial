object DMprincipal: TDMprincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 299
  Width = 521
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=F:\Jos'#233' Arthur\GIT\Financial\src\db\Financial'
      'DriverID=SQLite')
    Left = 32
    Top = 24
  end
  object QryUsuarios: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from usuarios')
    Left = 32
    Top = 80
  end
end
