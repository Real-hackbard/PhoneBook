unit cfg;

interface

uses inifiles,forms, Graphics, SysUtils, Classes, ShellApi, Windows,
  comctrls, DateUtils;

  procedure loadCFG;
  procedure SaveCFG;
  procedure WriteLog(const FileName,Error,Place:string);
  function ColorToHexRGB(color:Tcolor):string;
  function GetAllNotesNames:TStringlist;
  function SortNames(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
  function SortHPhones(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
  function SortWPhones(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
  function SortCelPhones(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
  function SortDate(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
  function SortAdres(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
  function SortEmail(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;

const log = 'Data\log.ini';

var
  added_Index:integer;
  sorttype:array [0..6]of byte=(0,1,1,1,1,1,1);
  defnum:integer=maxint;
  sortindex:integer=0;

implementation

uses PhoneMain;

function SortNames(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var s1,s2:string;
begin
  result:=-999;
  s1 := trim(Item1.caption);
  s2 := trim(Item2.caption);
  if paramsort = 1 then begin
     if length(s1) > 0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s1 := 'ß'+s1;
     end else s1 := 'ß';
     if length(s2) > 0 then begin
        if not (s2[1] in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s2 := 'ß'+s2;
     end else s2 := 'ß';
  end
  else begin
     if length(s1) > 0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s1:=' '+s1;
     end else s1:=' ';
     if length(s2) > 0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s2:=' '+s2;
     end else s2:=' ';
  end;
  case paramsort of
    //ascending
    1:  Result := CompareText(s1,s2);
    //descending
    0:  Result := -CompareText(s1,s2);
  end;
end;

function SortHPhones(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var s1,s2:string;
begin
  result:=-999;
  s1:=trim(Item1.SubItems[0]);
  s2:=trim(Item2.SubItems[0]);
  if paramsort=1 then begin
     if length(s1) > 0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s1 := 'ß'+s1;
     end else s1 := 'ß';
     if length(s2) > 0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s2 := 'ß'+s2;
     end else s2 := 'ß';
  end
  else begin
     if length(s1) > 0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s1 := ' '+s1;
     end else s1:=' ';
     if length(s2) > 0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß']) then s2 := ' '+s2;
     end else s2:=' ';
  end;
  case paramsort of
    //ascending
    1:  Result := CompareText(s1,s2);
    //descending
    0:  Result := -CompareText(s1,s2);
  end;
end;

function SortWPhones(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var s1,s2:string;
begin
  result:=-999;
  s1:=trim(Item1.SubItems[1]);
  s2:=trim(Item2.SubItems[1]);
  if paramsort=1 then begin
     if length(s1)>0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s1:='ß'+s1;
     end else s1:='ß';
     if length(s2)>0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s2:='ß'+s2;
     end else s2:='ß';
  end
  else begin
     if length(s1)>0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s1:=' '+s1;
     end else s1:=' ';
     if length(s2)>0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s2:=' '+s2;
     end else s2:=' ';
  end;
  case paramsort of
    //ascending
    1:  Result := CompareText(s1,s2);
    //descending
    0:  Result := -CompareText(s1,s2);
  end;

end;

function SortCelPhones(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var s1,s2:string;
begin
  result:=-999;
  s1:=trim(Item1.SubItems[2]);
  s2:=trim(Item2.SubItems[2]);
  if paramsort=1 then begin
     if length(s1)>0 then begin
        if not(s1[1]in ['+','0'..'9','A'..'Z','a'..'z','à'..'ß'])then s1:='ß'+s1;
     end else s1:='ß';
     if length(s2)>0 then begin
        if not(s2[1]in ['+','0'..'9','A'..'Z','a'..'z','à'..'ß'])then s2:='ß'+s2;
     end else s2:='ß';
  end
  else begin
     if length(s1)>0 then begin
        if not(s1[1]in ['+','0'..'9','A'..'Z','a'..'z','à'..'ß'])then s1:=' '+s1;
     end else s1:=' ';
     if length(s2)>0 then begin
        if not(s2[1]in ['+','0'..'9','A'..'Z','a'..'z','à'..'ß'])then s2:=' '+s2;
     end else s2:=' ';
  end;
  case paramsort of
    //ascending
    1:  Result := CompareText(s1,s2);
    //descending
    0:  Result := -CompareText(s1,s2);
  end;

end;

function SortAdres(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var s1,s2:string;
//    p:integer;
begin
  result:=-999;
  s1:=trim(Item1.SubItems[3]);
  s2:=trim(Item2.SubItems[3]);
  //
  if paramsort=1 then begin
     if length(s1)>0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ÿ','À'..'ß'])then s1:='ß'+s1;
     end else s1:='ß';
     if length(s2)>0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ÿ','À'..'ß'])then s2:='ß'+s2;
     end else s2:='ß';
  end
  else begin
     if length(s1)>0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ÿ','À'..'ß'])then s1:=' '+s1;
     end else s1:=' ';
     if length(s2)>0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ÿ','À'..'ß'])then s2:=' '+s2;
     end else s2:=' ';
  end;
  case paramsort of
    //ascending
    1:  Result := ANSICompareText(s1,s2);
    //descending
    0:  Result := -ANSICompareText(s1,s2);
  end;

end;

function SortEmail(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var s1,s2:string;
begin
  result:=-999;
  s1:=trim(Item1.SubItems[4]);
  s2:=trim(Item2.SubItems[4]);
  if paramsort=1 then begin
     if length(s1)>0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s1:='ß'+s1;
     end else s1:='ß';
     if length(s2)>0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s2:='ß'+s2;
     end else s2:='ß';
  end
  else begin
     if length(s1)>0 then begin
        if not(s1[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s1:=' '+s1;
     end else s1:=' ';
     if length(s2)>0 then begin
        if not(s2[1]in ['0'..'9','A'..'Z','a'..'z','à'..'ß'])then s2:=' '+s2;
     end else s2:=' ';
  end;
  case paramsort of
    //ascending
    1:  Result := CompareText(s1,s2);
    //descending
    0:  Result := -CompareText(s1,s2);
  end;
end;

function SortDate(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var s1,s2:string;
    d1,d2:TDateTime;
//    y,d,w1,w2:word;
begin
  result:=-999;
  s1:=Item1.SubItems[5];
  s2:=Item2.SubItems[5];
  d1:= StrToDateDef(s1,StrToDate('01.01.3000'));
  d2:= StrToDateDef(s2,StrToDate('01.01.3000'));
  case paramsort of
    //ascending
    1: begin
         d1:= StrToDateDef(s1,StrToDate('01.01.3000'));
         d2:= StrToDateDef(s2,StrToDate('01.01.3000'));
         Result := CompareDate(d1,d2);
       end;
    //descending
    0: begin
         d1:= StrToDateDef(s1,StrToDate('01.01.1000'));
         d2:= StrToDateDef(s2,StrToDate('01.01.1000'));
         Result := -CompareDate(d1,d2);
       end;
  end;
end;

function GetAllNotesNames:TStringlist;
var f:TSearchRec;
    n:integer;
begin
  result:=TStringlist.Create;
  result.Clear;
  Try
    if findfirst(dir + 'Notes\*.txt',faAnyFile-(faDirectory+faVolumeID),f)=0 then
      repeat
        n:=lastdelimiter('\',f.name);
        Result.Add(copy(f.name,n,length(f.name)-n-4));
      until findnext(f)<>0;
      sysUtils.FindClose(f);
  except
    writeLog(ExtractFilePath(Application.ExeName) + 'Data\log.ini'
            ,'GetNotesListError','cfg.pas->GetAllNotesNames');
  end;
end;

function ColorToHexRGB(color:Tcolor):string;
var tmp,hex:string;
begin
  tmp:=inttohex(Color,6);
  hex:='';
  hex:=hex+system.copy(tmp,5,2);
  hex:=hex+system.copy(tmp,3,2);
  hex:=hex+system.copy(tmp,1,2);
  result:=hex;
end;

procedure WriteLog(const FileName,Error,Place:string);
var f:TextFile;
    s:string;
    size:Integer;
    f1:file of byte;
begin
// {
    AssignFile(f1,FileName);
    if not FileExists(FileName) then Rewrite(f1)
    else reset(f1);
    size:=FileSize(f1);
    CloseFile(f1);
// }
    AssignFile(f,FileName);
    if FileExists(FileName)and(size<102400) then
       Append(f)
    else Rewrite(F);
    s:=dateTimetostr(now)+' : '+Error+' ['+Place+']';
    WriteLn(f,s);
    CloseFile(f);
//
end;

procedure loadCFG;
var cfgini:Tinifile;
    fs:string;
    i:integer;
begin
  try
    fileSetAttr(dir + 'Base\PhoneBook.ini',$00);
    cfgini:=tinifile.Create(dir + 'Base\PhoneBook.ini');

    Form1.Memo1.Font.Size:=cfgini.ReadInteger('Notes','FontSize',12);
    Form1.Memo1.Font.name:=cfgini.ReadString('Notes','FontFace','CourierNew');
    fs:=cfgini.ReadString('Notes','FontStyle', '0000');
    Form1.Memo1.font.Style:=[];

    if fs[1]='1' then Form1.Memo1.font.Style:=Form1.Memo1.font.Style+[fsBold];
    if fs[2]='1' then Form1.Memo1.font.Style:=Form1.Memo1.font.Style+[fsItalic];
    if fs[3]='1' then Form1.Memo1.font.Style:=Form1.Memo1.font.Style+[fsUnderline];
    if fs[4]='1' then Form1.Memo1.font.Style:=Form1.Memo1.font.Style+[fsStrikeOut];

    Form1.CheckBox5.Checked:=cfgini.ReadBool('MAIN','ESC',True);
    Form1.ComboBox1.ItemIndex:=cfgini.ReadInteger('MAIN','TabPosition',0);
    Form1.PageControl1.ActivePageIndex:=cfgini.ReadInteger('MAIN','Page',0);
    Form1.PageControl1.Update;
    Form1.WindowState:=wsNormal;
    Form1.WindowState:=wsmaximized;
    Form1.WindowState:=wsNormal;
    Form1.Width:=cfgini.ReadInteger('MAIN','Width',640);
    Form1.Height:=cfgini.ReadInteger('MAIN','Height',480);
    Form1.Top:=cfgini.ReadInteger('MAIN','Top', 100);
    Form1.Left:=cfgini.ReadInteger('MAIN','Left',100);
    Form1.WindowState:=wsNormal;
    if cfgini.ReadBool('MAIN','Max',false) then
        Form1.WindowState:=wsMaximized;

    Form1.CheckBox2.Checked:=cfgini.ReadBool('PB','Pans',true);
    Form1.CheckBox3.Checked:=cfgini.ReadBool('PB','Comments',true);
    Form1.Memo2.Height:=cfgini.ReadInteger('PB','ComHeight',50);
    Form1.ListView1.Width:=cfgini.ReadInteger('PB','GroupWidth',120);

    Form1.CheckBox1.Checked:=cfgini.ReadBool('Notes','WordWrap',true);
    Form1.n8.Checked:=Form1.checkbox1.Checked;
    Form1.toolbar1.left:=cfgini.Readinteger('Notes','CP1L',280);
    Form1.toolbar1.top :=cfgini.Readinteger('Notes','CP1T',2);
    Form1.toolbar1.visible:=cfgini.ReadBool('Notes','CP1V',true);
    Form1.TreeView1.Width:=cfgini.Readinteger('Notes','LW',192);
    tab:=stringofchar(' ',cfgini.ReadInteger('Notes','TabCount',8));
    Form1.checkbox8.checked:=cfgini.readBool('Notes','ConfirmDnD',true);

    for i:=0 to Form1.TreeView1.items.Count-1 do begin
      Form1.TreeView1.items[i].Expanded:=cfgini.ReadBool('Expanded',Form1.TreeView1.items[i].text,false);
      if Form1.TreeView1.items[i].text= cfgini.ReadString('Expanded','SelectedItem','$') then
         Form1.TreeView1.items[i].Selected:=true;
    end;
    Form1.bgcolor.font.color:=cfgini.readInteger('ExportHTML','bgcolor',clSilver);
    Form1.textcolor.font.color:=cfgini.readInteger('ExportHTML','textcolor',clBlack);
    Form1.bordercolor.font.color:=cfgini.readInteger('ExportHTML','bordercolor',clSkyBlue);
    Form1.border.Checked:=cfgini.readBool('ExportHTML','border',true);
    Form1.CheckBox4.Checked:=cfgini.readBool('ExportHTML','1',true);
    Form1.CheckBox6.Checked:=cfgini.readBool('ExportHTML','2',true);
    Form1.CheckBox7.Checked:=cfgini.readBool('ExportHTML','3',true);
    Form1.CheckBox9.Checked:=cfgini.readBool('ExportHTML','4',true);
    Form1.CheckBox10.Checked:=cfgini.readBool('ExportHTML','5',true);
    _II:=cfgini.ReadInteger('PB','GroupNum',-1);
    for i:=0 to Form1.ListView2.Columns.Count-1 do
      Form1.ListView2.Column[i].Width:=cfgini.readInteger('PB',Form1.ListView2.Column[i].Caption,100);
  except
    writeLog(ExtractFilePath(Application.ExeName) + 'Data\log.ini',
            'LoadCfgError','CFG.pas->LoadCFG');
  end;
end;

procedure SaveCFG;
var cfgini:Tinifile;
    i:integer;
begin
  try
    fileSetAttr(dir + 'Base\PhoneBook.ini',$00);
    cfgini:=tinifile.Create(dir + 'Base\PhoneBook.ini');

    cfgini.WriteInteger('MAIN','TabPosition',Form1.ComboBox1.ItemIndex);
    cfgini.WriteInteger('MAIN','Page',Form1.PageControl1.ActivePageIndex);
    cfgini.WriteBool('MAIN','ESC',Form1.CheckBox5.Checked);

    if Form1.WindowState=wsMaximized then
       cfgini.WriteBool('MAIN','Max',True)
    else  begin cfgini.WriteBool('MAIN','Max',False);
       cfgini.WriteInteger('MAIN','Width',Form1.Width);
       cfgini.WriteInteger('MAIN','Height',Form1.Height);
       cfgini.WriteInteger('MAIN','Top',Form1.Top );
       cfgini.WriteInteger('MAIN','Left',Form1.Left);
    end;

    cfgini.WriteBool('PB','Pans',Form1.CheckBox2.Checked);
    cfgini.WriteBool('PB','Comments',Form1.CheckBox3.Checked);
    cfgini.WriteInteger('PB','ComHeight',Form1.Memo2.Height);
    cfgini.WriteInteger('PB','GroupWidth',Form1.ListView1.Width);
    cfgini.WriteInteger('ExportHTML','bgcolor',Form1.bgcolor.font.color);
    cfgini.WriteInteger('ExportHTML','textcolor',Form1.textcolor.font.color);
    cfgini.WriteInteger('ExportHTML','bordercolor',Form1.bordercolor.font.color);
    cfgini.WriteBool('ExportHTML','border',Form1.border.Checked);
    cfgini.WriteBool('ExportHTML','1',Form1.CheckBox4.Checked);
    cfgini.WriteBool('ExportHTML','2',Form1.CheckBox6.Checked);
    cfgini.WriteBool('ExportHTML','3',Form1.CheckBox7.Checked);
    cfgini.WriteBool('ExportHTML','4',Form1.CheckBox9.Checked);
    cfgini.WriteBool('ExportHTML','5',Form1.CheckBox10.Checked);
    cfgini.WriteInteger('PB','GroupNum',Form1.ListView1.ItemIndex);
    for i:=0 to Form1.ListView2.Columns.Count-1 do
      cfgini.WriteInteger('PB',Form1.ListView2.Column[i].Caption,Form1.ListView2.Column[i].Width);
    cfgini.WriteBool('Notes','WordWrap',Form1.CheckBox1.Checked);
    cfgini.writeinteger('Notes','LW',Form1.TreeView1.Width);
    cfgini.writeinteger('Notes','CP1L',Form1.toolbar1.Left);
    cfgini.writeinteger('Notes','CP1T',Form1.toolbar1.top);
    cfgini.writeBool('Notes','ConfirmDnD',Form1.checkbox8.checked);
    for i:=0 to Form1.TreeView1.items.Count-1 do begin
      if Form1.TreeView1.items.item[i].imageindex<>2 then
         cfgini.writebool('Expanded',Form1.TreeView1.items.item[i].Text,Form1.TreeView1.items.item[i].expanded);
      if Form1.TreeView1.items.item[i].Selected then
         cfgini.writeString('Expanded','SelectedItem',Form1.TreeView1.items.item[i].text);
    end;
  except
    writeLog(ExtractFilePath(Application.ExeName) + 'Data\log.ini',
            'LoadCfgError','CFG.pas->LoadCFG');
  end;
end;

end.
