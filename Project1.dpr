program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  LoggerPro in 'loggerpro\LoggerPro.pas',
  Unit2 in 'Unit2.pas';

{$R *.res}

begin
  Log.Info('begin', 'dpr');
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
  Log.Info('end', 'dpr');
end.
