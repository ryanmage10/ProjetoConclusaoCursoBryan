unit uMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, uCons_paises, uCons_estados,
  uCons_Cidades;

type
  TMenuPrincipal = class(TForm)
    Panel1: TPanel;
    Menu1: TMainMenu;
    btn_Cadastros: TMenuItem;
    btn_Paises: TMenuItem;
    btn_Estados: TMenuItem;
    btn_Cidades: TMenuItem;
    procedure btn_PaisesClick(Sender: TObject);
    procedure btn_EstadosClick(Sender: TObject);
    procedure btn_CidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 var
  MenuPrincipal: TMenuPrincipal;
implementation

{$R *.dfm}

procedure TMenuPrincipal.btn_CidadesClick(Sender: TObject);
var ConsCidadeForm: TCons_Cidades;
begin
   ConsCidadeForm := TCons_Cidades.Create(nil);
   try
      ConsCidadeForm.ShowModal;
   finally
      FreeAndNil(ConsCidadeForm);
   end;
end;

procedure TMenuPrincipal.btn_EstadosClick(Sender: TObject);
var ConsEstadoForm: TCons_Estados;
begin
   ConsEstadoForm := TCons_Estados.Create(nil);
   try
      ConsEstadoForm.ShowModal;
   finally
      FreeAndNil(ConsEstadoForm);
   end;
end;

procedure TMenuPrincipal.btn_PaisesClick(Sender: TObject);
var ConsPaisForm: TCons_Paises;
begin
   ConsPaisForm := TCons_Paises.Create(nil);
   try
      ConsPaisForm.ShowModal;
   finally
      FreeAndNil(ConsPaisForm);
   end;
end;

end.