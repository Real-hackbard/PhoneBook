unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls,  ToolWin,  ExtCtrls, inifiles, ActnList, System.Actions;

type
  TForm2 = class(TForm)
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Edit1: TEdit;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses  PhoneMain, cfg;

{$R *.DFM}
procedure TForm2.Button1Click(Sender: TObject);
var i:integer;
    ok:boolean;
    cfgini:tinifile;
begin
 cfgini := TIniFile.Create(dir + 'Base\PhoneBook.ini');
 try
   with Form1 do begin
     ok:=false;
     for i:=0 to TreeView1.items.count-1 do begin
       if (TreeView1.items[i].text=edit1.text) then ok:=false
       else ok:=true;
     end;
     if ok then begin
        TreeView1.Items.AddChild(TreeView1.selected,edit1.text).ImageIndex:=3;
        try
          cfgini.WriteString('Group',edit1.text,trim(Memo1.Lines.Text));
          TreeView1.SaveToFile(dir + 'Notes\notes.lst');
        except
          writeLog(log,'SaveNotesList','Form2.Button1.onClick');
        end;  
        Form1.TreeView1.selected.Expand(false);
        form2.close;
     end
     else showmessage('Cant add Group!');
  end;
  except
    writelog(log,'FileWriteError','Form2.Button1Click');
  end;
  cfgini.free;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  edit1.text:='Group#'+inttostr(Form1.TreeView1.Items.count);
  memo1.lines.Clear;
  edit1.SetFocus;
  edit1.SelectAll;
  memo1.Lines.text:=trim(memo1.Lines.text);
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=' ' then key:='_';
if not (key in ['0'..'9','a'..'z','A'..'Z','à'..'ÿ','À'..'ß',#8,'!',
                '#','@','&','(',')','[',']','-','=','_','+','.','~',
                ':','"',';','?'])
   then begin key:=#0; beep; end;
end;

procedure TForm2.Action1Execute(Sender: TObject);
begin
 close;
end;

end.
