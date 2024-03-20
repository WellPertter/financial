object DMprincipal: TDMprincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 299
  Width = 521
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=F:\Jos'#233' Arthur\GIT\Financial\src\db\Financial'
      'DriverID=SQLite')
    Connected = True
    Left = 32
    Top = 24
  end
end
