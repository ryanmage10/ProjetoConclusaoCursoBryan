unit uCons_Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCons_Base, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient, uCad_Cidades,uCidadesController, uCidades;

type
  TCons_Cidades = class(TCons_Base)
    ds_Cidades: TDataSource;
    dset_Cidades: TClientDataSet;
    dset_CidadesID: TIntegerField;
    dset_CidadesCIDADE: TStringField;
    dset_CidadesESTADO: TStringField;
    dset_CidadesDATA_INSERT: TDateField;
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
    CidadeControl : TCidadesController;
    Cidade : TCidades;
  public
    { Public declarations }

  end;

var
  Cons_Cidades: TCons_Cidades;

implementation

{$R *.dfm}

procedure TCons_Cidades.btn_AlterarClick(Sender: TObject);
var CadCidadeForm: TCad_Cidades;
    sErro:string;
begin
   CadCidadeForm := TCad_Cidades.Create(nil);
   Cidade.LimparDados;
   sErro := '';
   Cidade.id := Dset_Cidades.FieldByName('id').asInteger;
   if CidadeControl.Recuperar(Cidade,sErro) then
   begin
     try
        CadCidadeForm.Cidade.CopiarDados(Cidade);
        CadCidadeForm.Inclusao := False;
        CadCidadeForm.ShowModal;
        CidadeControl.Pesquisar(edt_Pesquisa.Text, Dset_cidades);
     finally
        //FreeAndNil(CadCidadeForm);
     end;
   end;
end;

procedure TCons_Cidades.btn_ExcluirClick(Sender: TObject);
var sErro: string;
begin
  inherited;
  if (dset_Cidades.Active) and (dset_Cidades.RecordCount > 0) then
  begin
     if MessageDlg('Deseja Realmente excluir esta Cidade?', mtConfirmation, [mbYes, mbNo], 0) = idYES then
     begin
      Cidade.ID := dset_CidadesID.AsInteger;
      CidadeControl.Excluir(Cidade, sErro);
      CidadeControl.Pesquisar(edt_Pesquisa.Text, Dset_cidades);
     end;
  end
  else
  begin
    raise Exception.Create('Erro ao excluir');
  end;
end;

procedure TCons_Cidades.btn_NovoClick(Sender: TObject);
var CadCidadeForm: TCad_Cidades;
begin
   CadCidadeForm := TCad_Cidades.Create(nil);
   try
      CadCidadeForm.Inclusao := True;
      CadCidadeForm.ShowModal;
      CidadeControl.Pesquisar(edt_Pesquisa.Text, Dset_cidades);
   finally
      //FreeAndNil(CadCidadeForm);
   end;
end;

procedure TCons_Cidades.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  CidadeControl.Pesquisar(edt_Pesquisa.Text, Dset_cidades);
end;

procedure TCons_Cidades.FormCreate(Sender: TObject);
begin
  inherited;
  CidadeControl := TCidadesController.Create;
  Cidade := TCidades.Criar;

  if ( not Dset_Cidades.IsEmpty ) then
    Dset_Cidades.EmptyDataSet;
  Dset_Cidades.Active := False;
  Dset_Cidades.CreateDataSet;
  Dset_Cidades.Open;
end;

procedure TCons_Cidades.FormShow(Sender: TObject);
begin
  inherited;
  CidadeControl.Pesquisar(edt_Pesquisa.Text, Dset_cidades);
end;

end.
