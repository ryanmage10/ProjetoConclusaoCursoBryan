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
  uCons_Empresas in 'uCons_Empresas.pas' {Cons_Empresas},
  uFuncionariosController in 'uFuncionariosController.pas',
  uFuncionariosService in 'uFuncionariosService.pas',
  uFuncionariosFactory in 'uFuncionariosFactory.pas',
  uFuncionariosDao in 'uFuncionariosDao.pas',
  uCad_Funcionarios in 'uCad_Funcionarios.pas' {Cad_Funcionarios},
  uCons_Funcionarios in 'uCons_Funcionarios.pas' {Cons_Funcionarios},
  uClientesController in 'uClientesController.pas',
  uClientesService in 'uClientesService.pas',
  uClientesFactory in 'uClientesFactory.pas',
  uClientesDao in 'uClientesDao.pas',
  uCad_Clientes in 'uCad_Clientes.pas' {Cad_Clientes},
  uCons_Clientes in 'uCons_Clientes.pas' {Cons_Clientes},
  uFornecedoresController in 'uFornecedoresController.pas',
  uFornecedoresService in 'uFornecedoresService.pas',
  uFornecedoresFactory in 'uFornecedoresFactory.pas',
  uFornecedoresDao in 'uFornecedoresDao.pas',
  uCad_Fornecedores in 'uCad_Fornecedores.pas' {Cad_Fornecedores},
  uCons_Fornecedores in 'uCons_Fornecedores.pas' {Cons_Fornecedores},
  uCaixas in 'uCaixas.pas',
  uCaixasController in 'uCaixasController.pas',
  uCaixasService in 'uCaixasService.pas',
  uCaixasFactory in 'uCaixasFactory.pas',
  uCaixasDao in 'uCaixasDao.pas',
  uCad_Caixas in 'uCad_Caixas.pas' {Cad_Caixas},
  uCons_Caixas in 'uCons_Caixas.pas' {Cons_Caixas},
  uContratos in 'uContratos.pas',
  uContratosController in 'uContratosController.pas',
  uContratosService in 'uContratosService.pas',
  uContratosFactory in 'uContratosFactory.pas',
  uContratosDao in 'uContratosDao.pas',
  uCad_Contratos in 'uCad_Contratos.pas' {Cad_Contratos},
  uCons_Contratos in 'uCons_Contratos.pas' {Cons_Contratos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TCad_Contratos, Cad_Contratos);
  Application.CreateForm(TCons_Contratos, Cons_Contratos);
  Application.Run;
end.
