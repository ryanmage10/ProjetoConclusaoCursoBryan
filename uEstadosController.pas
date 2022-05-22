unit uEstadosController;

interface
uses uEstados, uDMEstados, system.SysUtils, DBClient;
  type
  TEstadosController = class
    private
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
   result := DmEstados.Alterar(oEstado, sErro);
end;

constructor TEstadosController.create;
begin
   DmEstados:= TDmEstados.Create(nil);
end;

function TEstadosController.Excluir(oEstado: TEstados;
  var sErro: string): Boolean;
begin
  result := DmEstados.Excluir(oEstado, sErro);
end;

destructor TEstadosController.Free;
begin
  freeandnil(DmEstados);
end;

function TEstadosController.Inserir(oEstado: TEstados;
  var sErro: string): Boolean;
begin
   result := DmEstados.Inserir(oEstado, sErro);
end;

procedure TEstadosController.Pesquisar(sNome: string; var Dset: TClientDataSet);
begin
   DmEstados.Pesquisar(sNome, Dset);
end;

function TEstadosController.Recuperar(oEstado: TEstados;
  var sErro: string): Boolean;
begin
  result := DmEstados.Recuperar(oEstado, sErro);
end;

end.
