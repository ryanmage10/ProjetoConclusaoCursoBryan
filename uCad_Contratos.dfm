inherited Cad_Contratos: TCad_Contratos
  Caption = 'Cadastro de Contratos'
  ClientHeight = 265
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitHeight = 304
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 265
    ExplicitHeight = 265
    inherited lbl_Cad: TLabel
      Top = 231
      ExplicitTop = 231
    end
    inherited lbl_DataCad: TLabel
      Top = 231
      ExplicitTop = 231
    end
    inherited Lbl_Alt: TLabel
      Top = 245
      ExplicitTop = 245
    end
    inherited lbl_DataAlt: TLabel
      Top = 245
      ExplicitTop = 245
    end
    object lbl_CodDoc: TLabel [5]
      Left = 16
      Top = 67
      Width = 51
      Height = 13
      Caption = 'C'#243'd. Doc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Descricao: TLabel [6]
      Left = 90
      Top = 67
      Width = 55
      Height = 13
      Caption = 'Descricao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Moeda: TLabel [7]
      Left = 349
      Top = 67
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
    object lbl_Cliente_Fornecedor: TLabel [8]
      Left = 16
      Top = 116
      Width = 39
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Empresa: TLabel [9]
      Left = 16
      Top = 165
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
    object lbl_Valor: TLabel [10]
      Left = 349
      Top = 116
      Width = 29
      Height = 13
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited btn_Salvar: TButton
      Top = 226
      OnClick = btn_SalvarClick
      ExplicitTop = 226
    end
    inherited btn_Cancelar: TButton
      Top = 226
      ExplicitTop = 226
    end
    object edt_CodDoc: TEdit
      Left = 16
      Top = 86
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 3
    end
    object edt_Descricao: TEdit
      Left = 87
      Top = 86
      Width = 256
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 4
    end
    object edt_Moeda: TEdit
      Left = 349
      Top = 85
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 5
    end
    object Edt_Cliente_Fornecedor: TEdit
      Left = 16
      Top = 135
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      ReadOnly = True
      TabOrder = 6
    end
    object edt_Empresa: TEdit
      Left = 16
      Top = 184
      Width = 327
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      ReadOnly = True
      TabOrder = 7
    end
    object btn_CliFor: TButton
      Left = 268
      Top = 133
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 8
      OnClick = btn_CliForClick
    end
    object btn_Pesquisar: TButton
      Left = 349
      Top = 182
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 9
      OnClick = btn_PesquisarClick
    end
    object edt_Valor: TMaskEdit
      Left = 349
      Top = 135
      Width = 75
      Height = 21
      AutoSelect = False
      BiDiMode = bdLeftToRight
      EditMask = '999999,99;1;'
      MaxLength = 9
      ParentBiDiMode = False
      TabOrder = 10
      Text = '      ,  '
    end
    object rg_Tipo: TRadioGroup
      Left = 312
      Top = 8
      Width = 112
      Height = 50
      Caption = 'Tipo de Contrato'
      ItemIndex = 0
      Items.Strings = (
        'A Receber'
        'A Pagar')
      TabOrder = 11
      OnClick = rg_TipoClick
    end
  end
end
