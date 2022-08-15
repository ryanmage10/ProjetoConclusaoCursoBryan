inherited Cad_CondicaoPagamento: TCad_CondicaoPagamento
  Caption = 'Cadastro de Condi'#231#227'o de Pagamento'
  ClientHeight = 426
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 426
    ExplicitHeight = 426
    inherited lbl_Cad: TLabel
      Top = 390
      ExplicitTop = 390
    end
    inherited lbl_DataCad: TLabel
      Top = 390
      ExplicitTop = 390
    end
    inherited Lbl_Alt: TLabel
      Top = 404
      ExplicitTop = 404
    end
    inherited lbl_DataAlt: TLabel
      Top = 404
      ExplicitTop = 404
    end
    object lbl_Descricao: TLabel [5]
      Left = 16
      Top = 57
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object lbl_juros: TLabel [6]
      Left = 16
      Top = 107
      Width = 26
      Height = 13
      Caption = 'Juros'
    end
    object lbl_multa: TLabel [7]
      Left = 168
      Top = 107
      Width = 26
      Height = 13
      Caption = 'Multa'
    end
    object lbl_desconto: TLabel [8]
      Left = 303
      Top = 107
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    inherited btn_Salvar: TButton
      Top = 385
      ExplicitTop = 385
    end
    inherited btn_Cancelar: TButton
      Top = 385
      ExplicitTop = 385
    end
    object edt_descricao: TEdit
      Left = 16
      Top = 76
      Width = 408
      Height = 21
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 14
      Top = 153
      Width = 410
      Height = 231
      Caption = 'Panel2'
      TabOrder = 4
      object lbl_Percentual: TLabel
        Left = 4
        Top = 5
        Width = 51
        Height = 13
        Caption = 'Percentual'
      end
      object lbl_Dias: TLabel
        Left = 97
        Top = 5
        Width = 20
        Height = 13
        Caption = 'Dias'
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 51
        Width = 397
        Height = 175
        DataSource = ds_parcelas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Percentual'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dias'
            Title.Caption = 'Dias'
            Width = 99
            Visible = True
          end>
      end
      object edt_percentual: TEdit
        Left = 4
        Top = 24
        Width = 87
        Height = 21
        TabOrder = 1
      end
      object edt_dias: TEdit
        Left = 97
        Top = 24
        Width = 72
        Height = 21
        TabOrder = 2
      end
      object edt_adicionar: TButton
        Left = 175
        Top = 22
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 3
      end
      object edt_alterar: TButton
        Left = 256
        Top = 22
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 4
      end
      object edt_excluir: TButton
        Left = 335
        Top = 22
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 5
      end
    end
    object edt_Juros: TMaskEdit
      Left = 16
      Top = 126
      Width = 128
      Height = 21
      EditMask = '9999,99;1;_'
      MaxLength = 7
      TabOrder = 5
      Text = '    ,  '
    end
    object edt_Multa: TMaskEdit
      Left = 168
      Top = 126
      Width = 120
      Height = 21
      EditMask = '9999,99'
      MaxLength = 7
      TabOrder = 6
      Text = '    ,  '
    end
    object edt_desconto: TMaskEdit
      Left = 303
      Top = 126
      Width = 120
      Height = 21
      EditMask = '9999,99'
      MaxLength = 7
      TabOrder = 7
      Text = '    ,  '
    end
  end
  object ds_parcelas: TDataSource
    DataSet = dset_parcelas
    Left = 198
    Top = 297
  end
  object dset_parcelas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 270
    Top = 297
    object dset_parcelasNumero: TIntegerField
      FieldName = 'Numero'
    end
    object dset_parcelasPercentual: TCurrencyField
      FieldName = 'Percentual'
    end
    object dset_parcelasdias: TIntegerField
      FieldName = 'dias'
    end
  end
end
