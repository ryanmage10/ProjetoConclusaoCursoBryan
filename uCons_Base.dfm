object Cons_Base: TCons_Base
  Left = 0
  Top = 0
  Caption = 'Consulta Base'
  ClientHeight = 371
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 371
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object GridPesquisa: TDBGrid
      Left = 8
      Top = 48
      Width = 505
      Height = 281
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel2: TPanel
      Left = 1
      Top = 336
      Width = 512
      Height = 34
      Align = alBottom
      Color = clActiveBorder
      ParentBackground = False
      TabOrder = 1
      object btn_Novo: TButton
        Left = 181
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 0
      end
      object btn_Excluir: TButton
        Left = 343
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 1
      end
      object btn_Sair: TButton
        Left = 424
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 2
        OnClick = btn_SairClick
      end
      object btn_Selecionar: TButton
        Left = 98
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Selecionar'
        TabOrder = 3
      end
    end
    object btn_Alterar: TButton
      Left = 263
      Top = 342
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 2
    end
    object Edt_Pesquisa: TEdit
      Left = 8
      Top = 16
      Width = 421
      Height = 21
      MaxLength = 50
      TabOrder = 3
    end
    object btn_Pesquisar: TButton
      Left = 435
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
    end
  end
end
