object frmMainPrincipal: TfrmMainPrincipal
  Left = 0
  Top = 0
  Caption = '.: Menu Principal :.'
  ClientHeight = 486
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 33
    Top = 16
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object CadastroPadro1: TMenuItem
        Caption = 'Cadastro Padr'#227'o'
        OnClick = CadastroPadro1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
    end
  end
end
