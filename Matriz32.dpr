program Matriz32;

uses
  Forms,
  U_Main_Matriz in 'U_Main_Matriz.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
