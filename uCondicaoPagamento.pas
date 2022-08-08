unit uCondicaoPagamento;

interface

uses
  uBase, System.Generics.Collections, System.SysUtils, uParcelas;

type
  TCondicaoPagamento = class(TBase)
  protected
    FDescricao: string[50];
    FJuro: Currency;
    FMulta: Currency;
    FDesconto: Currency;
    FParcelas: TObjectList<TParcela>;   // TROCAR

    function GetDescricao: string;
    function GetJuro: Currency;
    function GetMulta: Currency;
    function GetDesconto: Currency;
    function GetParcelas: TObjectList<TParcela>;

    procedure SetDescricao(Value: string);
    procedure SetJuro(Value: Currency);
    procedure SetMulta(Value: Currency);
    procedure SetDesconto(Value: Currency);
    procedure SetParcelas(Value: TObjectList<TParcela>);
  public

    property Descricao: string read GetDescricao write SetDescricao;
    property Juro: Currency read GetJuro write SetJuro;
    property Multa: Currency read GetMulta write SetMulta;
    property Desconto: Currency read GetDesconto write SetDesconto;
    property Parcelas: TObjectList<TParcela> read GetParcelas write SetParcelas;

    constructor Create;
    Destructor Free;
    function clone: TCondicaoPagamento;
    procedure CopiarDados(Value: TCondicaoPagamento);

    procedure LimparDados;
  end;

implementation



{ TCondicaoPagamento }

function TCondicaoPagamento.clone: TCondicaoPagamento;
begin
  result := TCondicaoPagamento.Create;
  result.CopiarDados(Self);
end;

procedure TCondicaoPagamento.CopiarDados(Value: TCondicaoPagamento);
begin
   inherited CopiarDados(Value);
   FDescricao := Value.Descricao;
   FJuro := Value.Juro;
   FMulta := Value.Multa;
   FDesconto := Value.Desconto;
   FParcelas := Value.Parcelas;
end;

constructor TCondicaoPagamento.Create;
begin
  inherited;
  LimparDados;
end;

destructor TCondicaoPagamento.Free;
begin
  inherited;
end;

function TCondicaoPagamento.GetDesconto: Currency;
begin
  result := FDesconto;
end;

function TCondicaoPagamento.GetDescricao: string;
begin
  result := FDescricao;
end;

function TCondicaoPagamento.GetJuro: Currency;
begin
  result := FJuro;
end;

function TCondicaoPagamento.GetMulta: Currency;
begin
  result := FMulta;
end;

function TCondicaoPagamento.GetParcelas: TObjectList<TParcela>;
begin
  result := FParcelas;
end;

procedure TCondicaoPagamento.LimparDados;
begin
  inherited LimparDados;
  FDescricao := '';
  FJuro := 0;
  FMulta := 0;
  FDesconto := 0;
  FParcelas := nil;
end;

procedure TCondicaoPagamento.SetDesconto(Value: Currency);
begin
  FDesconto := Value;
end;

procedure TCondicaoPagamento.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

procedure TCondicaoPagamento.SetJuro(Value: Currency);
begin
  FJuro := Value;
end;

procedure TCondicaoPagamento.SetMulta(Value: Currency);
begin
  FMulta := Value;
end;

procedure TCondicaoPagamento.SetParcelas(Value: TObjectList<TParcela>);
begin
  FParcelas := Value;
end;

end.
