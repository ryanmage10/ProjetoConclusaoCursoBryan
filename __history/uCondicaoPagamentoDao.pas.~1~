unit uCondicaoPagamentoDao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, uDmConexao, uCondicaoPagamento, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCondicaoPagamentoDao = class(TObject)

  private
    { Private declarations }
    constructor Create;
    destructor free;
    procedure FieldToObj(var oCondicaoPagamento: TCondicaoPagamento; Qry: TFDQuery);
    procedure ObjToField(var oCondicaoPagamento: TCondicaoPagamento; Qry: TFDQuery);
  public
    { Public declarations }
    procedure Pesquisar(Value: string; var dset: TClientDataSet);
    function Recuperar(Var oCondicaoPagamento: TCondicaoPagamento): boolean;
    function inserir(oCondicaoPagamento: TCondicaoPagamento): boolean;
    function Alterar(oCondicaoPagamento: TCondicaoPagamento): boolean;
    function Excluir(oCondicaoPagamento: TCondicaoPagamento): boolean;
    function VerificarNome(Value: TCondicaoPagamento): boolean;
    function VerificarExclusao(Value: TCondicaoPagamento): boolean;

  end;

var
  CondicaoPagamentoDao: TCondicaoPagamentoDao;

implementation

function TCondicaoPagamentoDao.Alterar(oCondicaoPagamento: TCondicaoPagamento): boolean;
begin
  result := False;
  with DmConexao.Qry, oCondicaoPagamento do
  begin
    Sql.Clear;
    sql.add('UPDATE FORMA_PAGAMENTO SET  DESCRICAO = :DESCRICAO,');
    Sql.Add('USER_INSERT = :USER_INSERT, USER_UPDATE = :USER_UPDATE, DATE_INSERT = :DATE_INSERT, DATE_UPDATE = :DATE_UPDATE');
    Sql.Add(' WHERE ID = :ID');

    paramByName('id').AsInteger := oCondicaoPagamento.Id;
    ObjToField(oCondicaoPagamento, DmConexao.Qry);
    ExecSql();
    result := true;
    close;
  end;
end;

constructor TCondicaoPagamentoDao.Create;
begin
   //
end;

function TCondicaoPagamentoDao.Excluir(oCondicaoPagamento: TCondicaoPagamento): boolean;
begin
    result := False;
    with DmConexao.Qry do
    begin
      Sql.Clear;
      Sql.Add('DELETE FROM FORMA_PAGAMENTO WHERE ID = :ID');
      paramByName('ID').AsInteger := oCondicaoPagamento.ID;
      ExecSql();
      result := true;
      close;
    end;
end;

procedure TCondicaoPagamentoDao.FieldToObj(var oCondicaoPagamento: TCondicaoPagamento; Qry: TFDQuery);
begin
  with oCondicaoPagamento, Qry do
  begin
    ID := FieldByName('ID').AsInteger;
    Descricao := FieldByName('DESCRICAO').AsString;
    DataCad := FieldByName('date_insert').AsDatetime;
    DataUltAlt := FieldByName('date_update').AsDatetime;
    user_insert := FieldByName('User_Insert').AsString;
    user_update := FieldByName('User_Update').AsString;
  end;
end;

destructor TCondicaoPagamentoDao.free;
begin
  //
end;

function TCondicaoPagamentoDao.inserir(oCondicaoPagamento: TCondicaoPagamento): boolean;
begin
  result := False;
  with DmConexao.Qry, oCondicaoPagamento do
  begin
      Sql.Clear;
      sql.add('INSERT INTO FORMA_PAGAMENTO ( DESCRICAO, USER_INSERT, USER_UPDATE, DATE_INSERT, DATE_UPDATE)');
      Sql.add(' VALUES (:DESCRICAO, :USER_INSERT, :USER_UPDATE, :DATE_INSERT, :DATE_UPDATE)');

      ObjToField(oCondicaoPagamento, DmConexao.Qry);
      ExecSql();
      result := true;
      Close;
  end;
end;

procedure TCondicaoPagamentoDao.ObjToField(var oCondicaoPagamento: TCondicaoPagamento; Qry: TFDQuery);
begin
  with oCondicaoPagamento, Qry do
  begin
    paramByName('DESCRICAO').AsString := Descricao;
    paramByName('date_insert').AsDatetime := DataCad;
    paramByName('date_update').AsDatetime := DataUltAlt;
    paramByName('User_Insert').AsString := user_insert;
    paramByName('User_Update').AsString := user_update;
  end;
end;

procedure TCondicaoPagamentoDao.Pesquisar(Value: string; Var dset: TClientDataSet);
begin
  with DmConexao.Qry do
  begin
    dset.EmptyDataSet;
    Sql.Clear;

      if Value = '' then
      begin
        Sql.Add('SELECT ID, DESCRICAO, DATE_INSERT FROM FORMA_PAGAMENTO');
      end
      else
      begin
        Sql.Add('SELECT ID, DESCRICAO, DATE_INSERT FROM FORMA_PAGAMENTO WHERE DESCRICAO LIKE :NOME');
        paramByName('NOME').AsString := '%' + Value + '%';
      end;
      open;
      while not eof do
      begin
        dset.Append;
        dset.FieldByName('id').AsInteger := FieldByName('id').AsInteger;
        dset.FieldByName('DESCRICAO').AsString := FieldByName('DESCRICAO').AsString;
        dset.FieldByName('DATA_INSERT').AsDateTime := FieldByName('DATE_INSERT').AsDateTime;
        dset.Post;
        next;
      end;

      close;
  end;
end;

function TCondicaoPagamentoDao.Recuperar(var oCondicaoPagamento: TCondicaoPagamento): boolean;
begin
    result := False;
    with DmConexao.Qry do
    begin
      sql.clear;
      Sql.Add('SELECT * FROM FORMA_PAGAMENTO WHERE ID = :ID');
      paramByName('ID').AsInteger := oCondicaoPagamento.ID;
      open;
      FieldtoObj(oCondicaoPagamento, DmConexao.Qry);
      result := true;
      close;
    end;
end;

function TCondicaoPagamentoDao.VerificarExclusao(Value: TCondicaoPagamento): boolean;
begin
   result := False;
   {with DmConexao.Qry do
    begin
      sql.clear;
      Sql.Add('SELECT * FROM ESTADOS WHERE ID_CondicaoPagamento = :ID_CondicaoPagamento');
      paramByName('ID_CondicaoPagamento').AsInteger := Value.id;
      open;
      if not IsEmpty then
        result := true;
      close;
    end;}
end;

function TCondicaoPagamentoDao.VerificarNome(Value: TCondicaoPagamento): boolean;
begin
   result := False;
   with DmConexao.Qry do
    begin
      sql.clear;
      Sql.Add('SELECT * FROM FORMA_PAGAMENTO WHERE DESCRICAO = :DESCRICAO AND NOT ID = :ID');
      paramByName('ID').AsInteger := Value.ID;
      paramByName('Descricao').AsString := Value.Descricao;
      open;
      if not IsEmpty then
        result := true;
      close;
    end;
end;

end.
