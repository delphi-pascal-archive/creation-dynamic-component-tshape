program Project1;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  Propr in 'Propr.pas' {PagesDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPagesDlg, PagesDlg);
  Application.CreateForm(TPagesDlg, PagesDlg);
  Application.Run;
end.
