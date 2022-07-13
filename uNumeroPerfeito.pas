unit uNumeroPerfeito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmPrincipal = class(TForm)
    btnNumeroPerfeito: TButton;
    edtNumeroPerfeito: TEdit;
    btnAdicionar: TButton;
    StringGrid1: TStringGrid;
    procedure btnNumeroPerfeitoClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    linhas:integer;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
var
numero:integer;
begin
try
numero:=strtoint(edtNumeroPerfeito.Text);
except
  showmessage('o numero não é inteiro');
  exit;
end;
linhas:=linhas+1;
stringgrid1.cells[1,linhas]:=inttostr(numero);
btnNumeroPerfeito.Enabled:=true;
edtNumeroPerfeito.clear;
edtNumeroPerfeito.SetFocus;
end;

procedure TfrmPrincipal.btnNumeroPerfeitoClick(Sender: TObject);
var i, n, soma,m,F: integer;
begin
 try
for F := 1 to Pred(StringGrid1.RowCount) do begin
Application.ProcessMessages;

n:=strtoint(stringgrid1.cells[1,F]);
m:=n-1;
soma:=0;
  for i := 1 to n-3 do
    begin
     if n mod i = 0 then
      begin
      m:=Round(n/i);
        soma:=soma+m;
      end;
    end;
    if soma-n = n-1 then
    showmessage('NUMERO PERFEITO: '+inttostr(n))
    else
    begin
    showmessage('NÃO É PERFEITO: '+inttostr(n));
    end;
    edtNumeroPerfeito.SetFocus;
end;
except
showmessage('Todos os números testados com sucesso!')
end;
end;
procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
linhas:=0;
end;

end.
