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
  uPessoas in 'uPessoas.pas',
  uDmConexao in 'uDmConexao.pas' {dmConexao: TDataModule},
  uPaisesController in 'uPaisesController.pas',
  uEstadosController in 'uEstadosController.pas',
  uCidadesController in 'uCidadesController.pas',
  uCad_Pessoa in 'uCad_Pessoa.pas' {Cad_Pessoa},
  uPaisesDao in 'uPaisesDao.pas',
  uEstadosDao in 'uEstadosDao.pas',
  uPaisesService in 'uPaisesService.pas',
  uPaisesFactory in 'uPaisesFactory.pas',
  uEstadosFactory in 'uEstadosFactory.pas',
  uEstadosService in 'uEstadosService.pas',
  uCidadesDao in 'uCidadesDao.pas',
  uCidadesFactory in 'uCidadesFactory.pas',
  uCidadesService in 'uCidadesService.pas',
  uEmpresas in 'uEmpresas.pas',
  uFuncionarios in 'uFuncionarios.pas',
  uClientes in 'uClientes.pas',
  uFornecedores in 'uFornecedores.pas',
  uEmpresasController in 'uEmpresasController.pas',
  uEmpresasService in 'uEmpresasService.pas',
  uEmpresasFactory in 'uEmpresasFactory.pas',
  uEmpresasDao in 'uEmpresasDao.pas',
  uCad_Empresas in 'uCad_Empresas.pas' {Cad_Empresa},
  uCons_Empresas in 'uCons_Empresas.pas' {Cons_Empresas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
