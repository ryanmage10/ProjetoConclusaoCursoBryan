unit uPessoa;
interface

uses uBase, uCidades, System.DateUtils;

type
  TPessoas = class(TBase)

  protected
    Fnome: string;
    Fendereco: string;
    Fbairro: string;
    Fnumero: string;
    Fcidade: TCidades;
    FTelFixo: string;
    FTelCel: string;
    function GetNome: string;
    function GetEndereco: string;
    function GetBairro: string;
    function Getnumero: string;
    function Getcidade: TCidades;
    function GetTelFixo: string;
    function GetTelCel: string;

    procedure SetNome(value: string);
    procedure Setendereco(value: string);
    procedure Setbairro(value: string);
    procedure Setnumero(value: string);
    procedure Setcidade(value: TCidades);
    procedure SetTelFixo(value: string);
    procedure SetTelCel(value: string);

  public
    property Nome: string read GetNome write SetNome;
    property endereco: string read Getendereco write Setendereco;
    property bairro: string read Getbairro write Setbairro;
    property numero: string read Getnumero write Setnumero;
    property cidade: TCidades read Getcidade write Setcidade;
    property TelFixo: string read GetTelFixo write SetTelFixo;
    property TelCel: string read GetTelCel write SetTelCel;

    constructor Create;
    procedure copiarDados(value: TPessoas);
    function Clone: TPessoas;
    procedure LimparDados;
    destructor Free;
  end;

implementation

constructor TPessoas.Create;
begin
  inherited;
  FCidade := TCidades.Create;
  LimparDados;
end;

procedure TPessoas.LimparDados;
begin
    inherited LimparDados;
    Fnome := '';
    Fendereco := '';
    Fbairro := '';
    Fnumero := '';
    Fcidade.LimparDados;
    FTelFixo := '';
    FTelCel := '';
end;

procedure TPessoas.copiarDados(value: TPessoas);
begin
    inherited copiarDados(Value);
    Fnome := Value.Nome;
    Fendereco := Value.Endereco;
    Fbairro := Value.bairro;
    Fnumero := Value.numero;
    Fcidade.CopiarDados(Value.cidade);
    FTelFixo := Value.TelFixo;
    FTelCel := Value.TelCel;
end;

function TPessoas.Clone: TPessoas;
begin
  Result := TPessoas.Create;
  result.CopiarDados(Self);
end;

function TPessoas.GetBairro: string;
begin
  result := FBairro;
end;

function TPessoas.Getcidade: TCidades;
begin
  result := Cidade.Clone;
end;

function TPessoas.GetNome: string;
begin
  result := FNome;
end;

function TPessoas.Getnumero: string;
begin
  result := FNumero;
end;

function TPessoas.GetTelCel: string;
begin
  result := FTelCel;
end;

function TPessoas.GetTelFixo: string;
begin
  result := FTelFixo;
end;

function TPessoas.GetEndereco: string;
begin
  result := FEndereco;
end;

procedure TPessoas.Setbairro(value: string);
begin
  FBairro := Value;
end;

procedure TPessoas.Setcidade(value: TCidades);
begin
   FCidade.copiarDados(Value);
end;

procedure TPessoas.SetNome(value: string);
begin
   FNome := Value;
end;

procedure TPessoas.Setnumero(value: string);
begin
   FNumero := Value;
end;

procedure TPessoas.SetTelCel(value: string);
begin
   FTelCel := Value;
end;

procedure TPessoas.SetTelFixo(value: string);
begin
   FTelFixo := Value;
end;

procedure TPessoas.Setendereco(value: string);
begin
   FEndereco := Value;
end;

destructor TPessoas.Free;
begin
   Cidade.Free;
end;

end.
