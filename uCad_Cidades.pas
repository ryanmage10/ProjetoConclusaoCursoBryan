unit uCad_Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCad_Base, Vcl.StdCtrls, Vcl.ExtCtrls,
   uCons_Estados, uCidades, uCidadesController;

type
  TCad_Cidades = class(TCad_Base)
    edt_CodIbge: TEdit;
    edt_DDD: TEdit;
    edt_Cidade: TEdit;
    edt_Estado: TEdit;
    btn_Pesquisar: TButton;
    lbl_Cidade: TLabel;
    lbl_DDD: TLabel;
    lbl_CodIbge: TLabel;
    lbl_Estado: TLabel;
    procedure btn_PesquisarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure popularInterface;
    procedure PopularObjeto;
    function ValidarDados: boolean;
  public
    { Public declarations }
    CidadeControl : TCidadesController;
    Cidade : TCidades;
  end;

implementation

{$R *.dfm}

procedure TCad_Cidades.btn_PesquisarClick(Sender: TObject);
var ConsEstadoForm: TCons_Estados;
begin
   ConsEstadoForm := TCons_Estados.Create(nil);
   try
      ConsEstadoForm.Selecao := true;
      ConsEstadoForm.ShowModal;
      Cidade.Estado := (ConsEstadoForm.Estado.clone);
      edt_Estado.text := Cidade.Estado.Nome;
   finally
      FreeAndNil(ConsEstadoForm);
   end;
end;

procedure TCad_Cidades.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  if ValidarDados then
  begin
    popularObjeto;

     if not CidadeControl.VerificarNome(Cidade) then
     begin
        if Inclusao then
          CidadeControl.Inserir(Cidade)
        else
          CidadeControl.Alterar(Cidade);

        self.Close;
     end
     else
       raise Exception.Create('Já Existe uma Cidade cadastrado com esse nome');
  end;
end;

procedure TCad_Cidades.FormCreate(Sender: TObject);
begin
  inherited;
  Cidade := TCidades.Create;
  CidadeControl := TCidadesController.Create;
end;

procedure TCad_Cidades.FormDestroy(Sender: TObject);
begin
  inherited;
  Cidade.Free;
  CidadeControl.Free;
end;

procedure TCad_Cidades.FormShow(Sender: TObject);
begin
  inherited;
  if not inclusao then
    popularInterface;
end;

procedure TCad_Cidades.popularInterface;
begin
  edt_id.text := inttostr(Cidade.ID);
  edt_Cidade.text := Cidade.Nome;
  edt_DDD.text := Cidade.DDD;
  edt_codIbge.text := Cidade.CodIbge;
  edt_estado.text := Cidade.Estado.Nome;

  lbl_Cad.Visible := True;
  lbl_DataCad.Visible := True;
  lbl_DataCad.Caption := Cidade.User_Insert + '-' + DatetoStr(Cidade.DataCad);

  lbl_DataAlt.Caption := Cidade.User_Update + '-' + DatetoStr(Cidade.DataUltAlt);
  Lbl_Alt.Visible := True;
  lbl_DataAlt.Visible := True;
end;

procedure TCad_Cidades.PopularObjeto;
begin
  Cidade.ID := strtoint(edt_id.text);
  Cidade.Nome := edt_Cidade.text;
  Cidade.DDD :=  edt_DDD.text;
  Cidade.CodIbge := edt_codIbge.text;
end;

function TCad_Cidades.ValidarDados: boolean;
begin
  result := False;
  if not (length(edt_Cidade.Text) > 0) then
  begin
    ShowMessage('Insira o nome do Cidade');
    edt_Cidade.setFocus;
    exit;
  end;

  if not (length(edt_DDD.Text) > 0) then
  begin
    ShowMessage('Insira o DDD da cidade');
    edt_DDD.setFocus;
    exit;
  end;

  if not (length(edt_Estado.Text) > 0) then
  begin
    ShowMessage('Insira o nome do Estado');
    btn_Pesquisar.setFocus;
    exit;
  end;

  result := True;
end;

end.
