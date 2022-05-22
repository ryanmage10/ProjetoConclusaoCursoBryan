unit uCons_Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TCons_Base = class(TForm)
    Panel1: TPanel;
    GridPesquisa: TDBGrid;
    Panel2: TPanel;
    btn_Novo: TButton;
    btn_Alterar: TButton;
    btn_Excluir: TButton;
    Edt_Pesquisa: TEdit;
    btn_Pesquisar: TButton;
    btn_Sair: TButton;
    btn_Selecionar: TButton;
    procedure btn_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Selecao: boolean;
  end;

implementation

{$R *.dfm}

procedure TCons_Base.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TCons_Base.FormShow(Sender: TObject);
begin
  if not Selecao then
    btn_Selecionar.Visible := False;
end;

end.
