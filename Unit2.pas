unit Unit2;

interface

uses
  LoggerPro;

function Log: ILogWriter;

implementation

uses
  LoggerPro.FileAppender,
  LoggerPro.ConsoleAppender,
  LoggerPro.OutputDebugStringAppender;

var
  _Log: ILogWriter;

function Log: ILogWriter;
begin
  Result := _Log;
end;

procedure SetupLogger;
begin
  _Log := BuildLogWriter([TLoggerProFileAppender.Create(5, 9001, '', [],
    'somelogfile.txt'), TLoggerProConsoleAppender.Create]);
  _Log.Info('SetupLogger', 'Unit2');
end;

initialization

SetupLogger();

finalization

_Log.Info('Finalization', 'Unit2');

end.
