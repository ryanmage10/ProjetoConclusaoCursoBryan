unit uCompras;

interface

uses
  uBase, uUnidades;

type
  TCompras = class(TBase)
  protected
    FDescricao: string[50];
    FCodigo: string[15];
	  FUnidade: TUnidades;
	  FNCM: String[6];

    function GetDescricao: string;
	  function GetCodigo: string;
	  function GetUnidade: TUnidades;
	  function GetNCM: string;
    procedure SetDescricao(Value: string);
	  procedure SetCodigo(Value: string);
	  procedure SetUnidade(Value: TUnidades);
	  procedure SetNCM(Value: string);
  public

    property Descricao: string read GetDescricao write SetDescricao;
    property Codigo: string read GetCodigo write SetCodigo;
	  property Unidade: TUnidades read GetUnidade write SetUnidade;
	  property NCM: string read GetNCM write SetNCM;

    constructor Create;
    Destructor Free;
    function clone: TCompras;
    procedure CopiarDados(Value: TCompras);

    procedure LimparDados;
  end;

implementation

{ TCompras }

function TCompras.clone: TCompras;
begin
  result := TCompras.Create;
  result.CopiarDados(Self);
end;

procedure TCompras.CopiarDados(Value: TCompras);
begin
  inherited CopiarDados(Value);
  FDescricao := Value.Descricao;
  FCodigo := Value.Codigo;
  FUnidade.CopiarDados(Value.Unidade);
  FNCM := Value.NCM;
end;

constructor TCompras.Create;
begin
  Inherited;
  Funidade := Tunidades.Create;
end;

destructor TCompras.Free;
begin
  Funidade.Free;
  inherited;
end;

function TCompras.GetCodigo: string;
begin
  result := FCodigo;
end;

function TCompras.GetDescricao: string;
begin
  result := FDescricao;
end;

function TCompras.GetNCM: string;
begin
  result := FNCM;
end;

function TCompras.GetUnidade: TUnidades;
begin
  result := FUnidade;
end;

procedure TCompras.LimparDados;
begin
  inherited LimparDados;
  FDescricao := '';
  FCodigo := '';
  FUnidade.LimparDados;
  FNCM := '';
end;

procedure TCompras.SetCodigo(Value: string);
begin
  FCodigo := Value;
end;

procedure TCompras.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

procedure TCompras.SetNCM(Value: string);
begin
  FNCM := Value;
end;

procedure TCompras.SetUnidade(Value: TUnidades);
begin
  FUnidade.CopiarDados(Value);
end;

end.
