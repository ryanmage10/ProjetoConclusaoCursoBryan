unit uCondicaoPagamentoFactory;

interface
uses uCondicaoPagamento, system.SysUtils, DBClient, uCondicaoPagamentoDao, uDmConexao;
  type
  TCondicaoPagamentoFactory = class(TObject)
    private
      CondicaoPagamentoDao : TCondicaoPagamentoDao;
    protected
    public
      constructor create;
      destructor free;
      function Inserir(oCondicaoPagamento: TCondicaoPagamento):Boolean;
      function Alterar(oCondicaoPagamento: TCondicaoPagamento):Boolean;
      function Excluir(oCondicaoPagamento: TCondicaoPagamento):Boolean;
      function Recuperar(var oCondicaoPagamento: TCondicaoPagamento):Boolean;
      procedure Pesquisar(sNome: string; var Dset: TClientDataSet);
      function VerificarNome(Value: TCondicaoPagamento): boolean;
      function VerificarExclusao(Value: TCondicaoPagamento): boolean;
  end;

  var
  CondicaoPagamentoFactory: TCondicaoPagamentoFactory;
implementation

{ TCondicaoPagamentoFactory }

function TCondicaoPagamentoFactory.Alterar(oCondicaoPagamento: TCondicaoPagamento): Boolean;
begin
   oCondicaoPagamento.User_Update := 'Bryan Silva';
   oCondicaoPagamento.DataUltAlt := now;
   result := CondicaoPagamentoDao.Alterar(oCondicaoPagamento);
end;

constructor TCondicaoPagamentoFactory.create;
begin
   CondicaoPagamentoDao := TCondicaoPagamentoDao.Create;
end;

function TCondicaoPagamentoFactory.Excluir(oCondicaoPagamento: TCondicaoPagamento): Boolean;
begin
   result := CondicaoPagamentoDao.Excluir(oCondicaoPagamento);
end;

destructor TCondicaoPagamentoFactory.free;
begin
   freeandnil(CondicaoPagamentoDao);
end;

function TCondicaoPagamentoFactory.Inserir(oCondicaoPagamento: TCondicaoPagamento): Boolean;
begin
   oCondicaoPagamento.User_Insert := 'Bryan';
   oCondicaoPagamento.User_Update := 'Bryan';
   oCondicaoPagamento.DataCad := now;
   oCondicaoPagamento.DataUltAlt := now;
   result := CondicaoPagamentoDao.Inserir(oCondicaoPagamento);
end;

procedure TCondicaoPagamentoFactory.Pesquisar(sNome: string; var Dset: TClientDataSet);
begin
   CondicaoPagamentoDao.Pesquisar(sNome, Dset);
end;

function TCondicaoPagamentoFactory.Recuperar(var oCondicaoPagamento: TCondicaoPagamento): Boolean;
begin
   result := CondicaoPagamentoDao.Recuperar(oCondicaoPagamento);
end;

function TCondicaoPagamentoFactory.VerificarExclusao(Value: TCondicaoPagamento): boolean;
begin
   result :=  CondicaoPagamentoDao.VerificarExclusao(Value);
end;

function TCondicaoPagamentoFactory.VerificarNome(Value: TCondicaoPagamento): boolean;
begin
   result := CondicaoPagamentoDao.VerificarNome(Value);
end;

end.
