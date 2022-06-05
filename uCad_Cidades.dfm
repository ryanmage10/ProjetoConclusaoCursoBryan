inherited Cad_Cidades: TCad_Cidades
  Caption = 'Cad_Cidades'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object lbl_Cidade: TLabel [5]
      Left = 16
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_DDD: TLabel [6]
      Left = 268
      Top = 64
      Width = 24
      Height = 13
      Caption = 'DDD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_CodIbge: TLabel [7]
      Left = 349
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Cod. Ibge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Estado: TLabel [8]
      Left = 16
      Top = 110
      Width = 38
      Height = 13
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited btn_Salvar: TButton
      OnClick = btn_SalvarClick
    end
    object btn_Pesquisar: TButton
      Left = 349
      Top = 127
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = btn_PesquisarClick
    end
  end
  object edt_CodIbge: TEdit
    Left = 352
    Top = 83
    Width = 75
    Height = 21
    MaxLength = 6
    NumbersOnly = True
    TabOrder = 4
  end
  object edt_DDD: TEdit
    Left = 268
    Top = 83
    Width = 75
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object edt_Cidade: TEdit
    Left = 16
    Top = 83
    Width = 246
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 2
  end
  object edt_Estado: TEdit
    Left = 16
    Top = 129
    Width = 327
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 1
  end
end
