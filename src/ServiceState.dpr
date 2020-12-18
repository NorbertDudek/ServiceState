program ServiceState;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {frmMain},
  ServiceManager in 'ServiceManager.pas';

{$R *.res}

begin
  Application.Initialize;

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
