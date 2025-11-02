unit PhoneMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, ToolWin, Menus, Registry, inifiles, StdCtrls, Buttons,
  ActnList, ImgList,printers, shellApi, Grids, AppEvnts, Excel2000,
  OleServer, ComOBJ, System.ImageList, System.Actions;

type
  TForm1 = class(TForm)
    ActionList1: TActionList;
    edit_: TAction;
    new_: TAction;
    delete_: TAction;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PopupMenu3: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    SGL: TSplitter;
    PhoneList: TPanel;
    ListView2: TListView;
    Memo2: TMemo;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    status: TStatusBar;
    CheckBox5: TCheckBox;
    TabSheet1: TTabSheet;
    asQN: TPanel;
    Split: TSplitter;
    ToolButton1: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton5: TToolButton;
    ToolButton14: TToolButton;
    ToolBar1: TToolBar;
    ToolButton21: TToolButton;
    ToolButton20: TToolButton;
    ToolButton10: TToolButton;
    ToolButton4: TToolButton;
    ToolButton9: TToolButton;
    ToolButton15: TToolButton;
    ToolButton26: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    PopupMenu4: TPopupMenu;
    SelAll1: TMenuItem;
    N34: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N20: TMenuItem;
    N23: TMenuItem;
    N28: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N25: TMenuItem;
    N24: TMenuItem;
    N29: TMenuItem;
    PopupMenu5: TPopupMenu;
    N16: TMenuItem;
    N37: TMenuItem;
    N14: TMenuItem;
    MenuItem1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    FontDialog1: TFontDialog;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ActionList2: TActionList;
    Exit: TAction;
    NewText: TAction;
    Remove: TAction;
    NewSubCategory: TAction;
    Fontcfg: TAction;
    ChgProp: TAction;
    SaveNote: TAction;
    AllUpper: TAction;
    AllLower: TAction;
    AllProper: TAction;
    AllInvert: TAction;
    Cut: TAction;
    Paste: TAction;
    Copy: TAction;
    SetFirst: TAction;
    FocusList: TAction;
    SelAll: TAction;
    PrintNote: TAction;
    StatusBar1: TStatusBar;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    StatusBar2: TStatusBar;
    N12: TMenuItem;
    N13: TMenuItem;
    SaveDialog1: TSaveDialog;
    N19: TMenuItem;
    CheckBox1: TCheckBox;
    ToolButton2: TToolButton;
    Action1: TAction;
    SaveDialog2: TSaveDialog;
    ColorD: TColorDialog;
    ExitOnEsc: TAction;
    ListView1: TListView;
    GroupBox5: TGroupBox;
    CheckBox4: TCheckBox;
    Label7: TLabel;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Label8: TLabel;
    Bgcolor: TLabel;
    textcolor: TLabel;
    bordercolor: TLabel;
    border: TCheckBox;
    CheckBox8: TCheckBox;
    TreeView1: TTreeView;
    Memo1: TMemo;
    ApplicationEvents1: TApplicationEvents;
    N8: TMenuItem;
    Splitter1: TSplitter;
    N15: TMenuItem;
    N30: TMenuItem;
    ToolBar3: TToolBar;
    ToolButton13: TToolButton;
    ToolButton18: TToolButton;
    ToolButton8: TToolButton;
    PBToolButton6: TToolButton;
    Panel1: TPanel;
    Label5: TLabel;
    EditFind: TEdit;
    PopupMenu2: TPopupMenu;
    ToExcel: TAction;
    ToHTML: TAction;
    Excel1: TMenuItem;
    HTML1: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton16: TToolButton;
    ToolButton19: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    Image1: TImage;
    ToolButton17: TToolButton;
    ToolButton25: TToolButton;
    ToolButton27: TToolButton;
    ToolButton31: TToolButton;
    ToolButton22: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ExportTextdocument1: TMenuItem;
    SaveDialog3: TSaveDialog;
    Memo3: TMemo;
    ExportWord1: TMenuItem;
    ToolButton35: TToolButton;
    PopupMenu6: TPopupMenu;
    ext1: TMenuItem;
    Data1: TMenuItem;
    Both1: TMenuItem;
    Default1: TMenuItem;
    Panel2: TPanel;
    Label2: TLabel;
    Image2: TImage;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ListView2Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure edit_Execute(Sender: TObject);
    procedure delete_Execute(Sender: TObject);
    procedure ListView2DblClick(Sender: TObject);
    procedure new_Execute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure RemoveExecute(Sender: TObject);
    procedure NewSubCategoryExecute(Sender: TObject);
    procedure NewTextExecute(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FontcfgExecute(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure ChgPropExecute(Sender: TObject);
    procedure SaveNoteExecute(Sender: TObject);
    procedure AllUpperExecute(Sender: TObject);
    procedure AllLowerExecute(Sender: TObject);
    procedure AllProperExecute(Sender: TObject);
    procedure AllInvertExecute(Sender: TObject);
    procedure CutExecute(Sender: TObject);
    procedure PasteExecute(Sender: TObject);
    procedure CopyExecute(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PopupMenu5Popup(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1Click(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure bgcolorClick(Sender: TObject);
    procedure textcolorClick(Sender: TObject);
    procedure bordercolorClick(Sender: TObject);
    procedure TreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TreeView1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure N8Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure EditFindChange(Sender: TObject);
    procedure SelAll1DrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; Selected: Boolean);
    procedure ListView2ColumnClick(Sender: TObject; Column: TListColumn);
    procedure Memo2Exit(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure ExitOnEscExecute(Sender: TObject);
    procedure SetFirstExecute(Sender: TObject);
    procedure FocusListExecute(Sender: TObject);
    procedure SelAllExecute(Sender: TObject);
    procedure PrintNoteExecute(Sender: TObject);
    procedure ToHTMLExecute(Sender: TObject);
    procedure ToExcelExecute(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton32Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure ExportTextdocument1Click(Sender: TObject);
    procedure ExportWord1Click(Sender: TObject);
    procedure ext1Click(Sender: TObject);
    procedure Data1Click(Sender: TObject);
    procedure Both1Click(Sender: TObject);
    procedure Default1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure SaveListviewStrings( listview2: TLIstview; const TMemo);
  public
    { Public declarations }
  end;

  Procedure UpdateNotes;
  Procedure UpdateNotesIcons;
  Procedure SortList;
  function  InvertCase(s:string):string;
  function  ProperCase(ss:string):string;
  procedure LoadGroupPhones(const Groupname:string);
  procedure LoadPhones;

var
  Form1: TForm1;
  ini : TiniFile;
  dir : string;
  newi:boolean;
  tab:shortstring;
  Node,ToNode:TTreeNode;
  _f:boolean=false;
  _II : integer=-1;
  ind : integer=-2;
  CommentChanged:boolean=false;

implementation

uses NewEntry, Change, cfg, Unit2, Unit3, Unit4, Unit1;

{$R *.DFM}
Procedure TForm1.SaveListviewStrings( listview2: TLIstview; const TMemo);
Var
  sl: TStringlist;
  S: String;
  i, k: Integer;
  item: TLIstItem;
Begin
  Assert( Assigned( listview2 ));
  sl := TStringlist.Create;

  try
    For i := 0 To listview2.items.count-1 Do Begin
      item := listview2.Items[i];
      S:= item.Caption;
        For k := 0 To item.SubItems.Count-1 Do
        S:= S + #9 + item.Subitems[k];
        sl.Add( S );
    end;
    //sl.SaveToFile( filename );
    Memo3.Lines.AddStrings(SL);
  finally
  sl.free
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  UT,AN,glist: TStringList;
  m,k,n,i : integer;
  cfgini : Tinifile;
begin
  dir := ExtractFilePath(Application.ExeName) + 'Data\';

  if not DirectoryExists( dir + 'Base') then
    if not CreateDir(dir + 'Base') then
    begin
       raise Exception.Create('Cannot Create Work Dir Base');
       showmessage('Cannot Create Work Base');
       Application.Terminate;
    end;

  if not DirectoryExists( dir + 'Notes') then
    if not CreateDir(dir + 'Notes') then
    begin
       raise Exception.Create('Cannot Create Work Dir Notes');
       showmessage('Cannot Create Work Notes');
       Application.Terminate;
    end;

  ListView1.OnChange:=nil;
  ListView2.OnChange:=nil;
  Newi := True;
  SetCurrentDir(dir);

  ini := TIniFile.create(dir + 'Base\phones.pdb');
  glist := TStringList.create;
  glist.Clear;
  ListView1.Clear;
  try
    if fileexists(dir  + 'Base\groups.pdb') then
       glist.LoadFromFile(dir + 'Base\groups.pdb')
  except
      writelog(log,'FileReadError(Groups.pdb)','FormCreate');
  end;

  ListView1.AddItem('<Phone Book>',nil);

  for i:=0 to gList.Count-1 do begin
     ListView1.AddItem(gList[i],nil);
  end;

  GList.Free;
  ListView1.ItemIndex:=0;

  try
    FileSetAttr(dir + 'Notes\notes.lst',$00);
    if FileExists(dir + 'Notes\notes.lst') then
       TreeView1.LoadFromFile(dir + 'Notes\notes.lst');
  except
     WriteLog(Log,'FileAccessError(notes.lst)','FormCreate');
  end;

  cfgini := TIniFile.Create(dir + 'Base\PhoneBook.ini');
  AN:= TStringlist.create;
  ut := TStringList.create;
  ut.Clear;
  an := GetAllNotesNames;
  m := TreeView1.Items.AddChild(TreeView1.Items.GetFirstNode,'*').AbsoluteIndex;
  cfgini.writestring('group','*','Phone Book Group');
  UpdateNotesIcons;

  for k:=0 to TreeView1.Items.Count-1 do
    for n:=0 to An.Count-1 do
      if (TreeView1.items[k].Text=AN[n]) then
         UT.add(an[n]);

  for n:=0 to an.Count-1 do
  begin
    if UT.IndexOf(an[n])=-1 then
      TreeView1.Items.AddChild(TreeView1.Items[m],an[n]);
  end;

  AN.Free;
  UT.Free;

  if TreeView1.Items[m].Count < 1 then
  TreeView1.Items[m].Delete;
  cfgini.Free;

  cfg.loadCFG;
  Form1.PageControl1.Update;
  UpdateNotesIcons;

  bgcolor.Color := clWhite;
  textcolor.Color := clBlack;
  bordercolor.Color:= clBlack;

  ListView1.OnChange := ListView1Change;
  ListView2.OnChange := ListView2Change;
end;


procedure TForm1.N2Click(Sender: TObject);
var i:integer;
    glist:tstringlist;
begin
if ListView1.ItemFocused.Caption<>'<PhoneBook>' then
  if MessageDlg('Are you sure delete this entrie? "'+
                 ListView1.ItemFocused.Caption+ '"',
                 mtConfirmation,[mbNo,mbYes],0)=mrYes then
  begin
     ListView1.ItemFocused.Delete;
     glist:=tstringlist.create;
     glist.Clear;
     for i:=1 to ListView1.Items.Count-1 do begin
        glist.add(ListView1.Items[i].Caption);
     end;

     try
       filesetattr(dir + 'Base\groups.pdb',$00);
       glist.SaveToFile(dir + 'Base\groups.pdb');
     except
       writelog(log,'FileWriteError(Groups.pdb)','N2Click');
     end;
     glist.Free;
  end;
end;

procedure LoadGroupPhones(Const Groupname:string);
 var i, cur:integer;
     sec:tstringlist;
begin
 Form1.ListView2.OnChange:=nil;
 sec:=tstringlist.Create;

 with Form1 do begin
   ListView2.Clear;
   try
     ini.ReadSections(sec);
     status.panels[1].text:=' Group Phones: '+ IntToStr(sec.Count);
     if ListView1.ItemIndex = 0 then begin
        for i:=0 to sec.Count-1 do begin
          ListView2.Items.Add.Caption:=Sec[i];
          ListView2.Items[i].SubItems.Add(Ini.ReadString(Sec[i],'n1',''));
          ListView2.Items[i].SubItems.Add(Ini.ReadString(Sec[i],'n2',''));
          ListView2.Items[i].SubItems.Add(Ini.ReadString(Sec[i],'n3',''));
          ListView2.Items[i].SubItems.Add(Ini.ReadString(Sec[i],'n4',''));
          ListView2.Items[i].SubItems.Add(Ini.ReadString(Sec[i],'n6',''));
          ListView2.Items[i].SubItems.Add(Ini.ReadString(Sec[i],'n5',''));
        end;
      end;
      if ListView1.itemindex > 0 then begin
        for i:=0 to  sec.Count-1 do begin
          if ini.readstring(sec[i],'n7','')=GroupName then begin
              cur:= ListView2.Items.Add.Index;
              ListView2.items[cur].Caption:=sec[i];
              ListView2.items[cur].SubItems.Add(ini.readstring(sec[i],'n1',''));
              ListView2.items[cur].SubItems.Add(ini.readstring(sec[i],'n2',''));
              ListView2.items[cur].SubItems.Add(ini.readstring(sec[i],'n3',''));
              ListView2.items[cur].SubItems.Add(ini.readstring(sec[i],'n4',''));
              ListView2.items[cur].SubItems.Add(ini.readstring(sec[i],'n6',''));
              ListView2.items[cur].SubItems.Add(ini.readstring(sec[i],'n5',''));
          end;
        end;
      end;
    except
      writelog(log,'FileReadError('+ ini.filename+')','LoadAllPhones');
    end;
 end;
  Form1.ListView2.OnChange:=Form1.ListView2Change;
end;

procedure LoadPhones;
 var i:integer;
     sec:tstringlist;
begin
  Form1.ListView2.OnChange := nil;
  sec:=tstringlist.Create;
  with Form1 do begin
    ListView2.Items.Clear;
    try
      ini.ReadSections(sec);
      status.panels[1].text:=' Phones: '+IntToStr(sec.Count);
      for i:=0 to sec.Count-1 do begin
        ListView2.Items.Add;
        ListView2.items[i].Caption:=sec[i];
        ListView2.items[i].SubItems.Add(ini.readstring(sec[i],'n1',''));
        ListView2.items[i].SubItems.Add(ini.readstring(sec[i],'n2',''));
        ListView2.items[i].SubItems.Add(ini.readstring(sec[i],'n3',''));
        ListView2.items[i].SubItems.Add(ini.readstring(sec[i],'n4',''));
        ListView2.items[i].SubItems.Add(ini.readstring(sec[i],'n6',''));
        ListView2.items[i].SubItems.Add(ini.readstring(sec[i],'n5',''));
      end;
    except
      writelog(log,'FileReadError('+ ini.filename+')','LoadPhones');
    end;
  end;
  Form1.ListView2.OnChange:=Form1.ListView2Change;
end;

procedure TForm1.ListView2Change(Sender: TObject; Item: TListItem;Change: TItemChange);
var i:integer;
begin
  Memo2.Clear;
  for i:=0 to 100 do begin
    try
      if ini.readstring(item.Caption,'c' + IntToStr(i),'@') <> '@' then
         Memo2.lines.Add(ini.readstring(item.Caption,'c'+ IntToStr(i),''));
      except
         writelog(log,'FileReadError('+ini.filename+')','PhonesChange');
      end;
  end;
  Memo2.SelStart := 0;
  Memo2.Sellength := 0;
  Memo2.Update;
  CommentChanged:=false;
end;

procedure TForm1.edit_Execute(Sender: TObject);
begin
 if (ListView2.Focused) and (ListView2.selected <> nil) then
 begin
   Application.CreateForm(TChangePhone, ChangePhone);
   if changePhone.showmodal=mrOk then begin
     LoadGroupPhones(ListView1.Selected.Caption);
   end;
   ChangePhone.Free;
 end;
end;

procedure TForm1.delete_Execute(Sender: TObject);
var
  attr : integer;
begin
if ListView2.Focused then
 if messagedlg('Delete Entry are you sure? "' + ListView2.ItemFocused.Caption + '"'
              ,mtConfirmation,[mbNo,mbYes],0)=mrYes then begin
   try
     attr := FileGetAttr(ini.FileName);
     FileSetAttr(ini.FileName,$00);
     ini.EraseSection(ListView2.ItemFocused.Caption);
     FileSetAttr(ini.FileName,attr);
     //LoadAllPhones(groups.Selected.Caption);
     ListView2.ItemFocused.Delete;
   except
       writelog(log,'FileWriteError(' + ini.filename+')','delete_execute');
   end;
 end;

end;

procedure TForm1.ListView2DblClick(Sender: TObject);
begin
  if ListView2.ItemFocused<>nil then edit_.Execute;
end;

procedure TForm1.new_Execute(Sender: TObject);
begin
  Application.CreateForm(TNewPhone, NewPhone);
  if NewPhone.ShowModal = mrOk then
     if ListView1.itemIndex > 0 then
        LoadGroupPhones(ListView1.items[ListView1.itemIndex].Caption)
     else
        LoadGroupPhones(ListView1.items[0].Caption);
  NewPhone.free;
end;

procedure TForm1.N1Click(Sender: TObject);
var
  newstr:string;
  i:integer;
  glist:tstringlist;
begin
try
  NewStr := InputBox('New entry','Type Name :','');
  if newstr<>'' then
  begin
     ListView1.Items.add.Caption:=newstr;
     glist:=tstringlist.create;
     glist.Clear;
     for i:=1 to ListView1.Items.Count-1 do begin
        Glist.add(ListView1.Items[i].Caption);
     end;
     try
       FileSetAttr(dir + 'Base\groups.pdb',$00);
       Glist.SaveToFile(dir + 'Base\groups.pdb');
       Glist.Free;
     except
       WriteLog(log,'FileWriteError(Groups.pdb)','N1Click');
     end;
  end;
except
   WriteLog(log,'NewGroupError','N1Click');
end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  ComboBox1Change(self);
  ListView1.Items[0].selected:=true;
  if ListView2.Items.Count>0 then
    ListView2.Items[0].selected:=true;
    LoadGroupPhones(ListView1.Selected.Caption);
    ListView1.Update;
    ListView2ColumnClick(ListView2, ListView2.Column[0]);
    ListView2.Update;
    ListView2.Realign;
    ListView1.Realign;
    Memo1.Realign;
    TreeView1.Realign;
    asqn.Realign;
    PhoneList.Realign;
    status.Realign;
    Memo2.Realign;
//  splitter1.Align:=alBottom;
  if not _f then begin
    ListView1.ItemIndex:=_II;
    _f:=true;
  end;
end;

procedure TForm1.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  ListView2.OnChange:=Nil;

  if ListView1.Items.Count>0 then
     if (ListView1.ItemIndex>=0) and (ListView1.ItemIndex<ListView1.Items.Count) then
       LoadGroupPhones(ListView1.Selected.Caption);
       ListView2.OnChange:=ListView2Change;

  if ListView2.Items.Count>0 then
    ListView2.Items[0].Selected:=true;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  ListView1.Visible:= CheckBox2.Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  Memo2.Visible:= CheckBox3.Checked;
  splitter1.align:=alNone;
  splitter1.top:=splitter1.top-50;
  splitter1.align:=alBottom;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
  for i:=0 to TreeView1.Items[0].Count-1 do begin
    if TreeView1.Items[0].item[i].text='*' then TreeView1.Items[0].Item[i].Delete;
  end;
  try
    FileSetAttr(dir+'Notes\notes.lst',$00);
    TreeView1.SaveToFile(dir + 'Notes\notes.lst');
  except
     writelog(log,'FileWriteError(notes.lst)','FormClose');
  end;
  cfg.SaveCFG;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
   try
   Case combobox1.ItemIndex of
      0:PageControl1.TabPosition:=tpTop;
      1:PageControl1.TabPosition:=tpBottom;
      2:PageControl1.TabPosition:=tpRight;
      3:PageControl1.TabPosition:=tpLeft;
   end;
   except
   end;
end;

procedure TForm1.RemoveExecute(Sender: TObject);
var s:string;
    cfgini:tinifile;
begin
 cfgini := TInifile.Create(dir + 'Base\PhoneBook.ini');
 try
   if TreeView1.selected<>TreeView1.Items.GetFirstNode then begin
     if TreeView1.selected.ImageIndex = 2 then
     s:='Are you sure remove this entrie ? "' + AnsiUpperCase(TreeView1.selected.text)+'"?'
     else
     s:='Are you sure remove this entrie ? "' + AnsiUpperCase(TreeView1.selected.text)+'"?';

     if messagedlg(s,mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
       if TreeView1.selected.ImageIndex =2 then begin
          //deletefile(list.selected.text+'.txt')
           filesetattr(dir + 'Notes\' + TreeView1.selected.text+'.txt',$00);
           deletefile(dir + 'Notes\' + TreeView1.selected.text+'.txt');
       end
       else begin
         filesetattr(cfgini.FileName,$00);
         cfgini.deleteKey('Group',TreeView1.selected.text);
       end;
       TreeView1.Items.Delete(TreeView1.Selected);
     end;
   end;
 except
   writelog(log,'FileReadError('+ cfgini.filename+')','RemoveExecute');
 end;
 cfgini.Free;
 updatenotes;
 updatenotesIcons;
end;

procedure TForm1.NewSubCategoryExecute(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  Form2.Showmodal;
  UpdateNotesIcons;
  UpdateNotes;
  form2.free;
end;

procedure TForm1.NewTextExecute(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  form3.showmodal;
  form3.Free;
  updateNotesIcons;
  UpdateNotes;
end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  UpdateNotes;
end;

procedure TForm1.FontcfgExecute(Sender: TObject);
var
  fs : string;
  cfgini: TInifile;
begin
 cfgini := TIniFile.Create(dir + 'Base\PhoneBook.ini');

 try
   fs:='0000';
   fontdialog1.Font := Memo1.font;

   if fontdialog1.Execute then begin
     Memo1.Font := fontdialog1.Font;
     filesetattr(cfgini.FileName,$00);
     cfgini.WriteInteger('Notes','FontSize', Memo1.Font.size);
     cfgini.WriteString('Notes','FontFace', Memo1.Font.Name);

     if fsBold in Memo1.font.Style then fs[1] := '1';
     if fsItalic in Memo1.font.Style then fs[2] := '1';
     if fsUnderline in Memo1.font.Style then fs[3] := '1';
     if fsStrikeOut in Memo1.font.Style then fs[4] := '1';

     cfgini.WriteString('Notes','FontStyle', fs);
   end;
 except
    writelog(log,'FileWriteError('+cfgini.FileName+')','RemoveExecute');
 end;
 cfgini.Free;
end;

procedure TForm1.Memo1Change(Sender: TObject);
var cr_lf:integer;
begin
  if TreeView1.selected.ImageIndex=2 then begin
     try
       fileSetAttr(includeTrailingBackslash(dir)+'Notes\'+TreeView1.selected.text+'.txt',$00);
       Memo1.Lines.savetofile(includeTrailingBackslash(dir)+'Notes\'+TreeView1.selected.text+'.txt');
     except
       writelog(log,'FileWriteError('+ TreeView1.selected.text +'.txt)','FilesChange');
     end;
  end;
  cr_lf:=Memo1.Lines.count*2;
  statusbar1.Panels[3].text:='Lines : '+inttostr(length(Memo1.lines.text)-cr_lf);
end;

procedure TForm1.ChgPropExecute(Sender: TObject);
begin
  Application.CreateForm(TForm4, Form4);
  if TreeView1.Selected<>TreeView1.items.GetFirstNode then
  form4.Showmodal;
  form4.free;
  UpdateNotes;
end;

procedure UpdateNotesIcons;
var i:integer;
    cfgini:tinifile;
begin
 cfgini:=tinifile.Create(dir + 'Base\PhoneBook.ini');
 try
   with Form1 do begin
     FOR I:=1 TO TreeView1.ITEMS.COUNT-1 DO BEGIN
       if cfgini.ValueExists('Group',TreeView1.Items[i].Text) then begin
          if TreeView1.items[i].count>0 then begin
             TreeView1.Items[i].ImageIndex:=1;
             TreeView1.Items[i].SelectedIndex:=1;
          end
          else begin
             TreeView1.Items[i].ImageIndex:=3;
             TreeView1.Items[i].SelectedIndex:=3;
          end;
       end
       else begin
          TreeView1.items[i].ImageIndex:=2;
          TreeView1.items[i].SelectedIndex:=2;
       end;
    END;
    TreeView1.Refresh;
 end;
 except
   writelog(log,'FileReadError(PhoneBook.ini)','UpdateItemsIcons');
 end;
 cfgini.Free;
end;

procedure UpdateNotes;
var fll : TStringList;
    cntfiles, i : integer;
begin
  for i:=0 to Form1.TreeView1.Items[0].Count-1 do begin
    if (Form1.TreeView1.Items[0].item[i].text='*') and
       (Form1.TreeView1.Items[0].item[i].Count<1) then
       Form1.TreeView1.Items[0].Item[i].Delete;
  end;

  if Form1.TreeView1.selected=nil then
     Form1.TreeView1.items[0].Selected:=true;
     Form1.statusbar1.panels[2].text:='';
     Form1.statusbar1.panels[3].text:='';
     Form1.Memo1.Clear;

  case Form1.TreeView1.selected.imageindex of
      0: begin
             Form1.NewSubcategory.Enabled:=true;
             Form1.newtext.enabled:=true;
             Form1.setfirst.enabled:=false;
             Form1.chgprop.enabled:=false;
             Form1.cut.enabled:=false;
             Form1.copy.enabled:=false;
             Form1.paste.enabled:=false;
             Form1.Remove.enabled:=false;
             Form1.Memo1.enabled:=False;
             Form1.savenote.Enabled:=false;
             Form1.allUpper.enabled:=false;
             Form1.allLower.enabled:=false;
             Form1.allInvert.enabled:=False;
             Form1.allProper.enabled:=false;
             Form1.PrintNote.Enabled:=false;
         end;
      1: begin
             Form1.chgprop.enabled:=true;
             Form1.Remove.enabled:=True;
             Form1.newtext.enabled:=true;
             Form1.setfirst.enabled:=true;
             Form1.NewSubcategory.Enabled:=true;
             Form1.cut.enabled:=false;
             Form1.copy.enabled:=false;
             Form1.paste.enabled:=false;
             Form1.Memo1.enabled:=False;
             Form1.savenote.Enabled:=false;
             Form1.allUpper.enabled:=false;
             Form1.allLower.enabled:=false;
             Form1.allInvert.enabled:=false;
             Form1.allProper.enabled:=false;
             Form1.PrintNote.Enabled:=false;
         end;
      3: begin
             Form1.setfirst.enabled:=True;
             Form1.chgprop.enabled:=true;
             Form1.Remove.enabled:=True;
             Form1.newtext.enabled:=true;
             Form1.NewSubcategory.Enabled:=true;
             Form1.cut.enabled:=false;
             Form1.copy.enabled:=false;
             Form1.paste.enabled:=false;
             Form1.Memo1.enabled:=False;
             Form1.savenote.Enabled:=false;
             Form1.allUpper.enabled:=false;
             Form1.allLower.enabled:=false;
             Form1.allInvert.enabled:=false;
             Form1.allProper.enabled:=false;
             Form1.PrintNote.Enabled:=false;
         end;
      2: begin
             Form1.NewSubcategory.Enabled:=False;
             Form1.allUpper.enabled:=false;
             Form1.allLower.enabled:=false;
             Form1.allProper.enabled:=false;
             Form1.allInvert.enabled:=false;
             Form1.cut.enabled:=false;
             Form1.copy.enabled:=false;
             Form1.PrintNote.Enabled:=true;
             Form1.setfirst.enabled:=True;
             Form1.chgprop.enabled:=true;
             Form1.Remove.enabled:=True;
             Form1.newtext.enabled:=true;
             Form1.Memo1.enabled:=true;
             Form1.savenote.Enabled:=true;
             Form1.paste.enabled:=true;
             fll:=tstringlist.create;
             try
               if FileExists(dir + 'Notes\'+Form1.TreeView1.selected.Text+'.txt') then
               begin
                  fileSetAttr(dir + 'Notes\'+Form1.TreeView1.selected.Text+'.txt',$00);
                  fll.LoadFromFile(dir + 'Notes\'+Form1.TreeView1.selected.Text+'.txt');
               end
               else  Fll.SavetoFile(dir + 'Notes\'+Form1.TreeView1.selected.Text+'.txt');
             except
               writelog(log,'FileWriteError('+Form1.TreeView1.selected.Text+'.txt)','UpdateNotes');
             end;
             Form1.Memo1.Clear;
             Form1.Memo1.lines.AddStrings(fll);
             fll.free;
         end;
  end;
  cntfiles := 0;

  for i:=0 to Form1.TreeView1.Items.count-1 do
    if Form1.TreeView1.Items[i].ImageIndex = 2 then
    inc(cntfiles);
    Form1.StatusBar1.Panels[1].text:='Count : ' + IntToStr(cntfiles);
end;

procedure TForm1.SaveNoteExecute(Sender: TObject);
begin
 SaveDialog1.FileName := TreeView1.selected.Text+'.txt';
 if SaveDialog1.Execute then begin
    try
      Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    except
      writelog(log,'FileWriteError('+SaveDialog1.filename+')','SaveNoteExecute');
    end;
 end;
end;

procedure TForm1.AllUpperExecute(Sender: TObject);
  var s,l:integer;
begin
  s:=Memo1.SelStart;
  l:=Memo1.SelLength;

  if l > 0 then begin
     Memo1.SelText := AnsiUpperCase(Memo1.SelText);
     Memo1.SelStart := s;
     Memo1.SelLength := l;
  end;
end;

procedure TForm1.AllLowerExecute(Sender: TObject);
  var s,l:integer;
begin
  s:=Memo1.SelStart;
  l:=Memo1.SelLength;

  if l > 0 then begin
     Memo1.SelText:= AnsiLowerCase(Memo1.SelText);
     Memo1.SelStart:=s;
     Memo1.SelLength:=l;
  end;
end;

procedure TForm1.AllProperExecute(Sender: TObject);
  var s,l:integer;
begin
  s:=Memo1.SelStart;
  l:=Memo1.SelLength;
  if l > 0 then begin
     Memo1.seltext:=propercase(Memo1.seltext);
     Memo1.SelStart:=s;
     Memo1.SelLength:=l;
  end;
end;

procedure TForm1.AllInvertExecute(Sender: TObject);
  var s,l:integer;
begin
  s:=Memo1.SelStart;
  l:=Memo1.SelLength;
  if l > 0 then begin
     Memo1.seltext:=invertcase(Memo1.seltext);
     Memo1.SelStart:=s;
     Memo1.SelLength:=l;
  end;
end;

procedure TForm1.CutExecute(Sender: TObject);
begin
 if Memo1.SelLength > 0 then Memo1.CutToClipboard;
end;

procedure TForm1.Data1Click(Sender: TObject);
begin
  ListView2.SortType := stData;
end;

procedure TForm1.Default1Click(Sender: TObject);
begin
  ListView2.SortType := stNone;
end;

procedure TForm1.PasteExecute(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;

procedure TForm1.CopyExecute(Sender: TObject);
begin
  if Memo1.SelLength > 0 then Memo1.CopyToClipboard;
end;

procedure TForm1.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Memo1.SelLength=0 then begin
      cut.enabled:=false;
      copy.enabled:=false;
      AllProper.enabled:=false;
      AllInvert.enabled:=false;
      AllUpper.enabled:=false;
      AllLower.enabled:=false;
  end
  else begin
      cut.enabled:=true;
      copy.enabled:=true;
      AllProper.enabled:=true;
      AllInvert.enabled:=True;
      AllUpper.enabled:=True;
      AllLower.enabled:=True;
  end;
   StatusBar1.Panels[2].Text:=inttostr(Memo1.CaretPos.x)+':'+
                              inttostr(Memo1.CaretPos.y+1);
end;

procedure TForm1.Memo1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Memo1.SelLength=0 then begin
      cut.enabled:=false;
      copy.enabled:=false;
      AllProper.enabled:=false;
      AllInvert.enabled:=false;
      AllUpper.enabled:=false;
      AllLower.enabled:=false;
  end
  else begin
      cut.enabled:=true;
      copy.enabled:=true;
      AllProper.enabled:=true;
      AllInvert.enabled:=True;
      AllUpper.enabled:=True;
      AllLower.enabled:=True;
  end;
end;

procedure TForm1.PopupMenu5Popup(Sender: TObject);
var ind:integer;
begin
  ind:=TreeView1.Selected.absoluteIndex;
  UpdateNotes;
  TreeView1.items[ind].Selected:=true;
  if Form1.TreeView1.selected.Index=0 then
     Form1.SetFirst.Enabled:=false;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
  TreeView1.fullexpand;
end;

procedure SortList;
var i:integer;
begin
 with Form1 do begin
    for i:= 0 to TreeView1.Items.Count-1 do
    begin
         if (TreeView1.items[i].ImageIndex=1) or
            (TreeView1.items[i].ImageIndex=3) then
            begin
               TreeView1.items[i].MoveTo(TreeView1.items[i].Parent,naAddChildFirst)
            end;
    end;
    for i:= 0 to TreeView1.Items.Count-1 do begin
         if (TreeView1.items[i].ImageIndex=1) then
         begin
               TreeView1.items[i].MoveTo(TreeView1.items[i].Parent,naAddChildFirst)
         end;
    end;
 end;
end;

procedure TForm1.SetFirstExecute(Sender: TObject);
begin
  TreeView1.selected.MoveTo(TreeView1.selected.Parent,naAddChildFirst)
end;

procedure TForm1.N18Click(Sender: TObject);
begin
 Sortlist;
end;

procedure TForm1.FocusListExecute(Sender: TObject);
begin
  if TreeView1.Focused then begin
    if Memo1.enabled then begin
       Memo1.SetFocus;
       Memo1.SelStart:=0;
    end;
  end
  else TreeView1.SetFocus;
end;

procedure TForm1.SelAllExecute(Sender: TObject);
begin
  if Memo1.Focused then Memo1.SelectAll;
end;

procedure TForm1.N37Click(Sender: TObject);
begin
  TreeView1.fullcollapse;
  TreeView1.Items.GetFirstNode.Expand(false);
end;


procedure TForm1.PrintNoteExecute(Sender: TObject);
var
  pd:TPrintdialog;
  Line: Integer;
  PrintText: TextFile;   {declares a file variable}
begin
  pd:=Tprintdialog.Create(Form1);
  if Pd.Execute then begin
    try
      AssignPrn(PrintText);   {assigns PrintText to the printer}
      Rewrite(PrintText);     {creates and opens the output file}
      Printer.Canvas.Font := Memo1.Font;  {assigns Font settings to the canvas}
      for Line := 0 to Memo1.Lines.Count - 1 do
        Writeln(PrintText, Memo1.Lines[Line]);	{writes the contents of the Memo1 to the printer object}
      CloseFile(PrintText); {Closes the printer variable}
    except
      WriteLog(Log,'PrintError','PrintNoteExecute');
      showmessage('PrintError');
    end;
  end;
end;

function ProperCase(ss:string):string;
var s  : string;
    fs : short;
begin
  s:=TrimLeft(ss);
  fs:=length(ss)-length(s);
  result := stringofchar(' ',fs) + AnsiUpperCase(copy(s,1,1)) +
                                   AnsiLowerCase(copy(s,2,length(s)));
end;

function invertCase(s:string):string;
var i     : integer;
    s1,s2 : string;
begin
   s1:='';
   s2:='';
   for i:=1 to length(s) do begin
       if AnsiCompareStr(AnsiUpperCase(s[i]),s[i])>0 then begin
          s1:=s[i];
          s2:=s2+AnsiUpperCase(s1);
       end
       else begin
          s1:=s[i];
          s2:=s2+AnsiLowerCase(s1);
       end;
   end;
   result:=s2;
end;

procedure TForm1.Memo1KeyPress(Sender: TObject; var Key: Char);
var
  line, scol,n,n2,x,y,n3: integer;
  ss1,ss2,s1,s2,s3: String;
begin
     if key=#13 then begin
         key:=#0;
         n2:= Memo1.selstart;
         line:= Memo1.CaretPos.y;
         x:= Memo1.CaretPos.x;
         s1:= Memo1.lines[line];
         s2:=trimleft(s1);
         scol:=length(s1)-length(s2);
         s3:=system.copy(Memo1.lines[line],1,x);
         s2:=system.copy(Memo1.lines[line],x+1,length(Memo1.lines[line])-x+1);
         s1:=trimright(s3);
         n3:=length(s3)-length(s1);
         s2:=trim(s2);
         Memo1.lines[line]:=s1+#13#10+stringofchar(' ',scol)+s2;
         Memo1.selstart:=n2+2+scol-n3;
     end;

     if key=chr(vk_tab) then begin
         n:= Memo1.Selstart;
         key:=#0;
         y:= Memo1.CaretPos.y;
         x:= Memo1.CaretPos.x;
         ss1:=system.copy(Memo1.lines[y],1,x);
         ss2:=system.copy(Memo1.lines[y],x+1,length(Memo1.lines[y])-x);
         Memo1.lines[y]:=ss1+tab+ss2;
         Memo1.Selstart:=n+length(tab);
     end;
end;

procedure TForm1.Memo1Click(Sender: TObject);
begin
  StatusBar1.Panels[2].Text:= IntToStr(Memo1.CaretPos.x)+':'+
                              IntToStr(Memo1.CaretPos.y+1);
end;

procedure TForm1.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   StatusBar1.Panels[2].Text:= IntToStr(Memo1.CaretPos.x)+':'+
                               IntToStr(Memo1.CaretPos.y+1);
end;

procedure TForm1.ListView2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    13: edit_Execute(nil);
    46: delete_Execute(nil);
    45: new_Execute(nil);
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var i:integer;
begin
  if Form1.WindowState=wsMaximized then
  begin
    for i:=0 to Form1.ComponentCount-1 do
      if Form1.Components[i] is TControl then
        (Form1.Components[i] as TControl).Visible:=false;
        Form1.WindowState:=wsNormal;
        Form1.WindowState:=wsMaximized;
     for i:=0 to Form1.ComponentCount-1 do
       if Form1.Components[i] is TControl then
          (Form1.Components[i] as TControl).Visible:=true;
  end;
  splitter1.Align:=alBottom;
  N16.OnClick(sender);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 Memo1.WordWrap := checkbox1.Checked;

 if Memo1.WordWrap then
   Memo1.ScrollBars:=ssVertical
 else
   Memo1.ScrollBars:=ssBoth;
 n8.Checked:=checkbox1.Checked;
end;

procedure TForm1.bgcolorClick(Sender: TObject);
begin
  if colorD.Execute then
     bgcolor.Color := colorD.Color;
end;

procedure TForm1.textcolorClick(Sender: TObject);
begin
  if colorD.Execute then
     textcolor.font.Color:=colorD.Color;
end;

procedure TForm1.bordercolorClick(Sender: TObject);
begin
  if colorD.Execute then
     bordercolor.Color:=colorD.Color;
end;

procedure TForm1.Both1Click(Sender: TObject);
begin
  ListView2.SortType := stBoth;
end;

procedure TForm1.ExitOnEscExecute(Sender: TObject);
begin
  if checkbox5.Checked then close;
end;

procedure TForm1.ExportTextdocument1Click(Sender: TObject);
var  i : Integer;
begin
  if SaveDialog3.Execute then begin
     with TStringList.Create do
     try
        for i := 0 to Form1.ListView2.Items.Count-1 do
           Add(Form1.ListView2.Items[i].Caption +',' +
               Form1.ListView2.Items[i].SubItems.CommaText);
           Text := StringReplace(Text,',',#9,[rfReplaceAll]);
           try
              SaveToFile(SaveDialog3.FileName + '.txt');
           except
              ShowMessage('Error TXT');
           end;
     finally
        free;
     end;
  end;
end;

procedure TForm1.ExportWord1Click(Sender: TObject);
var
  Word: OLEVariant;
begin
  Screen.Cursor := crHourGlass;
  SaveListviewStrings(ListView2, Memo3);

  try
    Word := CreateOleObject('Word.Application');
  except
    ShowMessage('Cannot start Word !');
    Screen.Cursor := crDefault;
  end;
  // Show Word
  Word.Visible := True;
  // Add a new Document
  Word.Documents.Add;
  Word.ActiveWindow.ActivePane.View.SeekView := 0;
  Word.Selection.ParagraphFormat.Alignment := 0;
  Word.Selection.TypeText(Text := Memo3.Text);
  Screen.Cursor := crDefault;
end;

procedure TForm1.ext1Click(Sender: TObject);
begin
  ListView2.SortType := stText;
end;

procedure TForm1.ToolButton16Click(Sender: TObject);
begin
  Memo1.Alignment := taCenter;
end;

procedure TForm1.ToolButton19Click(Sender: TObject);
begin
  Memo1.Alignment := taRightJustify;
end;

procedure TForm1.ToolButton24Click(Sender: TObject);
begin
  Memo1.SetFocus;
  SelAll1.OnClick(self);
end;

procedure TForm1.ToolButton25Click(Sender: TObject);
begin
  N30.Click;
end;

procedure TForm1.ToolButton31Click(Sender: TObject);
begin
  N18.Click;
end;

procedure TForm1.ToolButton32Click(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to ListView2.Columns.Count-1 do
     ListView2.Column[i].width := round(ListView2.Width/ListView2.Columns.Count)-1;
end;

procedure TForm1.ToolButton33Click(Sender: TObject);
begin
  if ListView1.GridLines = true then
  begin
  ListView1.GridLines := false;
  ListView2.GridLines := false;
  end else begin
  ListView1.GridLines := true;
  ListView2.GridLines := true;
  end;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
  N29.Click;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
  Memo1.Alignment := taLeftJustify;
end;

procedure TForm1.TreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if source is TTreeView then begin
     node:=(Source as TTreeView).Selected;
     ToNode:=(sender as TTreeView).GetNodeAt(x,y);
     if tonode<>nil then  begin
        if ((tonode.ImageIndex in [0,1,3])and(node.ImageIndex<>0)and(tonode<>node)) then
           accept:=true
        else accept:=false;
        if node.ImageIndex = 1 then StatusBar1.Panels[0].Text:=node.text+' -> '+tonode.Text;
        if node.ImageIndex = 2 then StatusBar1.Panels[0].Text:=node.text+' -> '+tonode.Text;
     end
     else accept:=false;
  end
  else accept:=false;
end;

procedure TForm1.TreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var s : string;
begin
  Application.CreateForm(TMoveNode, MoveNode);

  case node.ImageIndex of
      1:s:='Move file "'+ AnsiUpperCase(node.text)+'" to "'+
        ansiuppercase(tonode.Text)+'"?';
      2:s:='Move file "'+ AnsiUpperCase(node.text)+'" to "'+
        ansiuppercase(tonode.Text)+'"?';
  end;

  movenode.Label1.Caption := s;
  if node.ImageIndex = 1 then
  movenode.RadioGroup1.ItemIndex := 0
  else
  movenode.RadioGroup1.ItemIndex := 1;

  if Checkbox8.Checked then begin
    if movenode.ShowModal = mrYes then begin
      case movenode.RadioGroup1.ItemIndex of
        0:node.MoveTo(ToNode,naAddChildFirst);
        1:node.MoveTo(ToNode,naAddChild);
      end;
    end;
  end
  else
    case movenode.RadioGroup1.ItemIndex of
      0:node.MoveTo(ToNode,naAddChildFirst);
      1:node.MoveTo(ToNode,naAddChild);
    end;
  movenode.Free;
end;

procedure TForm1.TreeView1EndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  statusbar1.panels[0].Text:='';
  UpdateNotes;
  UpdateNotesIcons;
end;

procedure TForm1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var sc:string;
begin
  if (sender is tComponent) then sc:=(sender as tComponent).Name
  else sc:=sender.ClassName;
  writelog(log,e.ClassName,SC);
  ShowMessage(SC + ' : '+#13#10 + e.Message);
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  if CheckBox1.checked then
  CheckBox1.checked := false
  else
  CheckBox1.checked:=true;
  CheckBox1Click(sender);
end;

procedure TForm1.TabSheet1Show(Sender: TObject);
begin
  TreeView1Change(TreeView1,nil);
end;

procedure TForm1.N30Click(Sender: TObject);
var lp:array[0..127] of char;
    s:shortstring;
begin
 s:='Mailto:'+ ListView2.Selected.SubItems[4];
 shellexecute(0,nil,StrPCopy(lp,s),nil,nil,0);
end;

procedure TForm1.EditFindChange(Sender: TObject);
var i:integer;
    s:ShortString;
begin
  for i:=0 to ListView2.items.count-1 do
  begin
    s:=Ansiuppercase(system.Copy(ListView2.items[i].CAPTION,0,length(editFind.Text)));

    if Ansiuppercase(EditFind.text)=s then begin
       ListView2.items[i].Selected:=true;
       ListView2.ItemIndex:=i;
       ListView2.ItemFocused:= ListView2.items[i];
       break;
    end;
  end;

  if ListView2.ItemFocused<>nil then
     ListView2.ItemFocused.MakeVisible(false);
end;

procedure TForm1.SelAll1DrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
var bm:TBitmap;
begin
  if selected then begin
//    acanvas.Pen.Color:=clblack+$00101010;
//    Acanvas.brush.Color:=$00986565;
    acanvas.Pen.Color:=clblack+$00101010;
    Acanvas.brush.Color:=$00ffffff;
    acanvas.Rectangle(arect.left+1,arect.top,arect.Right,arect.top+19);

    if (sender as tmenuitem).Default then
    acanvas.Font.Style:=[fsBold]
      else
    acanvas.Font.Style:=[];

    if not(sender as TMenuItem).Enabled then
    acanvas.Font.Color:=clGrayText
      else
    acanvas.Font.Color:=clBlack;
    acanvas.TextOut(arect.left+32,arect.top+3,(sender as tmenuitem).Caption);

    if (sender as tmenuitem).Enabled then
    acanvas.Font.Color:=clNavy;

    if (sender as tmenuitem).ShortCut > 0 then
      acanvas.TextOut(arect.right-8-acanvas.TextWidth(ShortCutToText((sender as tmenuitem).ShortCut)),arect.top+3,ShortCutToText((sender as tmenuitem).ShortCut));
  end
  else begin
    Acanvas.Pen.Color:=clSilver+$00221111;
    Acanvas.brush.Color:=Acanvas.Pen.Color;
    acanvas.Rectangle(arect.left+24,arect.top,arect.Right,arect.top+19);

    if (sender as tmenuitem).Default then
    acanvas.Font.Style:=[fsBold]
      else
    acanvas.Font.Style:=[];

    if (sender as TMenuItem).Enabled then
    acanvas.Font.Color:=clBlack
      else
    acanvas.Font.Color:=clGrayText;
    acanvas.TextOut(arect.left+32,arect.top+3,(sender as tmenuitem).Caption);

    if (sender as tmenuitem).Enabled then
    acanvas.Font.Color:=clNavy;

    if (sender as tmenuitem).ShortCut>0 then
      acanvas.TextOut(arect.right-8-acanvas.TextWidth(ShortCutToText((sender as tmenuitem).ShortCut)),arect.top+3,ShortCutToText((sender as tmenuitem).ShortCut));
      acanvas.Pen.Color:=clSkyBlue;
  //    acanvas.Pen.Color:=$00ffddcc;
      Acanvas.brush.Color:=acanvas.Pen.Color;
      acanvas.Rectangle(arect.Left,arect.Top,arect.Left+24,arect.Bottom);

    if (sender as TMenuItem).Caption='-' then begin
      Acanvas.Pen.Color:=clSilver;
      Acanvas.brush.Color:=clGray;
      Acanvas.Rectangle(26,arect.top+3,arect.left+arect.Right-2,arect.top+6);
    end;
  end;

  bm := TBitmap.Create;
  ImageList1.GetBitmap((sender as tmenuitem).ImageIndex,bm);
  bm.Transparent := true;

  if not (sender as TMenuItem).Enabled then
    try
      bm.Mask(clWhite);
      acanvas.Draw(arect.Left+3,arect.Top+1,(bm as TGraphic));
    finally
      bm.Free;
    end;
end;

procedure TForm1.ListView2ColumnClick(Sender: TObject;
  Column: TListColumn);
var
  ind:integer;
begin
  ind:=column.Index;
  case ind of
     0:begin
         if sorttype[ind]=0 then sorttype[ind]:=1
         else sorttype[ind]:=0;
         ListView2.CustomSort(@SortNames, sorttype[ind]);
       end;
     1:begin
         if sorttype[ind]=0 then sorttype[ind]:=1
         else sorttype[ind]:=0;
         ListView2.CustomSort(@SortHPhones, sorttype[ind]);
       end;
     2:begin
         if sorttype[ind]=0 then sorttype[ind]:=1
         else sorttype[ind]:=0;
         ListView2.CustomSort(@SortWPhones, sorttype[ind]);
       end;
     3:begin
         if sorttype[ind]=0 then sorttype[ind]:=1
         else sorttype[ind]:=0;
         ListView2.CustomSort(@SortCelPhones, sorttype[ind]);
       end;
     4:begin
         if sorttype[ind]=0 then sorttype[ind]:=1
         else sorttype[ind]:=0;
         ListView2.CustomSort(@SortAdres, sorttype[ind]);
       end;
     5:begin
         if sorttype[ind]=0 then sorttype[ind]:=1
         else sorttype[ind]:=0;
         ListView2.CustomSort(@SortEmail, sorttype[ind]);
       end;
     6:begin
         if sorttype[ind]=0 then sorttype[ind]:=1
         else sorttype[ind]:=0;
         ListView2.CustomSort(@SortDate, sorttype[ind]);
       end;
  end;
  sortindex:=ind;
end;

procedure TForm1.ToHTMLExecute(Sender: TObject);
var i:integer;
    f:tstringlist;
    bgcolor,textcolor,bordercolor:string;
begin
  if SaveDialog2.Execute then begin
    bgcolor:=ColorToHexRGB(Form1.bgcolor.Color);
    textcolor:=ColorToHexRGB(Form1.textcolor.Color);
    bordercolor:=ColorToHexRGB(Form1.bordercolor.Color);
    f:=tstringlist.create;
    f.add('<html>');
    f.Add('  <head>');
    f.Add('     <title>Phone Book HTML 1.0</title>');
    f.Add('   </head>');
    f.Add('<body bgcolor=#'+bgcolor+' text=#'+textcolor+'>');
    f.Add('<font face="Verdana">');
    if border.Checked then
       f.Add(' <table border="1" leftmargin="2" align="center" cellpadding="0" cellspacing="0" bordercolor=#'+bordercolor+'  width="98%">')
    else
       f.Add(' <table align="center" leftmargin="2" cellpadding="0" cellspacing="0" width="98%">');
    f.Add('   <tr>');
    f.Add('     <td><b>&nbspName:</td>');
    if CheckBox4.Checked then f.Add('     <td><b>&nbspHome:</b></td>');
    if CheckBox6.Checked then f.Add('     <td><b>&nbspWorking:</b></td>');
    if CheckBox7.Checked then f.Add('     <td><b>&nbspCell:</b></td>');
    if CheckBox9.Checked then f.Add('     <td><b>&nbspAddress:</b></td>');
    if CheckBox10.Checked then f.Add('     <td><b>&nbspE-mail</b></td>');
    f.Add('   </tr>');

    for i:=0 to ListView2.items.Count-1 do begin
       f.Add('   <tr>');
       if length(ListView2.items[i].Caption)>0 then f.Add('     <td>&nbsp'+ListView2.items[i].Caption+'</td>')
       else f.Add('     <td>&nbsp</td>');
       if CheckBox4.Checked then
          if length(ListView2.items[i].SubItems[0])>0 then f.Add('     <td>&nbsp'+ListView2.items[i].SubItems[0]+'</td>')
          else f.Add('     <td>&nbsp</td>');
       if CheckBox6.Checked then
          if length(ListView2.items[i].SubItems[1])>0 then f.Add('     <td>&nbsp'+ListView2.items[i].SubItems[1]+'</td>')
          else f.Add('     <td>&nbsp</td>');
       if CheckBox7.Checked then
          if length(ListView2.items[i].SubItems[2])>0 then f.Add('     <td>&nbsp'+ListView2.items[i].SubItems[2]+'</td>')
          else f.Add('     <td>&nbsp</td>');
       if CheckBox9.Checked then
          if length(ListView2.items[i].SubItems[3])>0 then f.Add('     <td>&nbsp'+ListView2.items[i].SubItems[3]+'</td>')
          else f.Add('     <td>&nbsp</td>');
       if CheckBox10.Checked then
          if length(ListView2.items[i].SubItems[4])>0 then f.Add('     <td>&nbsp'+ListView2.items[i].SubItems[4]+'</td>')
          else f.Add('     <td>&nbsp</td>');
       f.Add('   </tr>');
    end;

    f.Add('</table>');
    f.Add('</font>');
    f.Add('</body>');
    f.Add('</html>');
    try
      f.SaveToFile(SaveDialog2.FileName);
    except
      writeLog(log,'ExportError','PBToolButton6Click');
      showmessage('Export Error');
    end;
    f.Free;
  end;
end;

procedure TForm1.ToExcelExecute(Sender: TObject);
var ws,xl: variant;
    i,maxrow: integer;
    col,fst: integer;
begin
  Screen.Cursor := crHourGlass;
  fst := 2;
  xl := CreateOleObject('Excel.Application');
    try
      maxrow := 0;
      xl.visible := true;
      XL.WorkBooks.Add;
      ws := XL.ActiveWorkBook.ActiveSheet;
      ws.Range['A1:O500'].NumberFormat:='@';

      ws.Range['A'+inttostr(fst)].Value := 'Entry:';
      ws.Range['B'+inttostr(fst)].Value := 'Name:';
      col:=1;
      if CheckBox4.Checked then begin
         inc(col);
         ws.Range[Chr(Ord('A')+col)+inttostr(fst)].Value := 'Home:';
      end;
      if CheckBox6.Checked then begin
         inc(col);
         ws.Range[Chr(Ord('A')+col)+inttostr(fst)].Value := 'Working:';
      end;
      if CheckBox7.Checked then begin
         inc(col);
         ws.Range[Chr(Ord('A')+col)+inttostr(fst)].Value := 'Cell:';
      end;
      if CheckBox9.Checked then begin
         inc(col);
         ws.Range[Chr(Ord('A')+col)+inttostr(fst)].Value := 'Address';
      end;
      if CheckBox10.Checked then begin
         inc(col);
         ws.Range[Chr(Ord('A')+col)+inttostr(fst)].Value := 'E-Mail';
      end;

      for i := fst+1 to ListView2.Items.Count+fst do begin
         col:=1;
         ws.Range['a'+inttostr(i)].Value := i-(fst);
         ws.Range['b'+inttostr(i)].Value := ListView2.Items[i-fst-1].Caption;
         if CheckBox4.Checked then begin
            inc(col);
            ws.Range[Chr(Ord('A')+col)+inttostr(i)].Value:=ListView2.Items[i-fst-1].SubItems[0];
         end;
         if CheckBox6.Checked then begin
            inc(col);
            ws.Range[Chr(Ord('A')+col)+inttostr(i)].Value:=ListView2.Items[i-fst-1].SubItems[1];
         end;
         if CheckBox7.Checked then begin
            inc(col);
            ws.Range[Chr(Ord('A')+col)+inttostr(i)].Value:=ListView2.Items[i-fst-1].SubItems[2];
         end;
         if CheckBox9.Checked then begin
            inc(col);
            ws.Range[Chr(Ord('A')+col)+inttostr(i)].Value:=ListView2.Items[i-fst-1].SubItems[3];
         end;
         if CheckBox10.Checked then begin
            inc(col);
            ws.Range[Chr(Ord('A')+col)+inttostr(i)].Value:=ListView2.Items[i-fst-1].SubItems[4];
         end;
         maxrow:=i;
      end;
      { Create Range for Excel, include when you want
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeLeft].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeLeft].Weight:=xlThin;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeLeft].ColorIndex:=xlAutomatic;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeTop].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeTop].Weight:=xlThin;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeTop].ColorIndex:=xlAutomatic;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeBottom].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeBottom].Weight:=xlThin;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeBottom].ColorIndex:=xlAutomatic;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeRight].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeRight].Weight:=xlThin;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlEdgeRight].ColorIndex:=xlAutomatic;

      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlInsideVertical].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlInsideVertical].Weight:=xlThin;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlInsideVertical].ColorIndex:=xlAutomatic;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlInsideHorizontal].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlInsideHorizontal].Weight:=xlThin;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(maxrow)].Borders[xlInsideHorizontal].ColorIndex:=xlAutomatic;

      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeLeft].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeLeft].Weight:=xlMedium;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeLeft].ColorIndex:=xlAutomatic;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeTop].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeTop].Weight:=xlMedium;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeTop].ColorIndex:=xlAutomatic;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeBottom].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeBottom].Weight:=xlMedium;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeBottom].ColorIndex:=xlAutomatic;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeRight].LineStyle:=xlContinuous;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeRight].Weight:=xlMedium;
      ws.Range['A'+inttostr(fst)+':'+Chr(Ord('A')+col)+inttostr(fst)].Borders[xlEdgeRight].ColorIndex:=xlAutomatic;
      }
      {
      for i:=ord('A')to ORD('A')+col do begin
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeLeft].LineStyle:=xlContinuous;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeLeft].Weight:=xlMedium;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeLeft].ColorIndex:=xlAutomatic;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeTop].LineStyle:=xlContinuous;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeTop].Weight:=xlMedium;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeTop].ColorIndex:=xlAutomatic;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeBottom].LineStyle:=xlContinuous;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeBottom].Weight:=xlMedium;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeBottom].ColorIndex:=xlAutomatic;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeRight].LineStyle:=xlContinuous;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeRight].Weight:=xlMedium;
         ws.Range[Chr(i)+inttostr(fst)+':'+Chr(i)+inttostr(maxrow)].Borders[xlEdgeRight].ColorIndex:=xlAutomatic;
      end;
       }


      ws.range['A1:'+chr(Ord('A')+col)+'1'].merge;

      if (ListView1.ItemIndex>=0) and (ListView1.ItemIndex<ListView1.Items.Count) then
      ws.range['A1:'+chr(Ord('A')+col)+'1'].value:='Group Name: "'+ListView1.Items[ListView1.ItemIndex].Caption+'"'
        else
      ws.range['A1:'+chr(Ord('A')+col)+'1'].value:='Group Name: ';
      ws.range['A1:'+chr(Ord('A')+col)+'1'].font.bold:=true;
      ws.range['A'+inttostr(fst)+':'+chr(Ord('A')+col)+inttostr(fst)].font.bold:=true;

      ws.Columns['A:'+chr(Ord('A')+col)].EntireColumn.AutoFit;
      xl.ActiveWindow.SplitRow := fst;
      xl.ActiveWindow.FreezePanes := True;
      xl.ActiveSheet.PageSetup.Orientation := xlLandscape;
      xl.ActiveSheet.PageSetup.PrintArea:='$A:$G';
    finally
      Screen.Cursor := crDefault;
      xl.quit;
    end;
end;

procedure TForm1.Memo2Exit(Sender: TObject);
var i:integer;
begin
 if CommentChanged then begin
    for i:=0 to 100 do
      ini.DeleteKey(ListView2.ItemFocused.Caption,'c'+inttostr(i));

    for i:=0 to Memo2.Lines.Count-1 do
      ini.WriteString(ListView2.ItemFocused.Caption,'c'+inttostr(i),Memo2.lines[i]);
 end;
end;

procedure TForm1.PopupMenu3Popup(Sender: TObject);
begin
  ListView1.SetFocus;
end;

procedure TForm1.Memo2Change(Sender: TObject);
begin
 CommentChanged:=true;
end;

end.
