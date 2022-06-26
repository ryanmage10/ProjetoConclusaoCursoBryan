unit uCidadesController;

interface
uses uCidades, uDaoCidades, system.SysUtils, DBClient;
  type
  TCidadesController = class
    private
    protected
      DaoCidade : TDaoCidades;
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
   result := DaoCidade.Alterar(oCidade, sErro);
end;

constructor TCidadesController.create;
begin
   DaoCidade := TDaoCidades.Create;
end;

function TCidadesController.Excluir(oCidade: TCidades;
  var sErro: string): Boolean;
begin
   result := DaoCidade.Excluir(oCidade, sErro);
end;

destructor TCidadesController.Free;
begin
   DaoCidade.Free;
end;

function TCidadesController.Inserir(oCidade: TCidades;
  var sErro: string): Boolean;
begin
   result := DaoCidade.Inserir(oCidade, sErro);
end;

procedure TCidadesController.Pesquisar(sNome: string; var Dset: TClientDataSet);
begin
  DaoCidade.Pesquisar(sNome, Dset);
end;

function TCidadesController.Recuperar(oCidade: TCidades;
  var sErro: string): Boolean;
begin
   result := DaoCidade.Recuperar(oCidade, sErro);
end;

end.
