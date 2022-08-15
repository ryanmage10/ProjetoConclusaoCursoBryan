unit uCad_CondicaoPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCad_Base, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Datasnap.DBClient;

type
  TCad_CondicaoPagamento = class(TCad_Base)
    edt_descricao: TEdit;
    lbl_Descricao: TLabel;
    lbl_juros: TLabel;
    lbl_multa: TLabel;
    lbl_desconto: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    lbl_Percentual: TLabel;
    edt_percentual: TEdit;
    lbl_Dias: TLabel;
    edt_dias: TEdit;
    edt_Juros: TMaskEdit;
    edt_Multa: TMaskEdit;
    edt_desconto: TMaskEdit;
    edt_adicionar: TButton;
    edt_alterar: TButton;
    edt_excluir: TButton;
    ds_parcelas: TDataSource;
    dset_parcelas: TClientDataSet;
    dset_parcelasNumero: TIntegerField;
    dset_parcelasPercentual: TCurrencyField;
    dset_parcelasdias: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_CondicaoPagamento: TCad_CondicaoPagamento;

implementation

{$R *.dfm}

end.
