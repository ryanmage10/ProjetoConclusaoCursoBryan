unit uCidadesController;

interface
uses uCidades, uDMCidades, system.SysUtils, DBClient;
  type
  TCidadesController = class
    private
    protected
    public
      constructor create;
      destructor Free;
      function Inserir(oCidade: TCidades; var sErro: string):Boolean;
      function Alterar(oCidade: TCidades; var sErro: string):Boolean;
      function Excluir(oCidade: TCidades; var sErro: string):Boolean;
      function Recuperar(oCidade: TCidades; var sErro: string):Boolean;
      procedure Pesquisar(sNome: string; var Dset: TClientDataSet);

  end;
implementation

{ TCidadesController }

function TCidadesController.Alterar(oCidade: TCidades;
  var sErro: string): Boolean;
begin
   result := DmCidades.Alterar(oCidade, sErro);
end;

constructor TCidadesController.create;
begin
  DmCidades:= TDmCidades.Create(nil);
end;

function TCidadesController.Excluir(oCidade: TCidades;
  var sErro: string): Boolean;
begin
   result := DmCidades.Excluir(oCidade, sErro);
end;

destructor TCidadesController.Free;
begin
   freeandnil(DmCidades);
end;

function TCidadesController.Inserir(oCidade: TCidades;
  var sErro: string): Boolean;
begin
   result := DmCidades.Inserir(oCidade, sErro);
end;

procedure TCidadesController.Pesquisar(sNome: string; var Dset: TClientDataSet);
begin
   DmCidades.Pesquisar(sNome, Dset);
end;

function TCidadesController.Recuperar(oCidade: TCidades;
  var sErro: string): Boolean;
begin
   result := DmCidades.Recuperar(oCidade, sErro);
end;

end.
