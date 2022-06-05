unit uCons_Paises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCons_Base, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient,
  uCad_Paises, uPaisesController, uPaises, uDmPaises;

type
  TCons_Paises = class(TCons_Base)
    ds_paises: TDataSource;
    Dset_Paises: TClientDataSet;
    Dset_PaisesID: TIntegerField;
    Dset_PaisesPAIS: TStringField;
    Dset_PaisesSIGLA: TStringField;
    Dset_PaisesDATA_INSERT: TDateField;
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SelecionarClick(Sender: TObject);
  private
    { Private declarations }
    PaisControl : TPaisesController;

  public
    { Public declarations }
    Pais : TPaises;
  end;

var
  Cons_Paises: TCons_Paises;

implementation

{$R *.dfm}

procedure TCons_Paises.btn_AlterarClick(Sender: TObject);
var CadPaisesForm: TCad_Paises;
    sErro:string;
begin
   CadPaisesForm := TCad_Paises.Create(nil);
   Pais.LimparDados;
   sErro := '';
   Pais.id := Dset_Paises.FieldByName('id').asInteger;
   if PaisControl.Recuperar(Pais,sErro) then
   begin
     try
        CadPaisesForm.Pais.CopiarDados(Pais);
        CadPaisesForm.Inclusao := False;
        CadPaisesForm.ShowModal;
        PaisControl.Pesquisar(edt_Pesquisa.Text, Dset_Paises);
     finally
        //FreeAndNil(CadPaisesForm );
     end;
   end;
end;

procedure TCons_Paises.btn_ExcluirClick(Sender: TObject);
var sErro: string;
begin
  inherited;
  if (dset_Paises.Active) and (dset_Paises.RecordCount > 0) then
  begin
     if MessageDlg('Deseja Realmente excluir este Pais?', mtConfirmation, [mbYes, mbNo], 0) = idYES then
     begin
      Pais.ID := dset_PaisesID.AsInteger;
      PaisControl.Excluir(Pais, sErro);
      PaisControl.Pesquisar(edt_Pesquisa.Text, Dset_Paises);
     end;
  end
  else
  begin
    raise Exception.Create('Erro ao excluir');
  end;
end;

procedure TCons_Paises.btn_NovoClick(Sender: TObject);
var CadPaisesForm: TCad_Paises;
begin
   CadPaisesForm := TCad_Paises.Create(nil);
   try
      CadPaisesForm.Inclusao := True;
      CadPaisesForm.ShowModal;
      PaisControl.Pesquisar(edt_Pesquisa.Text, Dset_Paises);
   finally
      //FreeAndNil(CadPaisesForm);
   end;
end;

procedure TCons_Paises.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  PaisControl.Pesquisar(edt_Pesquisa.Text, Dset_Paises);
end;

procedure TCons_Paises.btn_SelecionarClick(Sender: TObject);
var sErro: string;
begin
  inherited;
  if dset_paises.RecordCount > 0 then
  begin
    Pais.ID := dset_paisesid.AsInteger;
    if PaisControl.Recuperar(Pais, sErro) then
      self.Close;
  end;
end;

procedure TCons_Paises.FormCreate(Sender: TObject);
begin
  inherited;
  PaisControl := TPaisesController.Create;
  Pais := TPaises.Create;

  if ( not Dset_Paises.IsEmpty ) then
    Dset_Paises.EmptyDataSet;
  Dset_Paises.Active := False;
  Dset_Paises.CreateDataSet;
  Dset_Paises.Open;
end;

procedure TCons_Paises.FormDestroy(Sender: TObject);
begin
  inherited;
  Pais.Free;
  PaisControl.Free;
end;

procedure TCons_Paises.FormShow(Sender: TObject);
begin
  inherited;
  PaisControl.Pesquisar(edt_Pesquisa.Text, Dset_Paises);
end;

end.
