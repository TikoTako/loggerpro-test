unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Log.Info('Button Click', 'Unit1');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Log.Info('Close', 'Unit1');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Log.Info('Create', 'Unit1');
end;

end.
