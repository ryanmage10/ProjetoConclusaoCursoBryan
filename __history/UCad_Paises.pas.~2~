unit UCad_Paises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCad_Base, Vcl.StdCtrls, Vcl.ExtCtrls, uPaises, uPaisesController;

type
  TCad_Paises = class(TCad_Base)
    lbl_Pais: TLabel;
    lbl_sigla: TLabel;
    lbl_DDI: TLabel;
    edt_Pais: TEdit;
    edt_Sigla: TEdit;
    edt_DDI: TEdit;
    procedure btn_SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    PaisesControl : TPaisesController;
    function validarDados: boolean;
    procedure popularInterface;
    procedure PopularObjeto;
  public
    { Public declarations }
    Pais : TPaises;
  end;

implementation

{$R *.dfm}

procedure TCad_Paises.btn_SalvarClick(Sender: TObject);
var sErro: string;
begin
  inherited;
  if validarDados then
  begin
     popularObjeto;
     try
       if Inclusao then
          PaisesControl.Inserir(Pais, sErro)
       else
          PaisesControl.Alterar(Pais, sErro);
     except on E:Exception do
        showmessage(sErro);
     end;
     Self.Close;
  end;
end;

procedure TCad_Paises.FormCreate(Sender: TObject);
begin
  inherited;
  Pais := TPaises.Criar;
  PaisesControl := TPaisesController.Create;
end;

procedure TCad_Paises.FormDestroy(Sender: TObject);
begin
  inherited;
  Pais.Free;
  PaisesControl.Free;
end;

procedure TCad_Paises.FormShow(Sender: TObject);
begin
  inherited;
  if not inclusao then
     popularInterface;
end;

procedure TCad_Paises.popularInterface;
begin
    edt_id.text := inttostr(Pais.ID);
    edt_pais.text := Pais.Nome;
    edt_sigla.text := Pais.sigla;
    edt_DDI.text := Pais.DDI;
end;

procedure TCad_Paises.PopularObjeto;
begin
   Pais.ID := strtoint(edt_id.text);
   Pais.Nome := edt_pais.text;
   Pais.sigla := edt_sigla.text;
   Pais.DDI :=  edt_DDI.text;
end;

function TCad_Paises.validarDados: boolean;
begin
  result := False;
  if not (length(edt_pais.Text) > 0) then
  begin
    ShowMessage('Insira o nome do Pais');
    edt_Pais.setFocus;
    exit;
  end;

  if not (length(edt_sigla.Text) > 0) then
  begin
    ShowMessage('Insira a sigla do pais');
    edt_sigla.setFocus;
    exit;
  end;
  result := True;
end;

end.
