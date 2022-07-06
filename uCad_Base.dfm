object Cad_Base: TCad_Base
  Left = 0
  Top = 0
  Caption = 'Cad_Base'
  ClientHeight = 205
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 205
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object lbl_ID: TLabel
      Left = 16
      Top = 8
      Width = 20
      Height = 13
      Caption = 'ID*'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_Cad: TLabel
      Left = 16
      Top = 168
      Width = 77
      Height = 13
      Caption = 'Cadastrado em:'
      Visible = False
    end
    object lbl_DataCad: TLabel
      Left = 99
      Top = 168
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Lbl_Alt: TLabel
      Left = 16
      Top = 182
      Width = 99
      Height = 13
      Caption = 'Ultima Alteracao em:'
      Visible = False
    end
    object lbl_DataAlt: TLabel
      Left = 121
      Top = 182
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object edt_id: TEdit
      Left = 16
      Top = 27
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '0'
    end
    object btn_Salvar: TButton
      Left = 268
      Top = 163
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
    end
    object btn_Cancelar: TButton
      Left = 349
      Top = 163
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btn_CancelarClick
    end
  end
end
