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
    procedure btn_SelecionarClick(Sender: TObject);
  private
    { Private declarations }
    CidadeControl : TCidadesController;

  public
    { Public declarations }
     Cidade : TCidades;
  end;

var
  Cons_Cidades: TCons_Cidades;

implementation

{$R *.dfm}

procedure TCons_Cidades.btn_AlterarClick(Sender: TObject);
var CadCidadeForm: TCad_Cidades;
begin
   if (dset_Cidades.Active) and (dset_Cidades.RecordCount > 0) then
   begin
     CadCidadeForm := TCad_Cidades.Create(nil);
     Cidade.LimparDados;
     Cidade.id := Dset_Cidades.FieldByName('id').asInteger;
     if CidadeControl.Recuperar(Cidade) then
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
   end
   else
     raise Exception.Create('Erro ao Alterar: Nenhum registro Selecionado');
end;

procedure TCons_Cidades.btn_ExcluirClick(Sender: TObject);
begin
  inherited;
  if (dset_Cidades.Active) and (dset_Cidades.RecordCount > 0) then
  begin
      Cidade.ID := dset_CidadesID.AsInteger;
      if not CidadeControl.VerificarExclusao(Cidade) then
      begin
        if MessageDlg('Deseja Realmente excluir a Cidade '+ dset_cidadesCidade.AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = idYES then
        begin
        CidadeControl.Excluir(Cidade);
        CidadeControl.Pesquisar(edt_Pesquisa.Text, Dset_cidades);
        end;
      end
      Else
        raise Exception.Create('Erro ao excluir: Há registros vinculados à esse estado');
  end
  else
  begin
    raise Exception.Create('Erro ao excluir: Nenhum registro Selecionado');
  end;
end;

procedure TCons_Cidades.btn_NovoClick(Sender: TObject);
var CadCidadeForm: TCad_Cidades;
begin
   CadCidadeForm := TCad_Cidades.Create(nil);
   try
      CadCidadeForm.Inclusao := True;
      CadCidadeForm.ShowModal;
      edt_Pesquisa.Clear;
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

procedure TCons_Cidades.btn_SelecionarClick(Sender: TObject);
begin
  inherited;
  if dset_cidades.RecordCount > 0 then
  begin
    cidade.ID := dset_cidadesid.AsInteger;
    if cidadeControl.Recuperar(cidade) then
      self.Close;
  end;
end;

procedure TCons_Cidades.FormCreate(Sender: TObject);
begin
  inherited;
  CidadeControl := TCidadesController.Create;
  Cidade := TCidades.Create;

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
