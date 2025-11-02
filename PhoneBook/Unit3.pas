unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ActnList, System.Actions;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    EditName: TEdit;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditNameKeyPress(Sender: TObject; var Key: Char);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses PhoneMain, cfg;

{$R *.DFM}
procedure TForm3.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.Button1Click(Sender: TObject);
var i:integer;
    ok:boolean;
begin
 ok:=true;
 with Form1 do begin
   for i:=0 to TreeView1.items.count-1 do
     if (TreeView1.items[i].text=editName.text) and
        (TreeView1.items[i].ImageIndex=2) then
        ok:=false;
     if ok then begin
       if TreeView1.selected.ImageIndex<>2 then
          TreeView1.Items.AddChild(TreeView1.selected,EditName.text)
       else
          TreeView1.Items.Add(TreeView1.selected,editName.text);
       if TreeView1.selected.ImageIndex<>2 then
          TreeView1.selected.Expand(false);
       form3.close;
     end
     else showmessage('Cant create new node!');
  end;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  editName.text:='Node'+inttostr(Form1.TreeView1.items.Count);
  editName.setfocus;
  editName.SelectAll;
end;

procedure TForm3.EditNameKeyPress(Sender: TObject; var Key: Char);
begin
if key=' ' then key:='_';
if not (key in ['0'..'9','a'..'z','A'..'Z','à'..'ÿ','À'..'ß',#8,'!','#','@','&',
                '(',')','[',']','-','=','_','+','.','~',':','"',';','?'])
   then begin key:=#0; beep; end
end;

procedure TForm3.Action1Execute(Sender: TObject);
begin
  close;
end;

end.
