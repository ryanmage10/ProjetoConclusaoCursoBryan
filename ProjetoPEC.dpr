program ProjetoPEC;

uses
  Vcl.Forms,
  uCons_Base in 'uCons_Base.pas' {Cons_Base},
  uMenuPrincipal in 'uMenuPrincipal.pas' {MenuPrincipal},
  uCad_Base in 'uCad_Base.pas' {Cad_Base},
  uCons_Paises in 'uCons_Paises.pas' {Cons_Paises},
  UCons_Estados in 'UCons_Estados.pas' {Cons_Estados},
  uCons_Cidades in 'uCons_Cidades.pas' {Cons_Cidades},
  UCad_Paises in 'UCad_Paises.pas' {Cad_Paises},
  uCad_Estados in 'uCad_Estados.pas' {Cad_Estados},
  uCad_Cidades in 'uCad_Cidades.pas' {Cad_Cidades},
  uBase in 'uBase.pas',
  uCidades in 'uCidades.pas',
  uEstados in 'uEstados.pas',
  uPaises in 'uPaises.pas',
  uPessoa in 'uPessoa.pas',
  uDmConexao in 'uDmConexao.pas' {dmConexao: TDataModule},
  uDmPaises in 'uDmPaises.pas' {DmPaises: TDataModule},
  uDmEstados in 'uDmEstados.pas' {dmEstados: TDataModule},
  uDmCidades in 'uDmCidades.pas' {DmCidades: TDataModule},
  uPaisesController in 'uPaisesController.pas',
  uEstadosController in 'uEstadosController.pas',
  uCidadesController in 'uCidadesController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.