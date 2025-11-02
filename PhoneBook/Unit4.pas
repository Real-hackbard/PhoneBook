unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, inifiles, ExtCtrls, ActnList, System.Actions;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    ActionList1: TActionList;
    Action1: TAction;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses PhoneMain, cfg;

{$R *.DFM}
procedure TForm4.FormActivate(Sender: TObject);
var  cfgini : TIniFile;
//     i:integer;
begin
  cfgini:=tinifile.Create(dir + 'Base\PhoneBook.ini');
  try
    Memo1.lines.clear;
    Edit1.text:=Form1.TreeView1.Selected.text;
    Label4.Caption := IntToStr(Form1.TreeView1.Selected.Count);

    case Form1.TreeView1.Selected.ImageIndex of
      1: begin
           Label1.Visible :=true;
           Memo1.Visible :=true;
           Memo1.Lines.Clear;
           Memo1.Lines.add(cfgIni.ReadString('Group',Form1.TreeView1.selected.text,''));
        end;
      2:begin
           Label1.Visible :=false;
           Memo1.Visible :=False;
        end;
    end;

    Edit1.setfocus;
    Edit1.SelectAll;
    Memo1.Lines.text:=trim(Memo1.Lines.text);
  except
     writelog(log,'FileReadError','Form4.FormActivate');
  end;
  cfgini.free;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  form4.close;
end;

procedure TForm4.Button1Click(Sender: TObject);
var i:integer;
    ok:boolean;
    ln,f:string;
    cfgini:tinifile;
begin
  cfgini:=tinifile.Create(dir + 'Base\PhoneBook.ini');
  try
    ln:=Form1.TreeView1.selected.text;
    ok:=true;
    for i:=0 to Form1.TreeView1.items.count-1 do begin
      if (Form1.TreeView1.items[i].text=edit1.text) then ok:=false;
    end;
    if ok or (Edit1.text=ln) then begin
        case Form1.TreeView1.selected.ImageIndex of
           1: begin
                cfgini.DeleteKey('Group',Form1.TreeView1.selected.text);
                Form1.TreeView1.selected.text:=Edit1.text;
                cfgini.writestring('Group',Form1.TreeView1.selected.text,trim(Memo1.lines.text));
            end;
         3: begin
                cfgini.DeleteKey('Group',Form1.TreeView1.selected.text);
                Form1.TreeView1.selected.text:=Edit1.text;
                cfgini.writestring('Group',Form1.TreeView1.selected.text,trim(Memo1.lines.text));
            end;
         2: begin
                f:=Form1.TreeView1.selected.text;
                if  renameFile(dir + 'Notes\'+f+'.txt',dir + 'Notes\'+Edit1.text+'.txt') then
                   Form1.TreeView1.selected.text:=Edit1.text
                else showmessage('Cant rename entry');
            end;
       end;
      form4.close;
  end

  else begin
     showmessage('Cant rename entry');
  end;
  except
    writelog(log,'FileRenameError','Form4.Button1Click');
  end;
  cfgini.Free;
end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=' ' then key:='_';
if not (key in ['0'..'9','a'..'z','A'..'Z','à'..'ÿ','À'..'ß',#8,'!','#','@',
                '&','(',')','[',']','-','=','_','+','.','~',':','"',';','?'])
   then begin key:=#0; beep; end;
end;

procedure TForm4.Action1Execute(Sender: TObject);
begin
  close;
end;

end.
