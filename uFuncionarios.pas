unit uFuncionarios;

interface
uses uPessoas;
type
  TFuncionarios = class(TPessoas)

  protected

  public
    constructor Create;
    procedure copiarDados(value: TFuncionarios);
    function Clone: TPessoas;
    procedure LimparDados;
    destructor Free;
  end;
implementation

{ TFuncionarios }

function TFuncionarios.Clone: TPessoas;
begin
   Result := TFuncionarios.Create;
   result.CopiarDados(Self);
end;

procedure TFuncionarios.copiarDados(value: TFuncionarios);
begin
   inherited copiarDados(Value);
end;

constructor TFuncionarios.Create;
begin
   inherited;
   LimparDados;
end;

destructor TFuncionarios.Free;
begin
   inherited;
end;

procedure TFuncionarios.LimparDados;
begin
   inherited LimparDados;
end;

end.

