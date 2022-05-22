unit uPaisesController;

interface
  uses uPaises, uDMPaises, system.SysUtils, DBClient;
  type
  TPaisesController = class(TObject)
    private
    protected
    public
      constructor create;
      destructor free;
      function Inserir(oPais: TPaises; var sErro: string):Boolean;
      function Alterar(oPais: TPaises; var sErro: string):Boolean;
      function Excluir(oPais: TPaises; var sErro: string):Boolean;
      function Recuperar(oPais: TPaises; var sErro: string):Boolean;
      procedure Pesquisar(sNome: string; var Dset: TClientDataSet);
  end;
implementation

{ TPaisesController }

function TPaisesController.Alterar(oPais: TPaises;
  var sErro: string): Boolean;
begin
   result := DmPaises.Alterar(oPais, sErro);
end;

constructor TPaisesController.create;
begin
   DmPaises := TDmPaises.Create(nil);
end;

function TPaisesController.Excluir(oPais: TPaises;
  var sErro: string): Boolean;
begin
   result := DmPaises.Excluir(oPais, sErro);
end;

destructor TPaisesController.free;
begin
   freeandnil(DmPaises);
end;

function TPaisesController.Inserir(oPais: TPaises;
  var sErro: string): Boolean;
begin
   result := DmPaises.Inserir(oPais, sErro);
end;

procedure TPaisesController.Pesquisar(sNome: string; var Dset: TClientDataSet);
begin
  DmPaises.Pesquisar(sNome, dset);
end;

function TPaisesController.Recuperar(oPais: TPaises;
  var sErro: string): Boolean;
begin
   result := DmPaises.Recuperar(oPais, sErro);
end;

end.