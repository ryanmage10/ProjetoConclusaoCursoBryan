unit uPessoa;
interface

uses uBase, uCidades, System.DateUtils;

type
  TSexo = (TpIndefinido = -1, TpMasculino = 0, TpFeminino = 1);


  TPessoas = class(TBase)

  protected
    Fnome: string;
    Fendereco: string;
    Fbairro: string;
    Fnumero: string;
    Fcidade: TCidades;
    FTelFixo: string;
    FTelCel: string;
    //Pessoa Fisica
    FDtNasc:           TDate;
    FSexo:             TSexo;
    Fcpf:              string;
    FRG:               string;
    //PessoaJuridica
    FRazaoSocial:   string;
    FCNPJ:          string;
    FIE:            string;

    function GetNome: string;
    function GetEndereco: string;
    function GetBairro: string;
    function Getnumero: string;
    function Getcidade: TCidades;
    function GetTelFixo: string;
    function GetTelCel: string;
    //Pessoa Fisica
    function getDtNasc: TDate;
    function getSexo: TSexo;
    function getCPF: string;
    function getRG: string;
    //PessoaJuridica
    function getRazaoSocial: string;
    function getCNPJ: string;
    function getIE: string;

    procedure SetNome(value: string);
    procedure Setendereco(value: string);
    procedure Setbairro(value: string);
    procedure Setnumero(value: string);
    procedure Setcidade(value: TCidades);
    procedure SetTelFixo(value: string);
    procedure SetTelCel(value: string);

    procedure setDtNasc(Value: TDate);
    procedure setSexo(Value: TSexo);
    procedure setCPF(Value: string);
    procedure setRG(Value: string);

    procedure setRazaoSocial(Value: string);
    procedure setCNPJ(Value: string);
    procedure setIE(Value: string);


  public
    property Nome: string read GetNome write SetNome;
    property endereco: string read Getendereco write Setendereco;
    property bairro: string read Getbairro write Setbairro;
    property numero: string read Getnumero write Setnumero;
    property cidade: TCidades read Getcidade write Setcidade;
    property TelFixo: string read GetTelFixo write SetTelFixo;
    property TelCel: string read GetTelCel write SetTelCel;

    property DtNasc: TDate read GetDtNasc write setDtNasc;
    property Sexo: TSexo read GetSexo write setSexo;
    property CPF: string read GetCPF write setCPF;
    property RG: string read GetRG write setRG;

    property RazaoSocial: string read GetRazaoSocial write setRazaoSocial;
    property CNPJ: string read GetCNPJ write setCNPJ;
    property IE: string read GetIE write setIE;

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

    FDtNasc := Today;
    FSexo   := TpIndefinido;
    Fcpf    := '';
    FRG     := '';

    FRazaoSocial := '';
    FCNPJ        := '';
    FIE          := '';
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

    FDtNasc := Value.DtNasc;
    FSexo   := Value.Sexo;
    Fcpf    := Value.CPF;
    FRG     := Value.RG;

    FRazaoSocial := Value.RazaoSocial;
    FCNPJ        := Value.CNPJ;
    FIE          := Value.IE;
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

procedure TPessoas.setRazaoSocial(Value: string);
begin
  FRazaoSocial := Value;
end;

procedure TPessoas.setCNPJ(Value: string);
begin
  FCNPJ := Value;
end;

procedure TPessoas.setIE(Value: string);
begin
  FIE := Value;
end;

function TPessoas.getRazaoSocial: string;
begin
  result := FRazaoSocial;
end;

function TPessoas.getCNPJ: string;
begin
  result := FCNPJ;
end;

function TPessoas.getIE: string;
begin
  result := FIE;
end;

procedure TPessoas.setDtNasc(Value: TDate);
begin
  FDtNasc := Value;
end;

procedure TPessoas.setSexo(Value: TSexo);
begin
  FSexo := Value;
end;

procedure TPessoas.setCPF(Value: string);
begin
  FCPF := Value;
end;

procedure TPessoas.setRG(Value: string);
begin
  FRG := Value;
end;

function TPessoas.getDtNasc: TDate;
begin
  result := FDtNasc;
end;

function TPessoas.getSexo: TSexo;
begin
  result := FSexo;
end;

function TPessoas.getCPF: string;
begin
  result := FCPF;
end;

function TPessoas.getRG: string;
begin
  result := FRG;
end;

destructor TPessoas.Free;
begin
   Cidade.Free;
end;

end.
