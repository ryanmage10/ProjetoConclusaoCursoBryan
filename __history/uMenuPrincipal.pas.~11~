unit uMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, uCons_paises, uCons_estados,
  uCons_Cidades, uCons_Empresas, uCons_Funcionarios, uCons_Clientes,
  uCons_Fornecedores, uCons_Caixas, uCons_Contratos;

type
  TMenuPrincipal = class(TForm)
    Panel1: TPanel;
    Menu1: TMainMenu;
    btn_Cadastros: TMenuItem;
    btn_Paises: TMenuItem;
    btn_Estados: TMenuItem;
    btn_Cidades: TMenuItem;
    btn_Empresa: TMenuItem;
    Btn_Funcionarios: TMenuItem;
    Btn_Clientes: TMenuItem;
    btn_Fornecedores: TMenuItem;
    btn_Caixas: TMenuItem;
    btn_Contratos: TMenuItem;
    procedure btn_PaisesClick(Sender: TObject);
    procedure btn_EstadosClick(Sender: TObject);
    procedure btn_CidadesClick(Sender: TObject);
    procedure btn_EmpresaClick(Sender: TObject);
    procedure Btn_FuncionariosClick(Sender: TObject);
    procedure Btn_ClientesClick(Sender: TObject);
    procedure btn_FornecedoresClick(Sender: TObject);
    procedure btn_CaixasClick(Sender: TObject);
    procedure btn_ContratosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 var
  MenuPrincipal: TMenuPrincipal;
implementation

{$R *.dfm}

procedure TMenuPrincipal.btn_CaixasClick(Sender: TObject);
var ConsCaixaForm: TCons_Caixas;
begin
   ConsCaixaForm := TCons_Caixas.Create(nil);
   try
      ConsCaixaForm.ShowModal;
   finally
      FreeAndNil(ConsCaixaForm);
   end;
end;

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

procedure TMenuPrincipal.Btn_ClientesClick(Sender: TObject);
var ConsClienteForm: TCons_Clientes;
begin
   ConsClienteForm := TCons_Clientes.Create(nil);
   try
      ConsClienteForm.ShowModal;
   finally
      FreeAndNil(ConsClienteForm);
   end;
end;

procedure TMenuPrincipal.btn_ContratosClick(Sender: TObject);
var ConsContratoForm: TCons_Contratos;
begin
   ConsContratoForm := TCons_Contratos.Create(nil);
   try
      ConsContratoForm.ShowModal;
   finally
      FreeAndNil(ConsContratoForm);
   end;
end;

procedure TMenuPrincipal.btn_EmpresaClick(Sender: TObject);
var ConsEmpresaForm: TCons_Empresas;
begin
   ConsEmpresaForm := TCons_Empresas.Create(nil);
   try
      ConsEmpresaForm.ShowModal;
   finally
      FreeAndNil(ConsEmpresaForm);
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

procedure TMenuPrincipal.btn_FornecedoresClick(Sender: TObject);
var ConsFornecedorForm: TCons_Fornecedores;
begin
   ConsFornecedorForm := TCons_Fornecedores.Create(nil);
   try
      ConsFornecedorForm.ShowModal;
   finally
      FreeAndNil(ConsFornecedorForm);
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

procedure TMenuPrincipal.Btn_FuncionariosClick(Sender: TObject);
var ConsFuncionarioForm: TCons_Funcionarios;
begin
   ConsFuncionarioForm := TCons_Funcionarios.Create(nil);
   try
      ConsFuncionarioForm.ShowModal;
   finally
      FreeAndNil(ConsFuncionarioForm);
   end;
end;

end.
