unit uPaisesController;

interface
  uses uPaises, uDMPaises, system.SysUtils, DBClient, uDaoPaises;
  type
  TPaisesController = class(TObject)
    private
      DaoPais : TDaoPaises;
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
   result := DaoPais.Alterar(oPais, sErro);
end;

constructor TPaisesController.create;
begin
   //DmPaises := TDmPaises.Create(nil);
   DaoPais := TDaoPaises.Create;
end;

function TPaisesController.Excluir(oPais: TPaises;
  var sErro: string): Boolean;
begin
   result := DaoPais.Excluir(oPais, sErro);
end;

destructor TPaisesController.free;
begin
   //freeandnil(DmPaises);
end;

function TPaisesController.Inserir(oPais: TPaises;
  var sErro: string): Boolean;
begin
   result := DaoPais.Inserir(oPais, sErro);
end;

procedure TPaisesController.Pesquisar(sNome: string; var Dset: TClientDataSet);
begin
  DaoPais.Pesquisar(sNome, dset);
end;

function TPaisesController.Recuperar(oPais: TPaises;
  var sErro: string): Boolean;
begin
   result := DaoPais.Recuperar(oPais, sErro);
end;

end.
