object formMainPrincipal: TformMainPrincipal
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
  object StatusBar: TStatusBar
    Left = 0
    Top = 467
    Width = 873
    Height = 19
    Panels = <
      item
        Width = 322
      end
      item
        Width = 100
      end>
    ExplicitWidth = 100
  end
  object MainMenu1: TMainMenu
    Left = 33
    Top = 16
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object CadastroPadro1: TMenuItem
        Caption = 'Cadastro Usu'#225'rios'
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
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 432
    Top = 256
  end
end
