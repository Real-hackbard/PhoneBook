unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TMoveNode = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoveNode: TMoveNode;

implementation

{$R *.dfm}

end.
