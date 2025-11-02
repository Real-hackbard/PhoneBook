unit Change;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ActnList, shellapi, Buttons, System.Actions ;

type
  TChangePhone = class(TForm)
    workphone: TEdit;
    homephone: TEdit;
    celular: TEdit;
    adress: TEdit;
    date_r: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    notes: TMemo;
    Label7: TLabel;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label8: TLabel;
    name: TEdit;
    Button1: TButton;
    Button2: TButton;
    mail: TEdit;
    Label2: TLabel;
    grs: TComboBox;
    Label9: TLabel;
    ActionList1: TActionList;
    Action1: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePhone: TChangePhone;
  num:integer;
  oldname:string;

implementation

uses PhoneMain, NewEntry, cfg;

{$R *.DFM}
procedure TChangePhone.FormActivate(Sender: TObject);
var i:integer;
    SECT:STRING;
begin
 try
   ChangePhone.Caption := 'Edit entry - '+ansiuppercase(Form1.ListView2.ItemFocused.Caption);
   sect:=Form1.ListView2.ItemFocused.Caption;
   grs.Items.clear;
   for i:=1 to Form1.ListView1.Items.Count-1 do begin
     grs.Items.Add(Form1.ListView1.Items[i].caption);
   end;
   grs.ItemIndex:=grs.Items.IndexOf(PhoneMain.ini.readstring(SECT,'n7',''));
   name.text:=SECT;
   oldname:=name.Text;
   homePhone.text:= PhoneMain.ini.ReadString(SECT,'n1','');
   workphone.text:= PhoneMain.ini.ReadString(SECT,'n2','');
   celular.text:= PhoneMain.ini.ReadString(SECT,'n3','');
   mail.text:= PhoneMain.ini.ReadString(SECT,'n6','');
   adress.text:= PhoneMain.ini.ReadString(SECT,'n4','');
   date_r.text:= PhoneMain.ini.ReadString(SECT,'n5','');
   notes.lines.clear;
   for i:=0 to 10 do
     if ini.readstring(sect,'c'+inttostr(i),'@')<>'@' then
        notes.lines.Add(ini.readstring(sect,'c'+inttostr(i),''));
 except
   writeLog(log,'ReadFileError','ChangePhone.FormActivate');
 end;
 name.SetFocus;
end;

procedure TChangePhone.Button1Click(Sender: TObject);
var i:integer;
begin
 try
   PhoneMain.ini.EraseSection(oldname);
   if length(homePhone.text)>0 then
      PhoneMain.ini.WriteString(name.Text,'n1',homephone.text);
   if length(workphone.text)>0 then
      PhoneMain.ini.WriteString(name.Text,'n2',workphone.text);
   if length(celular.text)>0 then
      PhoneMain.ini.WriteString(name.Text,'n3',celular.text);
   if length(adress.text)>0 then
      PhoneMain.ini.WriteString(name.Text,'n4',adress.text);
   if length(date_r.text)>0 then
      PhoneMain.ini.WriteString(name.Text,'n5',date_r.text);
   if length(mail.text)>0 then
      PhoneMain.ini.WriteString(name.Text,'n6',mail.text);

   PhoneMain.ini.WriteString(name.Text,'n7',grs.Text);
   for i:=0 to notes.Lines.Count-1 do
     PhoneMain.ini.WriteString(name.Text,'c'+inttostr(i),notes.lines[i]);
 except
   writelog(log,'FileWriteError','ChangePhone.Button1Click');
 end;
end;

procedure TChangePhone.Button2Click(Sender: TObject);
begin
 close;
end;

procedure TChangePhone.Action1Execute(Sender: TObject);
begin
 close;
end;

procedure TChangePhone.SpeedButton1Click(Sender: TObject);
var lp:array[0..127] of char;
    s:shortstring;
begin
  if length(mail.text)>3 then begin
    s:='mailto:'+mail.text;
    shellexecute(0,nil,strpCopy(lp,s),nil,nil,0);
  end;
end;

procedure TChangePhone.SpeedButton2Click(Sender: TObject);
var lp:array[0..127] of char;
    s:shortstring;
begin
 s:='mailto:'+celular.text+mail.text;
 shellexecute(0,nil,StrPCopy(lp,s),nil,nil,0);
end;

procedure TChangePhone.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then begin
     Key:=#0;
     Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
