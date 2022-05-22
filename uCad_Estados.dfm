inherited Cad_Estados: TCad_Estados
  Caption = 'Cadastro de Estados'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object lbl_Estado: TLabel [5]
      Left = 16
      Top = 64
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
    object lbl_sigla: TLabel [6]
      Left = 268
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Sigla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_DDD: TLabel [7]
      Left = 349
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
    object lbl_Pais: TLabel [8]
      Left = 16
      Top = 110
      Width = 23
      Height = 13
      Caption = 'Pais'
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
    object edt_Estado: TEdit
      Left = 16
      Top = 83
      Width = 246
      Height = 21
      MaxLength = 50
      TabOrder = 3
    end
    object edt_Sigla: TEdit
      Left = 268
      Top = 83
      Width = 75
      Height = 21
      MaxLength = 3
      TabOrder = 4
    end
    object edt_DDD: TEdit
      Left = 349
      Top = 83
      Width = 75
      Height = 21
      MaxLength = 3
      TabOrder = 5
    end
    object edt_Pais: TEdit
      Left = 16
      Top = 129
      Width = 327
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object btn_pesquisar: TButton
      Left = 349
      Top = 127
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 7
      OnClick = btn_pesquisarClick
    end
  end
end
