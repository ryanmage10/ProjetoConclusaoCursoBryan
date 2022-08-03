unit uParcelas;

interface

uses
  uBase, uFormasPagamentos;

type
  TParcela = class(TBase)
  protected
    FCod_CondPag: Integer;
    FNumero: Integer;
    FDias: integer;
    FPercentual: Currency;
    FCod_ContasPag: Integer;
    FFormaPag: TFormaPagamento;

    function GetCod_CondPag: Integer;
    function GetNumero: Integer;
    function GetDias: integer;
    function GetPercentual: Currency;
    function GetCod_ContasPag: Integer;
    function GetFormaPag: TFormaPagamento;

    procedure SetCod_CondPag(Value: Integer);
    procedure SetNumero(Value: Integer);
    procedure SetDias(Value: integer);
    procedure SetPercentual(Value: Currency);
    procedure SetCod_ContasPag(Value: Integer);
    procedure SetFormaPag(Value: TFormaPagamento);

  public

    property Cod_CondPag: integer read GetCod_CondPag write SetCod_CondPag;
    property Numero: Integer read GetNumero write SetNumero;
    property Dias: integer read GetDias write SetDias;
    property Percentual: Currency read GetPercentual write SetPercentual;
    property Cod_ContasPag: integer read GetCod_ContasPag write SetCod_ContasPag;
    property FormaPag: TFormaPagamento read GetFormaPag write SetFormaPag;

    constructor Create;
    Destructor Free;
    function clone: TParcela;
    procedure CopiarDados(Value: TParcela);

    procedure LimparDados;
  end;

implementation

{ TParcela }

function TParcela.clone: TParcela;
begin
  result := TParcela.Create;
  result.CopiarDados(Self);
end;

procedure TParcela.CopiarDados(Value: TParcela);
begin
  inherited CopiarDados(Value);
  FCod_CondPag := Value.Cod_CondPag;
  FNumero := Value.Numero;
  FDias := Value.Dias;
  FPercentual := Value.Percentual;
  FCod_ContasPag := Value.Cod_ContasPag;
  FFormaPag := Value.FormaPag;
end;

constructor TParcela.Create;
begin
  inherited;
  FFormaPag := TFormaPagamento.Create;
  LimparDados;
end;

destructor TParcela.Free;
begin
  FFormaPag.Free;
  Inherited;
end;

function TParcela.GetCod_CondPag: Integer;
begin
  result := FCod_CondPag;
end;

function TParcela.GetCod_ContasPag: Integer;
begin
  result := FCod_ContasPag;
end;

function TParcela.GetDias: integer;
begin
  result := FDias;
end;

function TParcela.GetFormaPag: TFormaPagamento;
begin
  result := FFormaPag;
end;

function TParcela.GetNumero: Integer;
begin
  result := Fnumero;
end;

function TParcela.GetPercentual: Currency;
begin
  result := FPercentual;
end;

procedure TParcela.LimparDados;
begin
  inherited LimparDados;
  FCod_CondPag := 0;
  FNumero := 0;
  FDias := 0;
  FPercentual := 0;
  FCod_ContasPag := 0;
  FFormaPag.LimparDados;
end;

procedure TParcela.SetCod_CondPag(Value: Integer);
begin
  FCod_CondPag := Value;
end;

procedure TParcela.SetCod_ContasPag(Value: Integer);
begin
  FCod_ContasPag := Value;
end;

procedure TParcela.SetDias(Value: integer);
begin
  FDias := Value;
end;

procedure TParcela.SetFormaPag(Value: TFormaPagamento);
begin
  FFormaPag.CopiarDados(Value);
end;

procedure TParcela.SetNumero(Value: Integer);
begin
  FNumero := Value;
end;

procedure TParcela.SetPercentual(Value: Currency);
begin
  FPercentual := Value;
end;

end.
