inherited Cad_Caixas: TCad_Caixas
  Caption = 'Cadastro de Caixas'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object lbl_Caixa: TLabel [5]
      Left = 16
      Top = 64
      Width = 31
      Height = 13
      Caption = 'Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_moeda: TLabel [6]
      Left = 349
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Moeda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_empresa: TLabel [7]
      Left = 16
      Top = 110
      Width = 49
      Height = 13
      Caption = 'Empresa'
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
    object edt_Caixa: TEdit
      Left = 16
      Top = 83
      Width = 327
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 3
    end
    object edt_Empresa: TEdit
      Left = 16
      Top = 129
      Width = 327
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      ReadOnly = True
      TabOrder = 4
    end
    object edt_Moeda: TEdit
      Left = 349
      Top = 83
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 5
    end
    object btn_Pesquisar: TButton
      Left = 349
      Top = 129
      Width = 75
      Height = 22
      Caption = 'Pesquisar'
      TabOrder = 6
      OnClick = btn_PesquisarClick
    end
  end
end
