unit uEstadosController;

interface
uses uEstados, system.SysUtils, DBClient, uDaoEstados;
  type
  TEstadosController = class
    private
      DaoEstado : TDaoEstados;
    protected
    public
      constructor create;
      destructor Free;
      function Inserir(oEstado: TEstados; var sErro: string):Boolean;
      function Alterar(oEstado: TEstados; var sErro: string):Boolean;
      function Excluir(oEstado: TEstados; var sErro: string):Boolean;
      function Recuperar(oEstado: TEstados; var sErro: string):Boolean;
      procedure Pesquisar(sNome: string; var Dset: TClientDataSet);
  end;
implementation

{ TEstadosController }

function TEstadosController.Alterar(oEstado: TEstados;
  var sErro: string): Boolean;
begin
   result := DaoEstado.Alterar(oEstado, sErro);
end;

constructor TEstadosController.create;
begin
   DaoEstado := TDaoEstados.Create;
end;

function TEstadosController.Excluir(oEstado: TEstados;
  var sErro: string): Boolean;
begin
  result := DaoEstado.Excluir(oEstado, sErro);
end;

destructor TEstadosController.Free;
begin
  DaoEstado.Free;
end;

function TEstadosController.Inserir(oEstado: TEstados;
  var sErro: string): Boolean;
begin
   result := DaoEstado.Inserir(oEstado, sErro);
end;

procedure TEstadosController.Pesquisar(sNome: string; var Dset: TClientDataSet);
begin
   DaoEstado.Pesquisar(sNome, Dset);
end;

function TEstadosController.Recuperar(oEstado: TEstados;
  var sErro: string): Boolean;
begin
  result := DaoEstado.Recuperar(oEstado, sErro);
end;

end.
