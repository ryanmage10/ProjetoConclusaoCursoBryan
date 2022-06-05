object MenuPrincipal: TMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
  end
  object Menu1: TMainMenu
    Left = 168
    Top = 16
    object btn_Cadastros: TMenuItem
      Caption = 'Cadastros'
      object btn_Paises: TMenuItem
        Caption = 'Paises'
        OnClick = btn_PaisesClick
      end
      object btn_Estados: TMenuItem
        Caption = 'Estados'
        OnClick = btn_EstadosClick
      end
      object btn_Cidades: TMenuItem
        Caption = 'Cidades'
        OnClick = btn_CidadesClick
      end
    end
  end
end
