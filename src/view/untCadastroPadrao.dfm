object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 372
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TCardPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 372
    Align = alClient
    ActiveCard = CardCadastro
    Caption = 'pnlPrincipal'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 300
    ExplicitHeight = 200
    object CardCadastro: TCard
      Left = 1
      Top = 1
      Width = 650
      Height = 370
      Caption = 'CardCadastro'
      CardIndex = 0
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
    object CardPesquisa: TCard
      Left = 1
      Top = 1
      Width = 650
      Height = 370
      Caption = 'CardPesquisa'
      CardIndex = 1
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
end
