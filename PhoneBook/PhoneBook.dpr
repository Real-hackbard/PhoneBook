program PhoneBook;

uses
  Forms,
  PhoneMain in 'PhoneMain.pas' {Form1},
  NewEntry in 'NewEntry.pas' {NewPhone},
  Change in 'Change.pas' {ChangePhone},
  cfg in 'cfg.pas',
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit1 in 'Unit1.pas' {MoveNode};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'PhoneBook';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
