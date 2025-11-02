unit NewEntry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ActnList, System.Actions;

type
  TNewPhone = class(TForm)
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
    mail: TEdit;
    Label2: TLabel;
    Label9: TLabel;
    grs: TComboBox;
    Button2: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewPhone: TNewPhone;

implementation

uses PhoneMain, cfg;

{$R *.DFM}

procedure TNewPhone.Button2Click(Sender: TObject);
begin
close;
end;

procedure TNewPhone.Button1Click(Sender: TObject);
var i:integer;
begin
 try
   if length(name.text)>0 then begin
     if length(homephone.text)>0 then
         PhoneMain.ini.WriteString(name.text,'n1',homephone.text);
     if length(Workphone.text)>0 then
         PhoneMain.ini.WriteString(name.text,'n2',workphone.text);
     if length(celular.text)>0 then
         PhoneMain.ini.WriteString(name.text,'n3',celular.text);
     if length(adress.text)>0 then
         PhoneMain.ini.WriteString(name.text,'n4',adress.text);
     if length(date_r.text)>0 then
         PhoneMain.ini.WriteString(name.text,'n5',date_r.text);
     if length(mail.text)>0 then
         PhoneMain.ini.WriteString(name.text,'n6',mail.text);
     PhoneMain.ini.WriteString(name.text,'n7',grs.Text);

     for i:=0 to notes.Lines.Count-1 do
        PhoneMain.ini.WriteString(name.text,'c'+inttostr(i),notes.lines[i]);
   end
   else showmessage('Cant write entry!');
 except
    writeLog(log,'WriteError','New_Phone.Button1Click');
 end;
end;

procedure TNewPhone.FormActivate(Sender: TObject);
var i : integer;
begin
 grs.Items.clear;
 for i:=1 to Form1.ListView1.Items.Count-1 do
 begin
    grs.Items.Add(Form1.ListView1.Items[i].Caption);
 end;

 for i := 0 to grs.Items.count-1 do
   if (Form1.ListView1.ItemIndex >= 0) and (Form1.ListView1.ItemIndex < Form1.ListView1.Items.Count)
   then
     if grs.Items[i] = Form1.ListView1.Items[Form1.ListView1.ItemIndex].Caption
        then
        grs.ItemIndex:=i;
        name.Text:='';
        homephone.Text:='';
        workphone.Text:='';
        mail.Text:='';
        date_r.Text:='';
        adress.Text:='';
        notes.Clear;
        celular.Text:='';
end;

procedure TNewPhone.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ord(key)=vk_escape then close;
end;

procedure TNewPhone.Action1Execute(Sender: TObject);
begin
  close;
end;

procedure TNewPhone.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
     Key:=#0;
     Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
