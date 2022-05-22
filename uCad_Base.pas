unit uCad_Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TCad_Base = class(TForm)
    Panel1: TPanel;
    edt_id: TEdit;
    lbl_ID: TLabel;
    lbl_Cad: TLabel;
    lbl_DataCad: TLabel;
    Lbl_Alt: TLabel;
    lbl_DataAlt: TLabel;
    btn_Salvar: TButton;
    btn_Cancelar: TButton;
    procedure btn_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Inclusao: boolean;
  end;

implementation

{$R *.dfm}

procedure TCad_Base.btn_CancelarClick(Sender: TObject);
begin
  Close;
end;

end.
