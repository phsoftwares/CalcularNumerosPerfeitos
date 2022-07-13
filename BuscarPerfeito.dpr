program BuscarPerfeito;

uses
  Vcl.Forms,
  uNumeroPerfeito in 'uNumeroPerfeito.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
