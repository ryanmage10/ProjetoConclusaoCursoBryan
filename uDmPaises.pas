unit uDmPaises;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, uDmConexao, uPaises;

type
  TDmPaises = class(TDataModule)
    sqlPesquisar: TSQLDataSet;
    sqlInserir: TSQLDataSet;
    sqlAlterar: TSQLDataSet;
    sqlExcluir: TSQLDataSet;
    dspPaises: TDataSetProvider;
    cdsPaises: TClientDataSet;
    sqlRecuperar: TSQLDataSet;
  private
    { Private declarations }
    procedure FieldToObj(var oPais : TPaises; sql: TSqlDataSet);
    procedure ObjToField(oPais : TPaises; var sql: TSqlDataSet);
  public
    { Public declarations }
    function gerarId: integer;
    procedure Pesquisar(Value: string; var dset: TClientDataSet);
    function Recuperar(Var oPais: TPaises; out sErro:string): boolean;
    function inserir(oPais: TPaises; out sErro: string): boolean;
    function Alterar(oPais: TPaises; out sErro: string): boolean;
    function Excluir(oPais: TPaises; var sErro: string):Boolean;

  end;

var
  DmPaises: TDmPaises;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmPaises }

function TDmPaises.Alterar(oPais: TPaises; out sErro: string): boolean;
begin
  with sqlAlterar, oPais do
  begin
     //ObjToField(oPais, sqlAlterar);
     try
        Params[0].AsString := Nome;
        Params[1].AsString := Sigla;
        Params[2].AsString := DDI;
        Params[3].AsString := user_insert;
        Params[4].AsString := user_update;
        Params[7].AsInteger := ID;
        ExecSql();
        result := true;
     except on E:Exception do
       begin
          sErro := 'Ocorreu um erro ao Alterar a Pais' + E.Message;
          result := False;
       end;
     end;
  end;
end;

function TDmPaises.Excluir(oPais: TPaises; var sErro: string): Boolean;
begin
   try
    with SqlExcluir do
    begin
      paramByName('id').AsInteger := oPais.Id;
      ExecSql();
      result := true;
    end;
  except on E: Exception do
    begin
      sErro := 'Erro ao Excluir Pais' + E.Message;
      result := False;
    end;
  end;
end;

procedure TDmPaises.FieldToObj(var oPais: TPaises; sql: TSqlDataSet);
begin
  with oPais, Sql do
  begin
    Id := Sql.FieldByName('ID').AsInteger;
    Nome := FieldByName('pais').AsString;
    Sigla := FieldByName('Sigla').AsString;
    DDI := FieldByName('DDI').AsString;
    //DataCad := FieldByName('date_insert').AsDatetime;
   // DataUltAlt := FieldByName('date_update').AsDatetime;
    User_Insert := FieldByName('User_Insert').AsString;
    User_Update := FieldByName('User_Update').AsString;
  end;
end;

function TDmPaises.gerarId: integer;
var sqlSeq : TSqlDataset;
begin
   sqlSeq := TSqlDataset.create(nil);
   with sqlSeq do
   begin
     try
       SQLConnection := DmConexao.sqlConBanco;
       CommandText := 'select id from paises where id = (select max(id) from paises)';
       open;
       result := FieldByName('id').AsInteger + 1;
       close;
     finally
       freeandnil(sqlseq);
     end;
   end;
end;

function TDmPaises.inserir(oPais: TPaises; out sErro: string): boolean;
begin
   with sqlinserir, OPais do
  begin
     try
        Params[0].AsInteger := GerarId;
        Params[1].AsString := Nome;
        Params[2].AsString := Sigla;
        Params[3].AsString := DDI;
        Params[4].AsString := user_insert;
        Params[5].AsString := user_update;
        //ObjToField(oPais, sqlInserir);
        ExecSql();
        Close;
        result := true;

     except on E:Exception do
       begin
          sErro := 'Ocorreu um erro ao inserir a Pais' + E.Message;
          result := False;
       end;
     end;
  end;
end;

procedure TDmPaises.ObjToField(oPais: TPaises; var sql: TSqlDataSet);
begin
  with oPais, Sql do
  begin
    ParamByName('id').AsInteger := Id;
    ParamByName('nome').AsString := Nome;
    ParamByName('sigla').AsString := Sigla;
    ParamByName('DDI').AsString := DDI;
    ParamByName('date_insert').AsDatetime := DataCad;
    ParamByName('date_update').AsDatetime := DataUltAlt;
    ParamByName('User_Insert').AsString := User_Insert;
    ParamByName('User_Update').AsString := User_Update;
  end;
end;


procedure TDmPaises.Pesquisar(Value: string; Var Dset : TClientDataSet);
begin
  with sqlPesquisar do
  begin
    DSET.EmptyDataSet;
    if Value = '' then
    begin
      CommandText := 'SELECT ID, PAIS, SIGLA, DATE_INSERT FROM PAISES';
    end
    else
    begin
      CommandText := 'SELECT ID, PAIS, SIGLA, DATE_INSERT FROM PAISES WHERE PAIS LIKE :NOME';
      ParambyName('NOME').AsString := '%' + Value + '%';
    end;
    open;
    while not eof do
    begin
      Dset.Append;
      Dset.FieldByName('id').AsInteger := FieldByName('id').AsInteger;
      Dset.FieldByName('PAIS').AsString := FieldByName('PAIS').AsString;
      Dset.FieldByName('sigla').AsString := FieldByName('sigla').AsString;
      //Dset.FieldByName('data_insert').AsDateTime := FieldByName('Date_insert').AsDateTime;
      dset.Post;
      next;
    end;
    close;
  end;
end;

function TDmPaises.Recuperar(var oPais: TPaises; out sErro: string): boolean;
begin
   try
    with SqlRecuperar do
    begin
      paramByName('id').AsInteger := oPais.Id;
      open;
      FieldtoObj(oPais, sqlRecuperar);
      close;
      result := true;
    end;
  except on E: Exception do
    begin
      sErro := 'Erro ao recuperar Pais' + E.Message;
      result := False;
    end;
  end;
end;

end.
