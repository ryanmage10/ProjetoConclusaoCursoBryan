inherited Cad_Empresa: TCad_Empresa
  Caption = 'Cadastro Empresas'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 542
    ExplicitHeight = 382
    inherited lbl_CPFCNPJ: TLabel
      Width = 27
      Caption = 'CNPJ'
      ExplicitWidth = 27
    end
    inherited lbl_RGIE: TLabel
      Width = 103
      Caption = 'Inscri'#231#227'o Estadual'
      ExplicitWidth = 103
    end
    inherited lbl_DataNasc: TLabel
      Width = 101
      Caption = 'Data de Funda'#231#227'o'
      Font.Color = clBlack
      ExplicitWidth = 101
    end
    inherited rg_Sexo: TRadioGroup
      Visible = False
    end
    inherited btn_Salvar: TButton
      OnClick = btn_SalvarClick
    end
    inherited edt_Nome: TEdit
      CharCase = ecUpperCase
    end
    inherited edt_Cidade: TEdit
      CharCase = ecUpperCase
    end
    inherited edt_Logradouro: TEdit
      CharCase = ecUpperCase
    end
    inherited edt_Bairro: TEdit
      CharCase = ecUpperCase
    end
    inherited Rg_TipoPessoa: TRadioGroup
      Visible = False
    end
    inherited edt_CPFCNPJ: TMaskEdit
      Width = 143
      CharCase = ecUpperCase
      EditMask = '00\.000\.000/0000-00;1;_'
      MaxLength = 18
      Text = '  .   .   /    -  '
      ExplicitWidth = 143
    end
    inherited edt_RGIE: TMaskEdit
      CharCase = ecUpperCase
      EditMask = ''
      MaxLength = 15
      Text = ''
    end
    inherited edt_numero: TEdit
      CharCase = ecUpperCase
    end
    inherited edt_CEP: TEdit
      CharCase = ecUpperCase
    end
    inherited edt_Complemento: TEdit
      CharCase = ecUpperCase
    end
    inherited btn_Pesquisar: TButton
      OnClick = btn_PesquisarClick
    end
    inherited edt_UF: TEdit
      CharCase = ecUpperCase
    end
    inherited edt_Razao_Social: TEdit
      CharCase = ecUpperCase
    end
  end
end
