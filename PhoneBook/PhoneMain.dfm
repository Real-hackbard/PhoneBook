object Form1: TForm1
  Left = 300
  Top = 229
  Caption = 'Phone Book'
  ClientHeight = 485
  ClientWidth = 747
  Color = clBtnFace
  Constraints.MinHeight = 435
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 50
    Width = 747
    Height = 435
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabStop = False
    ExplicitWidth = 743
    ExplicitHeight = 434
    object TabSheet1: TTabSheet
      Caption = 'Phone Book'
      ImageIndex = 3
      OnShow = TabSheet1Show
      object asQN: TPanel
        Left = 0
        Top = 30
        Width = 739
        Height = 358
        Align = alClient
        BorderWidth = 2
        TabOrder = 0
        OnClick = CheckBox1Click
        ExplicitWidth = 735
        ExplicitHeight = 357
        object Split: TSplitter
          Left = 132
          Top = 3
          Width = 5
          Height = 352
          Cursor = crSizeWE
          MinSize = 96
          ResizeStyle = rsUpdate
          ExplicitHeight = 348
        end
        object TreeView1: TTreeView
          Left = 3
          Top = 3
          Width = 129
          Height = 352
          HelpContext = 4
          Align = alLeft
          Constraints.MinHeight = 96
          Constraints.MinWidth = 96
          DragCursor = crArrow
          DragMode = dmAutomatic
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          HideSelection = False
          Images = ImageList2
          Indent = 19
          ParentFont = False
          PopupMenu = PopupMenu5
          ReadOnly = True
          RightClickSelect = True
          TabOrder = 0
          OnChange = TreeView1Change
          OnDragDrop = TreeView1DragDrop
          OnDragOver = TreeView1DragOver
          OnEndDrag = TreeView1EndDrag
          Items.NodeData = {
            0301000000300000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            00000000000109500068006F006E00650042006F006F006B00}
          ExplicitHeight = 351
        end
        object Memo1: TMemo
          Left = 137
          Top = 3
          Width = 599
          Height = 352
          HelpContext = 3
          Align = alClient
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HideSelection = False
          ImeMode = imDisable
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = PopupMenu4
          ScrollBars = ssVertical
          TabOrder = 1
          WantTabs = True
          OnChange = Memo1Change
          OnClick = Memo1Click
          OnKeyDown = Memo1KeyDown
          OnKeyPress = Memo1KeyPress
          OnKeyUp = Memo1KeyUp
          OnMouseUp = Memo1MouseUp
          ExplicitWidth = 595
          ExplicitHeight = 351
        end
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 388
        Width = 739
        Height = 19
        HelpContext = 7
        AutoHint = True
        Panels = <
          item
            Width = 250
          end
          item
            Width = 128
          end
          item
            Width = 46
          end
          item
            Width = 128
          end>
        OnClick = CheckBox1Click
        ExplicitTop = 387
        ExplicitWidth = 735
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 739
        Height = 30
        HelpContext = 5
        AutoSize = True
        BorderWidth = 1
        Caption = 'ToolBar1'
        EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
        Images = ImageList1
        TabOrder = 2
        Wrapable = False
        OnClick = CheckBox1Click
        ExplicitWidth = 735
        object ToolButton11: TToolButton
          Left = 0
          Top = 0
          Hint = 'New Entry..'
          Action = NewText
        end
        object ToolButton1: TToolButton
          Left = 23
          Top = 0
          Hint = 'New Folder Group..'
          Action = NewSubCategory
          Caption = 'New Folder Category'
        end
        object ToolButton12: TToolButton
          Left = 46
          Top = 0
          Hint = 'Remove Entry or Folder..'
          Action = Remove
        end
        object ToolButton21: TToolButton
          Left = 69
          Top = 0
          Hint = 'Print Entry..'
          Action = PrintNote
        end
        object ToolButton3: TToolButton
          Left = 92
          Top = 0
          Hint = 'Font'
          Caption = 'Font'
          ImageIndex = 25
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton3Click
        end
        object ToolButton31: TToolButton
          Left = 115
          Top = 0
          Hint = 'Sort List'
          Caption = 'ToolButton31'
          ImageIndex = 31
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton31Click
        end
        object ToolButton14: TToolButton
          Left = 138
          Top = 0
          Hint = 'Rename Entry..'
          Action = ChgProp
          Caption = 'Rename'
        end
        object ToolButton5: TToolButton
          Left = 161
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 19
          Style = tbsSeparator
        end
        object ToolButton2: TToolButton
          Left = 169
          Top = 0
          Hint = 'Save Node Entry Content..'
          Action = SaveNote
          Caption = 'Save Node Entry Content..'
        end
        object ToolButton20: TToolButton
          Left = 192
          Top = 0
          Width = 8
          Caption = 'ToolButton20'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton10: TToolButton
          Left = 200
          Top = 0
          Hint = 'Cut Selected..'
          Action = Cut
          Caption = 'Cut'
        end
        object ToolButton4: TToolButton
          Left = 223
          Top = 0
          Hint = 'Copy to Clipboard..'
          Action = Copy
          Caption = 'Copy to Clipboard'
        end
        object ToolButton9: TToolButton
          Left = 246
          Top = 0
          Hint = 'Paste from Clipboard..'
          Action = Paste
          Caption = 'Paste from Clipboard'
        end
        object ToolButton15: TToolButton
          Left = 269
          Top = 0
          Width = 8
          Caption = 'ToolButton15'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton26: TToolButton
          Left = 277
          Top = 0
          Hint = 'Content Selected Upper Case..'
          Action = AllUpper
          Caption = 'Upper Case'
        end
        object ToolButton28: TToolButton
          Left = 300
          Top = 0
          Hint = 'Content Selected Lower Case..'
          Action = AllLower
          Caption = 'Lower Case'
        end
        object ToolButton29: TToolButton
          Left = 323
          Top = 0
          Hint = 'Content Selected Proper Case..'
          Action = AllProper
          Caption = 'Proper Case'
        end
        object ToolButton30: TToolButton
          Left = 346
          Top = 0
          Hint = 'Content Selected Invert Proper Case..'
          Action = AllInvert
          Caption = 'Invert Case'
        end
        object ToolButton7: TToolButton
          Left = 369
          Top = 0
          Width = 8
          Caption = 'ToolButton7'
          ImageIndex = 27
          Style = tbsSeparator
        end
        object ToolButton6: TToolButton
          Left = 377
          Top = 0
          Hint = 'Alignment Left'
          Caption = 'Left'
          ImageIndex = 26
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton6Click
        end
        object ToolButton16: TToolButton
          Left = 400
          Top = 0
          Hint = 'Alignment Center'
          Caption = 'ToolButton16'
          ImageIndex = 27
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton16Click
        end
        object ToolButton19: TToolButton
          Left = 423
          Top = 0
          Hint = 'Alignment Right'
          Caption = 'ToolButton19'
          ImageIndex = 28
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton19Click
        end
        object ToolButton23: TToolButton
          Left = 446
          Top = 0
          Width = 8
          Caption = 'ToolButton23'
          ImageIndex = 29
          Style = tbsSeparator
        end
        object ToolButton24: TToolButton
          Left = 454
          Top = 0
          Hint = 'Select all'
          Caption = 'ToolButton24'
          ImageIndex = 29
          OnClick = ToolButton24Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Export'
      object SGL: TSplitter
        Left = 150
        Top = 30
        Width = 4
        Height = 358
        Cursor = crSizeWE
        ResizeStyle = rsUpdate
        ExplicitLeft = 93
        ExplicitHeight = 354
      end
      object PhoneList: TPanel
        Left = 154
        Top = 30
        Width = 585
        Height = 358
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 1
        Caption = 'PhoneList'
        Constraints.MinHeight = 160
        Constraints.MinWidth = 200
        UseDockManager = False
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 5
          Top = 261
          Width = 551
          Height = 5
          Cursor = crSizeNS
          Align = alNone
          MinSize = 80
          ResizeStyle = rsUpdate
        end
        object ListView2: TListView
          Left = 1
          Top = 27
          Width = 583
          Height = 230
          Align = alClient
          Columns = <
            item
              Caption = 'Name :'
              Width = 128
            end
            item
              Caption = 'Home :'
              Width = 100
            end
            item
              Caption = 'Working :'
              Width = 100
            end
            item
              Caption = 'Cell :'
              Width = 100
            end
            item
              Caption = 'Address :'
              Width = 100
            end
            item
              Caption = 'E-mail'
              Width = 100
            end
            item
              Caption = 'Date of Birth :'
              Width = 92
            end>
          Constraints.MinHeight = 100
          Constraints.MinWidth = 192
          FullDrag = True
          GridLines = True
          HideSelection = False
          IconOptions.WrapText = False
          ReadOnly = True
          RowSelect = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          ViewStyle = vsReport
          OnChange = ListView2Change
          OnColumnClick = ListView2ColumnClick
          OnDblClick = ListView2DblClick
          OnKeyUp = ListView2KeyUp
        end
        object Memo2: TMemo
          Left = 1
          Top = 257
          Width = 583
          Height = 100
          Align = alBottom
          Constraints.MaxHeight = 320
          Constraints.MinWidth = 192
          ScrollBars = ssVertical
          TabOrder = 1
          OnChange = Memo2Change
          OnExit = Memo2Exit
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 583
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            Left = 8
            Top = 7
            Width = 40
            Height = 13
            Caption = 'Search :'
          end
          object Image1: TImage
            Left = 308
            Top = 3
            Width = 20
            Height = 20
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000FF00FF004A667C00BE959600FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF006B9CC3001E89E8004B7AA300C8969300FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF004BB4FE0051B5FF002089E9004B7AA200C6959200FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0051B7FE0051B3FF001D87E6004E7AA000CA979200FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0051B7FE004EB2FF001F89E6004E7BA200B9949700FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0052B8FE004BB1FF002787D9005F6A7600FF00
              FF00B0857F00C09F9400C09F9600BC988E00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0055BDFF00B5D6ED00BF9D9200BB9B
              8C00E7DAC200FFFFE300FFFFE500FDFADA00D8C3B300B58D8500FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEA79500FDEE
              BE00FFFFD800FFFFDA00FFFFDB00FFFFE600FFFFFB00EADDDC00AE837F00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C1A09100FBDC
              A800FEF7D000FFFFDB00FFFFE300FFFFF800FFFFFD00FFFFFD00C6A99C00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C1A09100FEE3AC00F1C4
              9100FCF2CA00FFFFDD00FFFFE400FFFFF700FFFFF700FFFFE900EEE5CB00B994
              8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C2A19100FFE6AE00EEB5
              8100F7DCAE00FEFDD800FFFFDF00FFFFE300FFFFE400FFFFE000F3ECD200BB96
              8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BC978C00FBE7B700F4C7
              9100F2C99400F8E5B900FEFCD800FFFFDD00FFFFDC00FFFFE000E2D2BA00B68E
              8600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9C3A900FFFE
              E500F7DCB800F2C99400F5D4A500FAE8BD00FDF4C900FDFBD600B6908900FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58D8500E8DE
              DD00FFFEF200F9D8A300F4C48C00F9D49F00FDEAB800D0B49F00B8908600FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD82
              7F00C9AA9E00EFE0B700EFDFB200E7CEAC00B8908600B8908600FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00BA968A00BB988C00B7918800FF00FF00FF00FF00FF00FF00FF00
              FF00}
            Transparent = True
          end
          object EditFind: TEdit
            Left = 54
            Top = 2
            Width = 250
            Height = 21
            TabOrder = 0
            OnChange = EditFindChange
          end
        end
        object Memo3: TMemo
          Left = 27
          Top = 159
          Width = 93
          Height = 66
          TabStop = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 3
          Visible = False
        end
      end
      object status: TStatusBar
        Left = 0
        Top = 388
        Width = 739
        Height = 19
        AutoHint = True
        Panels = <
          item
            Width = 250
          end
          item
            Width = 50
          end>
      end
      object ListView1: TListView
        Left = 0
        Top = 30
        Width = 150
        Height = 358
        Align = alLeft
        AllocBy = 20
        Columns = <
          item
            AutoSize = True
            Caption = 'PhoneBook'
          end>
        ColumnClick = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        FlatScrollBars = True
        HideSelection = False
        IconOptions.WrapText = False
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        PopupMenu = PopupMenu3
        ShowColumnHeaders = False
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = ListView1Change
      end
      object ToolBar3: TToolBar
        Left = 0
        Top = 0
        Width = 739
        Height = 30
        AutoSize = True
        BorderWidth = 1
        Caption = 'ToolBar3'
        EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
        Images = ImageList1
        TabOrder = 3
        Transparent = True
        object PBToolButton6: TToolButton
          Left = 0
          Top = 0
          Hint = 'Export'
          Action = ToExcel
          Caption = 'Export'
          DropdownMenu = PopupMenu2
          ImageIndex = 22
          ParentShowHint = False
          ShowHint = True
          Style = tbsDropDown
        end
        object ToolButton8: TToolButton
          Left = 38
          Top = 0
          Width = 8
          Caption = 'ToolButton8'
          ImageIndex = 23
          Style = tbsSeparator
        end
        object ToolButton18: TToolButton
          Left = 46
          Top = 0
          Hint = 'Delete'
          Action = delete_
          Caption = 'Delete'
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton17: TToolButton
          Left = 69
          Top = 0
          Hint = 'New Entry..'
          Caption = 'New Entry'
          ImageIndex = 3
          OnClick = new_Execute
        end
        object ToolButton13: TToolButton
          Left = 92
          Top = 0
          Hint = 'Edit Entry...'
          Action = edit_
          Caption = 'Edit'
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton27: TToolButton
          Left = 115
          Top = 0
          Width = 8
          Caption = 'ToolButton27'
          ImageIndex = 31
          Style = tbsSeparator
        end
        object ToolButton25: TToolButton
          Left = 123
          Top = 0
          Caption = 'ToolButton25'
          ImageIndex = 30
          OnClick = ToolButton25Click
        end
        object ToolButton22: TToolButton
          Left = 146
          Top = 0
          Width = 8
          Caption = 'ToolButton22'
          ImageIndex = 31
          Style = tbsSeparator
        end
        object ToolButton32: TToolButton
          Left = 154
          Top = 0
          Hint = 'Round Columns to Form'
          Caption = 'ToolButton32'
          ImageIndex = 32
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton32Click
        end
        object ToolButton33: TToolButton
          Left = 177
          Top = 0
          Hint = 'Grid'
          Caption = 'ToolButton33'
          ImageIndex = 33
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton33Click
        end
        object ToolButton35: TToolButton
          Left = 200
          Top = 0
          Hint = 'Sort'
          Caption = 'ToolButton35'
          DropdownMenu = PopupMenu6
          EnableDropdown = True
          ImageIndex = 31
          ParentShowHint = False
          ShowHint = True
          Style = tbsDropDown
        end
        object ToolButton34: TToolButton
          Left = 238
          Top = 0
          Width = 8
          Caption = 'ToolButton34'
          ImageIndex = 34
          Style = tbsSeparator
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Options'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 8
        Top = 121
        Width = 233
        Height = 78
        Caption = ' Export '
        TabOrder = 0
        object CheckBox2: TCheckBox
          Left = 8
          Top = 25
          Width = 102
          Height = 17
          TabStop = False
          Caption = 'Show Gruop List'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox2Click
        end
        object CheckBox3: TCheckBox
          Left = 8
          Top = 48
          Width = 121
          Height = 17
          TabStop = False
          Caption = 'Show Comment Box'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBox3Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 233
        Height = 102
        Caption = ' Control '
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 19
          Width = 70
          Height = 13
          Hint = '????????? ????????? ?????????? ??????? (???????)'
          Caption = 'Menu Position:'
        end
        object ComboBox1: TComboBox
          Left = 48
          Top = 36
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          TabStop = False
          OnChange = ComboBox1Change
          Items.Strings = (
            'Top;'
            'pBottom;'
            'Right;'
            'Left;')
        end
        object CheckBox5: TCheckBox
          Left = 8
          Top = 64
          Width = 137
          Height = 17
          TabStop = False
          Caption = 'Program ends with ESC'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 215
        Width = 233
        Height = 120
        Hint = '???????? ??? ???????'
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 145
          Top = 20
          Width = 73
          Height = 25
          Action = Fontcfg
          Caption = 'Font'
          ImageIndex = 5
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C007C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1E001F001F001F00007C007C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F7C007C007C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F7C007C007C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F7C007C007C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F7C007C007C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C1F001F001F7C007C007C1F7C1F7C1F7C
            007C1F7C1F7C1F7C1F7C1F7C1F7C007C007C1F001F7C007C007C1F7C1F7C007C
            007C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C007C007C007C007C
            007C1F7C1F7C1F7C1F001F7C1F7C1F7C1F001F001F7C1F7C1F7C1F001F7C1F7C
            1F7C1F7C1F7C1F7C1F001F001F7C1F7C1F001F001F7C1F7C1F001F001F7C1F7C
            1F7C1F7C1F7C1F7C1F001F001F001F001F001F001F001F001F001F001F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C}
          TabOrder = 0
          TabStop = False
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 61
          Width = 102
          Height = 17
          TabStop = False
          Caption = 'Use Word Wrap'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBox1Click
        end
        object CheckBox8: TCheckBox
          Left = 8
          Top = 84
          Width = 137
          Height = 17
          TabStop = False
          Caption = 'Show Move to Window'
          TabOrder = 2
        end
      end
      object StatusBar2: TStatusBar
        Left = 0
        Top = 388
        Width = 739
        Height = 19
        AutoHint = True
        Panels = <>
      end
      object GroupBox5: TGroupBox
        Left = 263
        Top = 8
        Width = 233
        Height = 327
        Cursor = crArrow
        Caption = ' HTML Export '
        TabOrder = 4
        object Label7: TLabel
          Left = 20
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Column:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 20
          Top = 207
          Width = 72
          Height = 13
          Caption = 'Color HTML:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bgcolor: TLabel
          Left = 70
          Top = 220
          Width = 102
          Height = 13
          Cursor = crHandPoint
          Caption = 'Background Color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = bgcolorClick
        end
        object textcolor: TLabel
          Left = 70
          Top = 236
          Width = 59
          Height = 13
          Cursor = crHandPoint
          Caption = 'Text Color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = textcolorClick
        end
        object bordercolor: TLabel
          Left = 70
          Top = 254
          Width = 71
          Height = 13
          Cursor = crHandPoint
          Caption = 'Border Color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = bordercolorClick
        end
        object CheckBox4: TCheckBox
          Left = 72
          Top = 53
          Width = 52
          Height = 17
          TabStop = False
          Caption = 'Home'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CheckBox6: TCheckBox
          Left = 72
          Top = 76
          Width = 65
          Height = 17
          TabStop = False
          Caption = 'Working'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object CheckBox7: TCheckBox
          Left = 72
          Top = 99
          Width = 41
          Height = 17
          TabStop = False
          Caption = 'Cell'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object CheckBox9: TCheckBox
          Left = 72
          Top = 122
          Width = 64
          Height = 17
          TabStop = False
          Caption = 'Address'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object CheckBox10: TCheckBox
          Left = 72
          Top = 145
          Width = 53
          Height = 17
          TabStop = False
          Caption = 'E-Mail'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object border: TCheckBox
          Left = 70
          Top = 273
          Width = 52
          Height = 17
          TabStop = False
          Caption = 'Boder'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 50
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 743
    object Label2: TLabel
      Left = 16
      Top = 6
      Width = 147
      Height = 39
      Caption = 'PhoneBook'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
    end
    object Image2: TImage
      Left = 161
      Top = 9
      Width = 18
      Height = 15
      Picture.Data = {
        07544269746D617036040000424D360400000000000036000000280000001000
        0000100000000100200000000000000400000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00808080FFFF00FF00FF00FF00C0C0C0FF000000FFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0C0FF000000FFFF00FF00FF00
        FF00000000FFFF00FF00FF00FF00C0C0C0FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF00
        FF00C0C0C0FF808080FFFF00FF00C0C0C0FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF00
        FF00000000FFFF00FF00FF00FF00C0C0C0FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF00
        FF00C0C0C0FF808080FFFF00FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00
        FF00000000FFFF00FF00FF00FF00808080FFFFFFFFFFC0C0C0FFC0C0C0FF0000
        00FFC0C0C0FF000000FFC0C0C0FF000000FFFFFFFFFF000000FFFF00FF00FF00
        FF00C0C0C0FF808080FFFF00FF00FF00FF00808080FFFFFFFFFF000000FFC0C0
        C0FF000000FFC0C0C0FF000000FFC0C0C0FFFFFFFFFF000000FFFF00FF00FF00
        FF00000000FFFF00FF00FF00FF00FF00FF00808080FFFFFFFFFFC0C0C0FF0000
        00FFC0C0C0FF000000FFC0C0C0FFFFFFFFFF000000FFFF00FF00FF00FF00FF00
        FF00FF00FF00000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF0000
        00FFFF00FF00000000FFC0C0C0FFC0C0C0FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FFC0C0C0FF000000FF808080FF808080FF0000
        00FFFF00FF00FF00FF00000000FFFFFFFFFF000000FF000000FFC0C0C0FFFF00
        FF00FF00FF00FF00FF00000000FF000000FF000000FFC0C0C0FF808080FF0000
        00FFFF00FF00FF00FF00FF00FF00000000FFFFFFFFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFFFFFFFF000000FF000000FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00}
      Transparent = True
    end
    object Label3: TLabel
      Left = 169
      Top = 29
      Width = 282
      Height = 13
      Caption = 'Two versions of a phone book that back up data differently.'
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 670
    Top = 95
    object edit_: TAction
      Caption = '????????...'
      Hint = '???????? ??????? ??????'
      ImageIndex = 6
      OnExecute = edit_Execute
    end
    object new_: TAction
      Caption = '????????...'
      Hint = '???????? ????? ??????'
      ImageIndex = 24
      OnExecute = new_Execute
    end
    object delete_: TAction
      Caption = '???????'
      Hint = '??????? ??????? ??????'
      ImageIndex = 1
      OnExecute = delete_Execute
    end
    object ExitOnEsc: TAction
      Caption = '??????? ? HTML'
      ShortCut = 27
      OnExecute = ExitOnEscExecute
    end
    object ToExcel: TAction
      Caption = '??????? ? Excel'
      OnExecute = ToExcelExecute
    end
    object ToHTML: TAction
      Caption = '??????? ? HTML'
      OnExecute = ToHTMLExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 532
    Top = 345
    object N3: TMenuItem
      Action = new_
      Caption = 'New..'
      Hint = 'New Entry'
      OnDrawItem = SelAll1DrawItem
    end
    object N5: TMenuItem
      Action = delete_
      Caption = 'Delete'
      Hint = 'Delete Entry..'
      OnDrawItem = SelAll1DrawItem
    end
    object N19: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N4: TMenuItem
      Action = edit_
      Caption = 'Edit'
      Hint = 'Edit Entry..'
      OnDrawItem = SelAll1DrawItem
    end
    object N15: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N30: TMenuItem
      Caption = 'Mail to..'
      Hint = 'Mail to..'
      OnClick = N30Click
      OnDrawItem = SelAll1DrawItem
    end
  end
  object PopupMenu3: TPopupMenu
    OnPopup = PopupMenu3Popup
    Left = 526
    Top = 41
    object N1: TMenuItem
      Caption = 'New'
      ImageIndex = 14
      OnClick = N1Click
      OnDrawItem = SelAll1DrawItem
    end
    object N2: TMenuItem
      Caption = 'Delete'
      ImageIndex = 1
      OnClick = N2Click
      OnDrawItem = SelAll1DrawItem
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 530
    Top = 229
    object SelAll1: TMenuItem
      Action = SelAll
      Caption = 'Select all'
      Hint = 'Select all'
      OnDrawItem = SelAll1DrawItem
    end
    object N34: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N21: TMenuItem
      Action = Copy
      Caption = 'Copy'
      Hint = 'Copy'
      OnDrawItem = SelAll1DrawItem
    end
    object N22: TMenuItem
      Action = Paste
      Caption = 'Paste'
      Hint = 'Paste'
      OnDrawItem = SelAll1DrawItem
    end
    object N20: TMenuItem
      Action = Cut
      Caption = 'Cut'
      Hint = 'Cut'
      OnDrawItem = SelAll1DrawItem
    end
    object N23: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N28: TMenuItem
      Action = AllUpper
      Caption = 'Upper Case'
      Hint = 'Upper Case'
      OnDrawItem = SelAll1DrawItem
    end
    object N26: TMenuItem
      Action = AllLower
      Caption = 'Lower Case'
      Hint = 'Lower Case'
      OnDrawItem = SelAll1DrawItem
    end
    object N27: TMenuItem
      Action = AllProper
      Caption = 'Proper Case'
      Hint = 'Proper Case'
      OnDrawItem = SelAll1DrawItem
    end
    object N25: TMenuItem
      Action = AllInvert
      Caption = 'Invert Case'
      Hint = 'Invert Case'
      OnDrawItem = SelAll1DrawItem
    end
    object N24: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N29: TMenuItem
      Action = Fontcfg
      Caption = 'Font'
      Hint = 'Font'
      OnDrawItem = SelAll1DrawItem
    end
    object N8: TMenuItem
      Caption = 'Word Wrapper'
      Hint = 'Word Wrapper'
      ImageIndex = 19
      OnClick = N8Click
      OnDrawItem = SelAll1DrawItem
    end
    object N12: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N13: TMenuItem
      Action = PrintNote
      Caption = 'Print'
      Hint = 'Print'
      OnDrawItem = SelAll1DrawItem
    end
  end
  object PopupMenu5: TPopupMenu
    OnPopup = PopupMenu5Popup
    Left = 527
    Top = 106
    object N6: TMenuItem
      Caption = 'New Entry'
      ImageIndex = 3
      ShortCut = 49197
      OnClick = NewTextExecute
      OnDrawItem = SelAll1DrawItem
    end
    object MenuItem1: TMenuItem
      Caption = 'New Sub Group'
      ImageIndex = 4
      ShortCut = 24621
      OnClick = NewSubCategoryExecute
      OnDrawItem = SelAll1DrawItem
    end
    object N7: TMenuItem
      Caption = 'Remove'
      ImageIndex = 1
      ShortCut = 16430
      OnClick = RemoveExecute
      OnDrawItem = SelAll1DrawItem
    end
    object N14: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N16: TMenuItem
      Caption = 'Expand'
      OnClick = N16Click
      OnDrawItem = SelAll1DrawItem
    end
    object N37: TMenuItem
      Caption = 'Close'
      OnClick = N37Click
      OnDrawItem = SelAll1DrawItem
    end
    object N9: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N10: TMenuItem
      Caption = 'Rename'
      Hint = 'Rename Entry'
      ImageIndex = 18
      ShortCut = 113
      OnClick = ChgPropExecute
      OnDrawItem = SelAll1DrawItem
    end
    object N11: TMenuItem
      Caption = '-'
      OnDrawItem = SelAll1DrawItem
    end
    object N17: TMenuItem
      Caption = 'Move to First'
      Hint = 'MOve to..'
      OnClick = SetFirstExecute
      OnDrawItem = SelAll1DrawItem
    end
    object N18: TMenuItem
      Caption = 'Sort List'
      Hint = 'Sort list..'
      OnClick = N18Click
      OnDrawItem = SelAll1DrawItem
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 596
    Top = 109
  end
  object ImageList1: TImageList
    Left = 604
    Top = 245
    Bitmap = {
      494C010122002800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000564A4A0082828200828282008282
      8200828282008282820082828200828282008282820082828200828282008282
      8200828282008282820082828200564A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282009F9F9F00BFBFBF00CCCC
      CC00CACACA00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CCCCCC00BDBDBD009F9F9F00828282000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000082828200B3B3B300A1A1A100CFCF
      CF00D1D1D100D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D1D1
      D100CACACA00A0A0A000B9B9B900828282000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000082828200D3D3D300A9A9A900AFAF
      AF00DADADA00D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D9D9
      D900ABABAB00ABABAB00D7D7D700828282000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000082828200DBDBDB00D0D0D0009C9C
      9C00C9C9C900E0E0E000DFDFDF00DFDFDF00DFDFDF00DFDFDF00E2E2E200C0C0
      C0009F9F9F00D9D9D900DBDBDB00828282000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000082828200E2E2E200E9E9E900C4C4
      C4009C9C9C00D9D9D900E2E2E200E0E0E000E0E0E000E1E1E100D3D3D3009F9F
      9F00CDCDCD00EAEAEA00E2E2E200828282000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF000000BF00
      0000BF00000000000000BF000000BF000000BF00000000000000000000000000
      00000000000000000000000000000000000082828200EBEBEB00EEEEEE00B5B5
      B5009C9C9C008282820082828200828282008282820082828200828282009C9C
      9C00C6C6C600F4F4F400EAEAEA00828282000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000BF00
      0000000000000000000000000000BF0000008080800000000000000000000000
      00000000000000000000000000000000000082828200D8D8D800A7A7A700ABAB
      AB00E5E5E500EAEAEA00E1E1E100E1E1E100E0E0E000E2E2E200E9E9E900D1D1
      D100A2A2A200AEAEAE00E0E0E000828282000000000000000000000000000000
      00000000000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000000000000000
      000000000000BF000000BF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000000000000000
      00000000000000000000000000000000000082828200A1A1A100C4C4C400F5F5
      F500F3F3F300F2F2F200F1F1F100F0F0F000EEEEEE00EDEDED00EDEDED00EDED
      ED00E8E8E800B8B8B800A4A4A400828282000000000000000000000000000000
      00000000000000000000FFFF0000FFFFFF00FFFF0000FFFFFF0000000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000BF00000000000000BF000000808080000000000000000000000000000000
      00000000000000000000000000000000000082828200B8B8B800F4F4F400F3F3
      F300F2F2F200F1F1F100F0F0F000EFEFEF00EEEEEE00EDEDED00E5E5E500DDDD
      DD00CFCFCF00C8C8C800C2C2C200828282000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF000000BF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BF000000BF000000BF000000000000000000000000000000000000000000
      000000000000000000000000000000000000807B7A0097979700F1F1F100F3F3
      F300E6E6E600DEDEDE00D2D2D200C7C7C700C4C4C400B6B6B600B6B6B600B7B7
      B700B7B7B700B5B5B500929292007F7878000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000BF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000BF00000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000009070700837C7B0096959500ADAD
      AD00B8B8B800B9B9B900BBBBBB00BBBBBB00BBBBBB00BABABA00BABABA00B9B9
      B900ADADAD0088878700746968000F0D0D000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000493E3D008482
      82009D9D9D00BABABA00BBBBBB00BBBBBB00BBBBBB00BBBBBB00B9B9B9009D9D
      9D00848181004C41400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0D
      0D007B7272008D8D8D00B1B1B100BBBBBB00BBBBBB00B4B4B4008E8E8E007B73
      7200141010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000564A4A00847F7E00898989008989890084807F00554948000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008000000080000000FF000000FF000000800000008000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000FF00000080000080808000FFFFFF00FFFFFF008080
      8000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000080000080808000FFFFFF00FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000000000000000000000000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000080000000FF0000C0C0C000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000808080000000
      0000808080000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000000000000000000080808000C0C0C000FFFF
      FF00808080000080000000000000000000000000000080808000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094000000940000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000CBCBCB008B8B8B0086868600A7A7A7009393930083838300B9B9
      B900E4E4E400FFFFFF0000000000000000009C6363009C6363009C6363009C63
      63009C6363009C6363009C6363009C6363009C6363009C6363009C6363009C63
      63009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800A5A5A500BD000000BD000000A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00DEDE
      DE00949494005F5F5F004444440042424200544E4E00817A7A004E4E4E005555
      550073737300AEAEAE00E0E0E00000000000CE9C9C00FFEFCE00FFEFCE00FFDE
      CE00FFDECE00FFDECE00FFDECE00FFDECE00FFDECE00FFDECE00FFDECE00FFDE
      CE009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      210084848400FFFFFF00FFBD4A00BD000000CECECE0052525200212121002121
      21005252520000000000000000000000000000000000FFFFFF00BABABA006363
      6300A5A5A500F1F1F100B2B2B2009E8B8B00A6868600B6B3B300E5E5E500B4B4
      B40057575700505050007A7A7A00E9E9E900CE9C9C00FFEFCE00FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFDECE00FFDECE00FFDECE00FFDE
      CE009C6363000000000000000000000000009452000094520000945200009452
      0000000000000000000000000000945200009452000094520000945200000000
      00000000FF000000FF00000000000000000000000000000000004A4A4A0000BD
      39006B6B6B00F7F7F700A5A5A500A5A5A5001818180052525200DEDEDE00FFFF
      FF00F7F7F700E7E7E700000000000000000000000000B7B7B7009A9A9A00EEEE
      EE00F1F1F100E8E8E800ACACAC00939393005F5F5F006D6D6D008C8C8C00BCBC
      BC00E9E9E900B1B1B10071717100ECECEC00CE9C9C00FFEFCE00FFF7D600FFF7
      D600FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFDECE00FFDECE005252
      00009C6363000000000000000000000000009452000094520000945200009452
      0000000000000000000000000000945200009452000094520000945200000000
      00000000FF000000FF00000000000000000000000000000000000031520052FF
      000000315200A5A5A5009400000094000000A5A5A500949494006B6B6B002121
      21000000000000000000000000000000000000000000CBCBCB00FAFAFA00F2F2
      F200D8D8D800959595007E7E7E0097979700B2B2B200A6A6A600949494008E8E
      8E0089898900646464007A7A7A00EDEDED00CE9C9C00FFF7D6009C0031009C00
      31009C0031009C0031009C003100FFEFCE00FFEFCE00FFDECE00FFDECE005252
      0000525200000000000000000000000000000000000094520000945200000000
      0000000000000000000000000000000000009452000094520000000000000000
      00000000FF000000FF000000000000000000000000000000000052FF000052FF
      000052FF0000A5A5A500FF522100BD000000A5A5A50063636300080808000808
      08003131310063636300000000000000000000000000B5B5B500D8D8D800A0A0
      A0009B9B9B00C9C9C900ABABAB008D8D8D0080808000838383009F9F9F00BFBF
      BF007AAA8A00575757007C7C7C00EDEDED00CE9C9C00FFF7D600FFF7D600FFF7
      D600FFF7D600FFF7D600FFEFCE00FFEFCE00FFEFCE00FFDECE00FFDECE005252
      000000BD39005252000000000000000000000000000000000000945200009452
      0000945200009452000094520000945200009452000000000000000000000000
      00000000FF000000FF000000000000000000000000000000000052FF000052FF
      000052FF0000A5A5A500FF522100FF5221009400000094000000A5A5A500E7E7
      E700B5B5B5009494940000000000000000000000000076767600A6A6A600D9D9
      D900D8D8D800D8D8D800D8D8D800E0E0E000CFCFCF00BEBEBE009D9D9D008989
      8900678471005656560082828200EDEDED00CE9C9C00FFF7D6009C0031009C00
      31009C0031005252000052520000525200005252000052520000525200005252
      000000BD390000BD390052520000000000000000000000000000945200009452
      0000945200009452000094520000945200009452000000000000000000000000
      00000000FF000000FF000000000000000000000000000000000052FF000052FF
      000052FF0000A5A5A500FF522100FF522100FF522100BD00000094000000A5A5
      A50021212100949494000000000000000000000000009E9E9E00E1E1E100D8D8
      D800D2D2D200C9C9C900D5D5D500CECECE00C2C2C200C0C0C000CCCCCC00D4D4
      D400CCCCCC0070707000A5A5A500F3F3F300CE9C9C00FFF7D600FFF7D600FFF7
      D600FFF7D6005252000000BD390000BD390000BD390000BD390000BD390000BD
      390000BD390000BD390000BD3900525200000000000000000000945200009452
      0000000000000000000000000000945200009452000000000000000000000000
      00000000FF000000FF000000000000000000000000000018520052FF000052FF
      000052FF000052FF0000A5A5A500FFBD4A00FF522100FF522100FF5221009400
      000052FF000000940000000000000000000000000000AEAEAE00D5D5D500C2C2
      C200AAAAAA00A5A5A500CFCFCF00F0F0F000EDEDED00EAEAEA00D9D9D900BFBF
      BF00BEBEBE0088888800E4E4E40000000000CE9C9C00FFF7D6009C0031009C00
      31009C0031005252000000BD390000BD390000BD390000BD390000BD390000BD
      390000BD390000BD390000BD3900525200000000000000000000000000009452
      0000945200000000000094520000945200000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000BD390052FF0000A5A5
      A500A5A5A500080808000094000000315200A5A5A500FFBD4A00FF522100BD00
      0000A5A5A50063636300000000000000000000000000F5F5F500C6C6C600C9C9
      C900ECECEC00B2B2B200BABABA00AEAEAE00B6B6B600BDBDBD00BDBDBD00B3B3
      B300A7A7A700E9E9E9000000000000000000CE9C9C00FFF7D600FFF7D600FFF7
      D600FFF7D6005252000052520000525200005252000052520000525200005252
      000000BD390000BD390052520000000000000000000000000000000000009452
      0000945200000000000094520000945200000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000BD3900A5A5A5009400
      000094000000A5A5A500000000000000000000000000A5A5A500FF522100BD00
      0000A5A5A500000000000000000000000000000000000000000000000000C3BB
      BB00FFD4C500FFD2C700FBD7CE00EFDCD500E5E1DF00E7E7E70085858500BFBF
      BF00FFFFFF00000000000000000000000000CE9C9C00FFF7D6009C0031009C00
      31009C0031009C0031009C0031009C0031009C003100FFEFCE00FFCECE005252
      000000BD39005252000000000000000000000000000000000000000000000000
      00009452000094520000945200009452000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000021212100A5A5A500FF52
      2100BD000000A5A5A500001852000000000000DE0000FFBD4A00FF522100BD00
      0000A5A5A500000000000000000000000000000000000000000000000000D5BF
      B800FFDCB800FFDCB800FFDCB800FFD6B300FFD4AF0079626000BCBCBC00FFFF
      FF0000000000000000000000000000000000CE9C9C00FFF7D600FFF7D600FFF7
      D600FFEFCE00FFEFCE00FFF7D600FFF7D600FFF7D600FFCECE00FFCECE005252
      0000525200000000000000000000000000000000000094520000945200009452
      0000945200009452000094520000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000000000000000000000000A5A5A500FF52
      2100FF522100BD000000A5A5A500A5A5A500A5A5A500FF522100FF5221009400
      0000A5A5A5000000000000000000000000000000000000000000FFFFFF00CAAA
      A100FFE5CB00FFE5CB00FFE5CB00FFE5CB00F9DDC40073666600E3E3E3000000
      000000000000000000000000000000000000CE9C9C00FFF7D6009C0031009C00
      31009C0031009C003100FFEFCE00FFF7D600FFEFCE009C6363009C6363005252
      00009C6363000000000000000000000000000000000094520000945200009452
      0000945200009452000094520000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000000000000000FFBD
      4A00FF522100FF522100BD000000BD000000BD000000FF522100BD0000009400
      0000000000000000000000000000000000000000000000000000ECE9E900DFC3
      B700FFEDDC00FFEDDC00FFEDDC00FFEDDC00DAC1B50092929200F0F0F0000000
      000000000000000000000000000000000000CE9C9C00FFF7D600FFF7D600FFF7
      D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600CE9C9C00FFF7D6009C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFBD4A00FF522100FF522100FF522100FF522100BD000000940000000000
      00000000000000000000000000000000000000000000FFFFFF00CDB9B800FFF7
      EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00B0A19C00CECECE00FFFFFF000000
      000000000000000000000000000000000000CE9C9C00FFF7D600FFF7D600FFF7
      D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600CE9C9C009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500313131000000
      00000000000000000000000000000000000000000000F8F5F500D8C5C400F5F1
      F000E6D8D700E6D8D700E6D8D700EADFDE00DFD8D800FFFFFF00000000000000
      000000000000000000000000000000000000CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00A56F
      6F00A56F6F00A56F6F00A56F6F00000000000000000000000000004B8200004B
      8200004B8200A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00A56F
      6F00A56F6F00A56F6F00A56F6F00000000000000000000000000000000000000
      00000000000000000000D3957000CC835700C8764600CA7B4E00CB7B4E00CA7B
      4E00CA7B4E00CA7B4E00CA815500CD865C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56F6F00FEFEFC00FEFEFE00FEFEFC00FEFEFC00FEFEFC00FEFE
      FC00FEFEFC00FEFEFC00A56F6F000000000000000000004B820025ACDA0020A7
      D8001CA3D500A56F6F00FEFEFC00FEFEFE00FEFEFC00FEFEFC00FEFEFC00FEFE
      FC00FEFEFC00FEFEFC00A56F6F00000000000000000000000000000000000000
      00000000000000000000CB825600FCF3EC00FAF1E800FAF0E700FBF1E900FBF2
      EA00FBF2EA00FBF2EB00FDF4EE00CB8358000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56F6F00FEFAF6009E6458009E6458009E6458009E6458009E64
      58009E645800FEFAF600A56F6F000000000000000000004B82002DB4DE0028AF
      DC0022AAD900A56F6F00FEFAF6009E6458009E6458009E6458009E6458009E64
      58009E645800FEFAF600A56F6F00000000000000000000000000000000000000
      00000000000000000000CF825300EFF1E700FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00EFF2E800CE8156000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56F6F00FEF6EF00FEF8F300FEF6EF00FEF6EF00FEF6EF00FEF6
      EF00FEF6EF00FEF6EF00A56F6F000000000000000000004B820034BAE2002EB4
      E00029AFDD00A56F6F00FEF6EF00FFF0E600FEF3E900FEF6ED00FFF7F000FEFA
      F300FEFBF700FEF6EF00A56F6F00000000000000000000000000000000000000
      00000000000000000000CD855500FBF5EE00FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FBF6EF00CC8356000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00A56F6F00A56F6F00A56F
      6F00A56F6F00A56F6F00FEF3E7009E6458009E6458009E6458009E6458009E64
      58009E645800FEF3E700A56F6F000000000000000000004B82003CBFE70036BA
      E30031B5E100A56F6F00FEF3E7009E6458009E6458009E6458009E6458009E64
      58009E645800FEF3E700A56F6F0000000000D69E7C00D3936E00CF875E00D08C
      6400D18C6400D08C6400CA845200FFF7F100FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FFF7F100CB8556000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FEFEFC00FEFEFE00FEFE
      FC00FEFEFC00A56F6F00FEEFE100FFF0E300FEEFE100FEEFE100FEEFE100FEEF
      E100FEEFE100FEEFE100A56F6F000000000000000000004B820043C5EB003EC1
      E70038BCE500A56F6F00FFEBDA00FFEBDA00FFEBDA00FFEDDD00FFEEDE00FFEF
      E200FFF2E500FFEBDA00A56F6F0000000000D1936D00FCF5EE00FBF3EB00FBF2
      EA00FCF3EC00FCF4ED00E4BA9100FFF7F000FFE7D500FDE7D600FDE6D400FCE4
      D000FBE3CB00FADCC200FEF3E800CC8657000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FEFAF6009E6458009E64
      58009E645800A56F6F00FFEBDA009E6458009E6458009E6458009E6458009E64
      58009E645800FFEBDA00A56F6F000000000000000000004B82004BCBEF0045C7
      ED0040C2E900A56F6F00FFE7D3009E6458009E6458009E6458009E645800BF93
      8700BD958700CBB5A700A56F6F0000000000D5926900F1F3EA00FFECDE00FFED
      E000FFECDE00FFEADC00E4BB9100FFF7F200FEE7D500FEE7D500FDE5D100FAE0
      CA00F9DEC400F7D9BC00FDF2E700CC8758000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FEF6EF00FEF8F300FEF6
      EF00FEF6EF00A56F6F00FFE7D300FFE7D300FFE7D300FFE7D300FFE7D300E2C9
      BA00E0CABA00CBB5A700A56F6F000000000000000000004B820052D0F3004CCC
      EF0047C7EE00A56F6F00FFE5CC00FFE3CB00FFE5CC00FFE5CC00FFE5CC00B495
      9100B5969200BFA19C00BF81810000000000D3956A00FCF6F000FFECDE00FFED
      E000FFECDE00FFEADC00E4BB9200FEF7F100FCE5D200FCE4D100FBE2CC00F9DD
      C400F6D7BB00F3D1AF00FAEFE400CC8759000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FEF3E7009E6458009E64
      58009E645800A56F6F00FFE5CC00FFE3CB00FFE5CC00FFE5CC00FFE5CC00B495
      9100B5969200BFA19C00BF8181000000000000000000004B820059D5F60054D1
      F3004FCFF000A56F6F00FFE1C500FFE1C500FFE1C500FFE1C500FADCC100B697
      9300FEFEFE00BF8181000000000000000000D1956A00FFF8F300FFECDE00FFED
      E000FFECDE00FFEADC00E4BB9200FEF6F000FCE2CD00FCE3CD00FADFC800F7D9
      BC00F5E9DD00FAF3EB00FBF8F300CA8354000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FEEFE100FFF0E300FEEF
      E100FEEFE100A56F6F00FFE1C500FFE1C500FFE1C500FFE1C500FADCC100B697
      9300FEFEFE00BF818100000000000000000000000000004B82005FDAF8005BD8
      F60055D3F300A56F6F00FFDEC100FFDEC100FFDEC100FFDEC100E2C1AD00C5A7
      A000BF818100004B82000000000000000000D2966B00FFF8F200FFEADA00FDEA
      DB00FDE9DA00FCE7D600E4BB9300FEF5ED00FCDEC500FBE0C700F9DCC200F5D3
      B400FEF9F300FAE2C400ECC19300DCB496000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FFEBDA009E6458009E64
      58009E645800A56F6F00FFDEC100FFDEC100FFDEC100FFDEC100E2C1AD00C5A7
      A000BF81810000000000000000000000000000000000004B820065DEFB0060DC
      F8005CD8F700A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00BF81
      810038BBE500004B82000000000000000000D2976C00FFF8F400FEEADA00FEEA
      DA00FDE8D700FBE4D100E5BE9600FFFFFE00FDF3E900FDF3EA00FCF2E800FAEF
      E300FAF2E700EABB8800DDA98800FBF8F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FFE7D300FFE7D300FFE7
      D300FFE7D300A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00A56F6F00BF81
      81000000000000000000000000000000000000000000004B820069E1FE0066DE
      FB0063DDFB0063DDFB005DD9F80057D5F60050CFF20049C9EE0042C2EA003CBF
      E70038BBE500004B82000000000000000000D2976D00FEF8F300FCE8D800FCE7
      D700FCE6D300FAE1CC00EAC39D00E6BF9600E4BB9200E4BB9200D3A47200D2A1
      7200D3A57600E2BDA200FCFAF800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FFE5CC00FFE3CB00FFE5
      CC00FFE5CC00FFE5CC00B4959100B5969200BFA19C00BF818100000000000000
      00000000000000000000000000000000000000000000004B82006AE2FE006AE2
      FE005858580058585800585858005858580058585800585858005858580045C7
      EB0040C1E900004B82000000000000000000D2976D00FEF7F200FCE6D300FCE7
      D300FBE3CF00F8DEC500F6ECE100FBF5EE00FCF9F500D4A47A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FFE1C500FFE1C500FFE1
      C500FFE1C500FADCC100B6979300FEFEFE00BF81810000000000000000000000
      00000000000000000000000000000000000000000000004B82006AE2FE006AE2
      FE0058585800C1B0AA00C1B0A900C1B0A900C1B0A900C0ACA400585858004DCC
      F00047C7ED00004B82000000000000000000D3986F00FEF6EF00FCE2CD00FCE4
      CE00FAE1CA00F6D9BE00FEFAF500FBE6CC00EEC9A100E1BEA300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00FFDEC100FFDEC100FFDE
      C100FFDEC100E2C1AD00C5A7A000BF8181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004B8200004B
      820058585800D9CCC600F8F7F600F7F6F400F7F6F400C2B5AD0058585800004B
      8200004B8200000000000000000000000000D49B740000000000FDF5EC00FDF5
      ED00FCF4EB00FBF1E700FBF4EA00EDC49700E2B49700FCF9F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56F6F00A56F6F00A56F6F00A56F
      6F00A56F6F00A56F6F00BF818100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005858580058585800585858005858580058585800000000000000
      000000000000000000000000000000000000DAA68400D69D7600D3976D00D299
      6E00D3996E00D2986F00D49A7000E6C5AD00FDFAF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A7440700A23F080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630063636300000000000000000000000000636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630063636300000000000000000000000000000000000000
      000000000000A23F0800A5420800A23F0800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001884B5001884B500107B
      B500107BAD00107BAD000873AD000873A5000873A500006BA500006B9C00006B
      9C0000639C0000639C006363630063636300000000001884B5001884B500107B
      B500107BAD00107BAD000873AD000873A5000873A500006BA500006B9C00006B
      9C0000639C0000639C0063636300636363000000000000000000000000000000
      000000000000A74407000000000000000000A23F0800A23F080000000000A23F
      0800A74407000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002184BD0063CEFF001884BD009CFF
      FF006BD6FF0052ADD60052ADD60052ADD60052ADD60052ADD60052ADD60052AD
      D60039A5D6009CFFFF0000639C00636363002184BD0063CEFF001884BD009CFF
      FF006BD6FF0052ADD60052ADD60052ADD60052ADD60052ADD60052ADD60052AD
      D60039A5D6009CFFFF0000639C00636363000000000000000000000000000000
      000000000000A74407000000000000000000A23F080000000000A23F0800A23F
      0800A23F0800A542080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000218CBD0063CEFF00218CBD009CFF
      FF00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBD
      BD00CEBDBD00CEBDBD0000639C0063636300218CBD0063CEFF00218CBD009CFF
      FF00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBD
      BD00CEBDBD00CEBDBD0000639C00636363000000000000000000000000000000
      000000000000A5420800A23F0800A23F0800A23F080000000000A23F08000000
      000000000000A643070000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000218CC60063CEFF002994C6009CFF
      FF00CEBDBD00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00CEBDBD00006B9C0063636300218CC60063CEFF002994C6009CFF
      FF00CEBDBD00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00CEBDBD00006B9C00636363000000000000000000000000000000
      00000000000000000000A23F0800A7440700A5420800A23F0800A54208000000
      000000000000A23F080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000298CC60063CEFF00319CCE009CFF
      FF00CEBDBD00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00CEBDBD00006B9C0063636300298CC60063CEFF00319CCE000000
      0000000000000000000000000000F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00CEBDBD00006B9C00636363000000000000000000000000000000
      00000000000000000000000000009E410D00A14E2200A23F0800A7440700A542
      0800A5420800A23F080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002994C6006BD6FF00319CCE009CFF
      FF00CEBDBD00F7EFDE00FFDEAD00FFDEAD00FFDEAD0000000000FFDEAD00FFDE
      AD00F7EFDE00CEBDBD00006BA500636363002994C6006BD6FF00319CCE000000
      000031F7420031F7420000000000FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDE
      AD00F7EFDE00CEBDBD00006BA500636363000000000000000000000000000000
      0000000000000000000000000000957D75008D766C00A55E3900A23F0800A23F
      0800A23F08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002994C6007BE7FF00319CCE00FFFF
      FF00F7EFDE00FFFFFF00FFFFFF00FFFFFF000000000031F7420000000000FFFF
      FF00FFFFFF00F7EFDE000873A500636363002994C6007BE7FF00319CCE000000
      000031F7420031F7420000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7EFDE000873A500636363000000000000000000000000000000
      000000000000000000008E7C7200AC928E008E7C72008E7C7200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003194CE0084EFFF00319CCE00319C
      CE00AD7B5A00B5BDB500B5BDB5000000000031F7420031F7420031F742000000
      0000B5BDB500AD7B5A001884B500000000000000000000000000000000000000
      000031F7420031F7420000000000000000000000000000000000B5BDB500B5BD
      B500B5BDB500AD7B5A001884B500000000000000000000000000000000000000
      0000000000008E7C7200D3BDBD008E7C7200AD938F008E7C7200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000319CCE0094F7FF008CF7FF008CF7
      FF00AD7B6300FFF7E7000000000031F7420031F7420031F7420031F7420031F7
      420000000000AD7B630063636300000000000000000031F7420031F7420031F7
      420031F7420031F7420031F7420031F7420031F7420000000000FFF7E700FFF7
      E700FFF7E700AD7B630063636300000000000000000000000000000000000000
      00008E7C7200E9DEDE008E7C7200A9958F00D2BABA008E7C7200000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF0000000000000000000000FF0000000000000000000000FF000000FF00
      000000000000000000000000000000000000319CCE00FFFFFF009CFFFF009CFF
      FF00B58463000000000031F7420031F7420031F7420031F7420031F7420031F7
      420031F742000000000063636300000000000000000031F7420031F7420031F7
      420031F7420031F7420031F7420031F7420031F7420000000000FFDEB500FFDE
      B500FFF7EF00B584630063636300000000000000000000000000000000008E7C
      7200FCFAFA008E7C7200000000008E7C7200DFCECE008E7C7200000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF0000000000000000000000FF00000000000000FF000000000000000000
      0000FF00000000000000000000000000000000000000319CCE00FFFFFF00FFFF
      FF00B5846B0000000000000000000000000031F7420031F7420031F742000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031F7420031F7420000000000000000000000000000000000FFFFF700FFEF
      CE00FFEFCE00B5846B0063636300000000000000000000000000000000008E7C
      72008E7C720000000000000000008E7C7200ECE2E2008E7C7200000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF00000000000000FF000000FF00000000000000FF000000000000000000
      0000FF0000000000000000000000000000000000000000000000319CCE00319C
      CE00BD8C6B00FFFFFF00FFDEB5000000000031F7420031F7420031F742000000
      0000FFA53100FFA5310000000000000000000000000000000000319CCE000000
      000031F7420031F7420000000000FFDEB500FFDEB500FFDEB500FFFFFF00FFA5
      3100FFA53100FFA5310000000000000000000000000000000000000000008E7C
      72000000000000000000000000008E7C7200F9F5F5008E7C7200000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF000000FF00000000000000FF00000000000000FF000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000C6947300FFFFFF00FFFFFF000000000031F7420031F7420031F742000000
      0000FFB55A000000000000000000000000000000000000000000000000000000
      000031F7420031F7420000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB5
      5A00FFB55A000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008E7C72008E7C720000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF0000000000000000000000FF00000000000000FF000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000C6947300C6947300C6947300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6947300C6947300C6947300C6947300FFB5
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008E7C72000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D03000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D03000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D03000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      0000009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FF000000000000000000
      000000000000FF00000000000000FF0000000000000000000000FF0000000000
      000000000000FF0000000000000000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000FF000000FF0000000000
      000000000000FF000000FF0000000000000000000000FF00000000000000FF00
      000000000000FF000000FF00000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF00000000000000FF00
      000000000000FF00000000000000FF000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF00000000000000FF00
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630063636300000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000000000006B8CFF006B8CFF006B8C
      FF006B8CFF006B8CFF006B8CFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000001884B5001884B500107B
      B500107BAD00107BAD000873AD000873A5000873A500006BA500006B9C00006B
      9C0000639C0000639C0063636300636363000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008080800000000000000000006B8CFF006B8CFF000000
      0000000000006B8CFF006B8CFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000002184BD0063CEFF001884BD009CFF
      FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6
      FF0039A5D6009CFFFF0000639C00636363000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000008000C0C0
      C00000000000FFFFFF00800000008000000080000000FFFFFF00FFFFFF008000
      000080000000FFFFFF008080800000000000000000006B8CFF00000000000000
      000000000000000000006B8CFF000000000000FF000000000000000000000000
      000000FF000000FF000000FF000000000000218CBD0063CEFF00218CBD00006B
      1800006B1800006B18007BE7FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7
      FF0042ADDE009CFFFF0000639C00636363000000000000000000000000000000
      0000F7000000FF000000FF000000FF0000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008080800000000000000000006B8CFF006B8CFF006B8C
      FF006B8CFF006B8CFF006B8CFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000218CC60063CEFF002994C6000000
      000031EF6300006B180084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EF
      FF004AB5E7009CFFFF00006B9C00636363000000000000000000000000000000
      000000000000FF000000FF000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000008000C0C0
      C00000000000FFFFFF00800000008000000080000000FFFFFF00FFFFFF008000
      000080000000FFFFFF0080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000FF000000000000298CC60063CEFF00319CCE000000
      000031EF6300006B180094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0052BDEF009CFFFF00006B9C00636363000000000000000000000000000000
      000000000000FF000000FF000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000008000C0C0
      C00000000000FFFFFF00800000008000000080000000FFFFFF00FFFFFF008000
      000080000000FFFFFF0080808000000000000000000000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000006B1800006B1800006B18000000
      000031EF6300006B1800006B1800006B1800006B18009CFFFF009CFFFF009CFF
      FF005AC6FF009CFFFF00006BA500636363000000000000000000000000000000
      000000000000FF000000FF000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF00000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000FFFF00848484000000
      0000000000008484840000FFFF000000000000FF000000FF0000000000000000
      0000000000000000000000FF0000000000000000000031EF630031EF630031EF
      630031EF630031EF630031EF630031EF6300006B1800FFFFFF00FFFFFF00FFFF
      FF0084E7FF00FFFFFF000873A500636363000000000000000000000000000000
      000000000000FF000000FF000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000008000C0C0
      C00000000000FFFFFF0000000000000000000000000000000000C0C0C0008000
      000080000000C0C0C00080808000000000000000000084848400000000000000
      00000000000000000000848484000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000031EF6300000000000000000000000000006B1800218CC600218CBD001884
      BD001884B5001884B5001884B500000000000000000000000000000000000000
      00000000FF00FF000000FF000000000000000000FF000000FF00000000000000
      0000000000000000FF0000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF00808080000000000000000000C0C0C000000000008080
      8000C0C0C000C0C0C00080808000000000000000000084848400848484000000
      00000000000084848400848484000000000000FF000000000000000000000000
      000000FF000000FF000000FF000000000000319CCE0094F7FF008CF7FF000000
      000031EF6300006B18008CF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00107BAD006363630000000000000000000000000000000000000000000000
      00000000FF000000FF00FF000000000000000000FF000000FF00000000000000
      00000000FF000000FF0000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF00FFFFFF008080800000000000FFFFFF00FFFFFF00C0C0
      C000000000000000000080808000000000000000000000FFFF00848484000000
      0000000000008484840000FFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000319CCE00FFFFFF009CFFFF000000
      000031EF6300006B1800FFFFFF00218CBD002184BD001884B5001884B5001884
      B500107BB5000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF00C0C0
      C000000000000080800000000000808080000000000000FFFF00848484000000
      0000000000008484840000FFFF000000000000FF000000000000000000000000
      0000000000000000000000FF00000000000000000000319CCE00FFFFFF000000
      000000000000006B1800298CC600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000FF000000FF000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00008080800000000000C0C0C0000000
      000000FFFF008000000000000000000000000000000000FFFF00848484008484
      8400848484008484840000FFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000319CCE00319C
      CE003194CE002994C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF0000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF0000FFFF0000808000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FF000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF00FFFFFF0000FFFF00800000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      63009C6363009C6363009C6363009C6363009C6363009C6363009C6363009C63
      63009C6363009C6363009C6363009C636300FFFFFF00214AC600214AC600214A
      C600214AC600214AC600214AC600214AC600214AC600214AC600214AC600214A
      C600214AC600214AC60008189400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000000000CE9C
      9C00FFEFCE00FFEFCE00FFDECE00FFDECE00FFDECE00FFDECE00FFDECE00FFDE
      CE00FFDECE00FFDECE00FFDECE009C636300FFFFFF001042CE00295AEF003963
      E700425AF700395AE700426BD600315ACE00395AD600315AD6002952EF00104A
      FF00004AE700084AE700214AC600FFFFFF000000000000000000000000000000
      FF00000084000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      000000000000C6C6C600C6C6C6000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000000000CE9C
      9C00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFDE
      CE00FFDECE00FFDECE00FFDECE009C636300FFFFFF002152DE00295AF700526B
      EF005263D6008C94E700FFFFFF00FFFFFF00FFFFFF00FFFFFF007B94E7003152
      D600295AF7000039E700214AC600FFFFFF0000000000000000000000FF000000
      FF000000FF000000840000000000000000000000000000000000000000000000
      00000000FF0000008400000000000000000000000000C6C6C600000000000000
      00000000000000000000C6C6C6000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000000000CE9C
      9C00FFEFCE00FFF7D600FFF7D600FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEF
      CE00FFDECE00FFDECE00FFDECE009C636300FFFFFF00215AE7003163FF00526B
      D600B5CEEF00FFFFFF008C9CE7005A6BD6004A5AD60084A5DE00FFFFFF009CC6
      EF00184AD6000042EF00214AC600FFFFFF0000000000000000000000FF000000
      FF000000FF000000840000000000000000000000000000000000000000000000
      FF000000840000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000009C63
      63009C6363009C6363009C0031009C0031009C0031009C003100FFEFCE00FFEF
      CE00FFDECE00FFDECE00FFDECE009C636300FFFFFF00295ADE00426BF70094A5
      EF00FFFFFF005A7BD6005263D600849CF700738CF700425ADE00426BCE00FFFF
      FF007394EF001852EF00214AC600FFFFFF000000000000000000000000000000
      FF000000FF000000FF00000084000000000000000000000000000000FF000000
      FF00000084000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000009C63
      630000FF00009C636300FFF7D600FFF7D600FFF7D600FFEFCE00FFEFCE00FFEF
      CE00FFDECE00FFDECE00FFDECE009C636300FFFFFF003963DE00526BDE00FFFF
      FF009CADEF004A6BEF00526BE700FFFFFF00FFFFFF00315ADE00214AE7007B94
      DE00FFFFFF00214ACE00214AC600FFFFFF000000000000000000000000000000
      00000000FF000000FF000000FF0000008400000000000000FF000000FF000000
      8400000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FF000000FF0000C6C6C60000FF
      000000FF000000FF000000FF0000000000000000000000000000000000009C63
      630000FF00009C6363009C0031009C0031009C0031009C0031009C003100FFEF
      CE00FFEFCE00FFEFCE00FFDECE009C636300FFFFFF004A63EF005A73DE00FFFF
      FF007373CE006373FF004A6BE700FFFFFF00FFFFFF003163E700315AF7004252
      CE00FFFFFF00214AD600214AC600FFFFFF000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000FFFF000000000000FF0000C6C6C6000000000000FF
      000000FF000000FF000000FF0000000000009C6363009C6363009C6363009C63
      630000FF00009C6363009C6363009C6363009C636300FFF7D600FFF7D600FFEF
      CE00FFEFCE00FFEFCE00FFDECE009C636300FFFFFF00526BEF005273D600FFFF
      FF00736BCE005273F7004A6BE700FFFFFF00FFFFFF002952E7003163F700294A
      CE00FFFFFF00184AD600214AC600FFFFFF000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000008400000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000C6C6C60000000000000000008484
      8400848484008484840000FF0000000000009C63630000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00009C6363009C0031009C0031009C00
      3100FFEFCE00FFEFCE00FFDECE009C636300FFFFFF00637BF7006B84EF00FFFF
      FF009CADEF00526BEF004A6BEF00FFFFFF00FFFFFF002952F700184AE7006B94
      DE00FFFFFF002952DE00214AC600FFFFFF000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000FF0000000000009C6363009C6363009C6363009C63
      630000FF00009C6363009C6363009C6363009C636300FFF7D600FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFDECE009C636300FFFFFF005A7BE7006B84F700A5BD
      EF00FFFFFF007384D6004A63D6007B9CE700738CEF003952E700425ACE00FFFF
      FF008C8CE700315AEF00214AC600FFFFFF000000000000000000000000000000
      00000000FF000000FF000000FF0000008400000000000000FF00000084000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000C6C6C60000000000000000008484
      8400848484008484840000FF0000000000000000000000000000000000009C63
      630000FF00009C6363009C0031009C0031009C0031009C0031009C0031009C00
      3100FFEFCE00FFCECE00FFCECE009C636300FFFFFF006B8CEF007B8CFF007B8C
      DE00CED6EF00FFFFFF00A5ADEF004A6BCE004A5AD600849CDE00FFFFFF00B5C6
      EF00314AE7002963F700214AC600FFFFFF0000000000000000000000FF000000
      FF000000FF000000FF00000084000000000000000000000000000000FF000000
      FF00000084000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000FFFF000000000000FF0000C6C6C6000000000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000009C63
      630000FF00009C636300FFF7D600FFEFCE00FFEFCE00FFF7D600FFF7D600FFF7
      D600FFCECE00FFCECE00CE9C9C009C636300FFFFFF007B94E70094A5FF008C94
      F7007B8CD6009CB5E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00849CDE004A6B
      CE00315AF7003173F700214AC600FFFFFF00000000000000FF000000FF000000
      FF000000FF000000840000000000000000000000000000000000000000000000
      FF000000FF000000840000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FF000000FF0000C6C6C60000FF
      000000FF000000FF000000FF0000000000000000000000000000000000009C63
      63009C6363009C6363009C0031009C0031009C003100FFEFCE00FFF7D600FFEF
      CE009C6363009C6363009C6363009C636300FFFFFF0094ADF700A5C6FF00949C
      F7008494F700738CF7007B94DE007B84DE007384DE007384DE005A73EF00637B
      EF004A73F7003963E700214AC600FFFFFF00000000000000FF000000FF000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000008400000000000000000000FFFF00000000000000
      0000000000000000000000FFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7
      D600CE9C9C00FFF7D6009C63630000000000FFFFFF007B8CEF0073A5FF006B8C
      FF006B84F7005A73FF00527BEF005A73FF005A73F700526BEF00396BF7004A63
      FF00295AF7002952EF00214AC600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7
      D600CE9C9C009C636300000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF008000FFFF000000008000FFFF00000000
      8000FFFF0000000080C0FFFF000000008000C0030000000080C0C00300000000
      8000FFFF0000000080C0C003000000008000FFFF0000000080C0C00300000000
      8000FFFF0000000080C0C003000000008000C003000000008000FFFF00000000
      8000FFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFC000000081FF
      FC00FFFF000081FFFFFFFFFF000081FFC000C000000081FFFFFFFFFF000081FF
      FC00FFFF000081FFFFFFC4400000801BC000CE7F0000F819FFFFE0FF0000F800
      FC00E4C000008019FFFFF1FF000081FBC000F1FF000081FFFFFFFBC0C00381FF
      FFFFFFFFE007FFFFFFFFFFFFF81FFFFFFC03FFFFFFFFFFFFF801F000FFFFFFFF
      F803FFFF801FE007F807F070FFFFFFFFFC07FCF980018001FC03FE79FFFFFFFF
      F803FF01801FE007F001FF99FFFFFFFFF000BBC980018001E00193E1FFFFFFFF
      A00183F1801FE007C001D7F9FFFFFFFF0000D7FF80018001C000C7FFFFFFFFFF
      A801EFFFFFFFFFFFEE07FFFFFFFFFFFFFCFFF0030007FFFFF07FC0010007FFFF
      E007800000070E13C003800000070E13C003800000079F33800380000003C073
      800380000001C073800380000000CE73800380010000E4F3800380030001E4F3
      8007E0070003F0C08007E00F000781E1C007C01F000781F3E00FC01F000FFFFF
      F01F801F001FFFFFF81F803F003FFFFFF801C001FC00FF9FF8018001FC00FF9F
      F8018001FC00C187F8018001FC00C983000180010000C993000180010000F193
      000180010000C983000180010000E387000180030000FFFF00038003000088E7
      00078003000088E7000F8003000188E7003F8003003F2260007F8003003F2264
      00FFC007403FFFFF01FFF83F007FFFFFFFFFFFFFFFFFFC7F8264C001C001F87F
      326480008000FB27326400000000FB43820400000000F85BF26400000000FC1B
      F26400000000FE03866400000000FE07FF0C00000000FC3FFF9C00010001F83F
      FFFF00010001F03FD6CF00010001E23FD6B780010001E63FD4B7C003C003EE3F
      D2B7F007E007FE7FD6B7F00FE00FFEFFFFFFFFFFFFFFFFFFC00783CC33E03304
      800333CC33CC32648003324C33CC326480038240026003048003F3CC327C33E4
      8003F3CC33FC33E4800387CC33E1330F8003FFE187FF87FC8003FFF3CFFFCFFC
      8003FFFFFFF7FFFF800383FFFFE3BADB8003C7FFFFC199A98003EFFFFFFFAAAA
      C007FFFFFFFFAAAAFFFFFFFFFFFF99D9FFFFFFFFFFFF0000C001FE1FC0010000
      8000FF3F800100000000FF3F800100000000F03F800100000000F93F80010000
      0000F93F800100000000F93F800100000000F93F800100000001F13B80010000
      0003F133800100000007F0038000000081FFB9DF80000000C3FF999F80000000
      FFFF801FFFC00000FFFFFFFFFFE000008001FFFF0000E0000000FFFF0000E000
      0000E7FF0000E0000000C3F30000E0000000C3E70000E0000000E1C70000E000
      0000F08F0000E0000000F81F000000000000FC3F000000000000F81F00000000
      0000F09F0000E0000000C1C70000E000000083E30000E00000008FF10000E001
      0000FFFF0000E0038001FFFF0000E00700000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 605
    Top = 312
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      63009C6363009C6363009C6363009C6363009C6363009C6363009C6363009C63
      63009C6363009C6363009C6363009C6363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      630063636300636363006363630000000000000000000000000000000000CE9C
      9C00FFEFCE00FFEFCE00FFDECE00FFDECE00FFDECE00FFDECE00FFDECE00FFDE
      CE00FFDECE00FFDECE00FFDECE009C6363000000000000000000636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      63006363630063636300636363000000000000000000808080FF000000000000
      0000C0C0C0FF000000FF00000000000000000000000000000000000000000000
      0000C0C0C0FF000000FF0000000000000000000000001884B5001884B500107B
      B500107BAD00107BAD000873AD000873A5000873A500006BA500006B9C00006B
      9C0000639C0000639C006363630063636300000000000000000000000000CE9C
      9C00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFDE
      CE00FFDECE00FFDECE00FFDECE009C636300000000001884B5001884B500107B
      B500107BAD00107BAD000873AD000873A5000873A500006BA500006B9C00006B
      9C0000639C0000639C006363630063636300000000FF0000000000000000C0C0
      C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000002184BD0063CEFF001884BD009CFF
      FF006BD6FF0052ADD60052ADD60052ADD60052ADD60052ADD60052ADD60052AD
      D60039A5D6009CFFFF0000639C0063636300000000000000000000000000CE9C
      9C00FFEFCE00FFF7D600FFF7D600FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFEF
      CE00FFDECE00FFDECE00FFDECE009C6363002184BD0063CEFF001884BD009CFF
      FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6
      FF0039A5D6009CFFFF0000639C0063636300C0C0C0FF808080FF00000000C0C0
      C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000218CBD0063CEFF00218CBD009CFF
      FF00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBD
      BD00CEBDBD00CEBDBD0000639C0063636300000000000000000000000000CE9C
      9C00FFF7D6009C0031009C0031009C0031009C0031009C003100FFEFCE00FFEF
      CE00FFDECE00FFDECE00FFDECE009C636300218CBD0063CEFF00218CBD009CFF
      FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7
      FF0042ADDE009CFFFF0000639C0063636300000000FF0000000000000000C0C0
      C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000218CC60063CEFF002994C6009CFF
      FF00CEBDBD00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00CEBDBD00006B9C0063636300000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFEFCE00FFEFCE00FFEF
      CE00FFDECE00FFDECE00FFDECE009C636300218CC60063CEFF002994C6009CFF
      FF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EF
      FF004AB5E7009CFFFF00006B9C0063636300C0C0C0FF808080FF000000008080
      80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF00000000298CC60063CEFF00319CCE009CFF
      FF00CEBDBD00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00CEBDBD00006B9C0063636300000000000000000000000000CE9C
      9C00FFF7D6009C0031009C0031009C0031009C0031009C0031009C003100FFEF
      CE00FFEFCE00FFEFCE00FFDECE009C636300298CC60063CEFF00319CCE009CFF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0052BDEF009CFFFF00006B9C0063636300000000FF00000000000000008080
      80FFFFFFFFFFC0C0C0FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FF0000
      00FFFFFFFFFF000000FF00000000000000002994C6006BD6FF00319CCE009CFF
      FF00CEBDBD00F7EFDE00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDE
      AD00F7EFDE00CEBDBD00006BA50063636300000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFEF
      CE00FFEFCE00FFEFCE00FFDECE009C6363002994C6006BD6FF00319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF005AC6FF009CFFFF00006BA50063636300C0C0C0FF808080FF000000000000
      0000808080FFFFFFFFFF000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0
      C0FFFFFFFFFF000000FF00000000000000002994C6007BE7FF00319CCE00FFFF
      FF00F7EFDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7EFDE000873A50063636300000000000000000000000000CE9C
      9C00FFF7D6009C0031009C0031009C0031009C0031009C0031009C0031009C00
      3100FFEFCE00FFEFCE00FFDECE009C6363002994C6007BE7FF002994C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084E7FF00FFFFFF000873A50063636300000000FF00000000000000000000
      0000808080FFFFFFFFFFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFFFFF
      FFFF000000FF0000000000000000000000003194CE0084EFFF00319CCE00319C
      CE00AD7B5A00B5BDB500B5BDB500B5BDB500B5BDB500B5BDB500B5BDB500B5BD
      B500B5BDB500AD7B5A001884B50000000000000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFDECE009C6363003194CE0084EFFF0084E7FF002994
      C6002994C6002994C6002994C6002994C6002994C600218CC600218CBD001884
      BD001884B5001884B5001884B5000000000000000000000000FF000000FF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FF000000FF319CCE0094F7FF008CF7FF008CF7
      FF00AD7B6300FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700AD7B63006363630000000000000000000000000000000000CE9C
      9C00FFF7D6009C0031009C0031009C0031009C0031009C0031009C0031009C00
      3100FFEFCE00FFCECE00FFCECE009C636300319CCE0094F7FF008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00107BAD0063636300000000000000000000000000000000FFC0C0C0FFC0C0
      C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC0C0
      C0FF000000FF808080FF808080FF000000FF319CCE00FFFFFF009CFFFF009CFF
      FF00B5846300FFF7EF00FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFF7EF00B58463006363630000000000000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFEFCE00FFEFCE00FFF7D600FFF7D600FFF7
      D600FFCECE00FFCECE00CE9C9C009C636300319CCE00FFFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FFFFFF00218CBD002184BD001884B5001884B5001884
      B500107BB5000000000000000000000000000000000000000000000000FFFFFF
      FFFF000000FF000000FFC0C0C0FF000000000000000000000000000000FF0000
      00FF000000FFC0C0C0FF808080FF000000FF00000000319CCE00FFFFFF00FFFF
      FF00B5846B00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFEF
      CE00FFEFCE00B5846B006363630000000000000000000000000000000000CE9C
      9C00FFF7D6009C0031009C0031009C0031009C003100FFEFCE00FFF7D600FFEF
      CE009C6363009C6363009C6363009C63630000000000319CCE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00298CC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFFFFFFF000000FF000000FF000000000000000000000000319CCE00319C
      CE00BD8C6B00FFFFFF00FFDEB500FFDEB500FFDEB500FFDEB500FFFFFF00FFA5
      3100FFA53100FFA531000000000000000000000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7
      D600CE9C9C00FFF7D6009C636300000000000000000000000000319CCE00319C
      CE003194CE002994C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000C6947300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB5
      5A00FFB55A00000000000000000000000000000000000000000000000000CE9C
      9C00FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7D600FFF7
      D600CE9C9C009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6947300C6947300C6947300C6947300C6947300C6947300C6947300FFB5
      5A0000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFE000FFFFFFFFC001E000C001
      B3F38000E000800060010000E000000020010000E000000060010000E0000000
      20010000E000000060030000E000000030030000E000000070070001E0000001
      80000001E000000380000001E0000007C1C08001E00081FFE001C003E001C3FF
      F80FF007E003FFFFFFFFF00FE007FFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList2: TActionList
    Images = ImageList1
    Left = 672
    Top = 152
    object Exit: TAction
      Caption = '?????'
      Hint = '????? ?? ?????????'
      ImageIndex = 0
      ShortCut = 27
    end
    object NewText: TAction
      Caption = 'New Text'
      ImageIndex = 3
      ShortCut = 49197
      OnExecute = NewTextExecute
    end
    object Remove: TAction
      Caption = 'Remove'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16430
      OnExecute = RemoveExecute
    end
    object NewSubCategory: TAction
      Caption = 'New Sub Category'
      ImageIndex = 4
      ShortCut = 24621
      OnExecute = NewSubCategoryExecute
    end
    object Fontcfg: TAction
      Caption = '????? ???????'
      Hint = '??????? ????????? ??????????? ?????? ???????'
      ImageIndex = 5
      OnExecute = FontcfgExecute
    end
    object ChgProp: TAction
      Caption = '????????'
      ImageIndex = 18
      ShortCut = 113
      OnExecute = ChgPropExecute
    end
    object SaveNote: TAction
      Caption = '?????????...'
      Hint = '????????? ????? ??????? ???...'
      ImageIndex = 8
      ShortCut = 49235
      OnExecute = SaveNoteExecute
    end
    object AllUpper: TAction
      Caption = '??????? ???????'
      Hint = '????????????? ? "???????" ???????'
      ImageIndex = 9
      ShortCut = 32853
      OnExecute = AllUpperExecute
    end
    object AllLower: TAction
      Caption = '?????? ???????'
      Hint = '????????????? ? "??????" ???????'
      ImageIndex = 10
      ShortCut = 32844
      OnExecute = AllLowerExecute
    end
    object AllProper: TAction
      Caption = '"??????????" ???????'
      Hint = '????????????? ? "??????????" ???????'
      ImageIndex = 11
      ShortCut = 32848
      OnExecute = AllProperExecute
    end
    object AllInvert: TAction
      Caption = '???????????? ???????'
      Hint = '????????????? ? ??????????????? ???????'
      ImageIndex = 12
      ShortCut = 32841
      OnExecute = AllInvertExecute
    end
    object Cut: TAction
      Caption = '????????'
      Hint = '????????'
      ImageIndex = 15
      ShortCut = 16472
      OnExecute = CutExecute
    end
    object Paste: TAction
      Caption = '????????'
      Hint = '????????'
      ImageIndex = 17
      ShortCut = 16470
      OnExecute = PasteExecute
    end
    object Copy: TAction
      Caption = '??????????'
      Hint = '??????????'
      ImageIndex = 16
      ShortCut = 16451
      OnExecute = CopyExecute
    end
    object SetFirst: TAction
      Caption = '??????????? ? ??????'
      Hint = '??????????? ????????? ??????? ? ??????'
      OnExecute = SetFirstExecute
    end
    object FocusList: TAction
      Caption = 'FocusList'
      ShortCut = 16393
      OnExecute = FocusListExecute
    end
    object SelAll: TAction
      Caption = '???????? ???'
      Hint = '???????? ???? ????? ???????'
      ShortCut = 16449
      OnExecute = SelAllExecute
    end
    object PrintNote: TAction
      Caption = '??????'
      Hint = '?????? ???????'
      ImageIndex = 21
      OnExecute = PrintNoteExecute
    end
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Textdocument (*.TXT)|*.txt|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofNoNetworkButton, ofEnableSizing, ofDontAddToRecent]
    Left = 672
    Top = 206
  end
  object SaveDialog2: TSaveDialog
    DefaultExt = '*.html'
    Filter = 'Hyper Text |*.html'
    Left = 672
    Top = 262
  end
  object ColorD: TColorDialog
    Options = [cdFullOpen, cdAnyColor]
    Left = 597
    Top = 51
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 670
    Top = 40
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 526
    Top = 166
    object Excel1: TMenuItem
      Action = ToExcel
      Caption = 'Export Excel'
      Hint = 'Export PhoneBook to Excel'
      OnDrawItem = SelAll1DrawItem
    end
    object ExportWord1: TMenuItem
      Caption = 'Export Word'
      Hint = 'Export PhoneBook to Word'
      OnClick = ExportWord1Click
    end
    object HTML1: TMenuItem
      Action = ToHTML
      Caption = 'Export HTML'
      Hint = 'Export PhoneBook to HTML'
      OnDrawItem = SelAll1DrawItem
    end
    object ExportTextdocument1: TMenuItem
      Caption = 'Export Textdocument'
      Hint = 'Export PhoneBook to Textdocument'
      OnClick = ExportTextdocument1Click
    end
  end
  object SaveDialog3: TSaveDialog
    Filter = 'Textdocument (*.TXT)|*.txt'
    Left = 673
    Top = 318
  end
  object PopupMenu6: TPopupMenu
    Left = 531
    Top = 286
    object ext1: TMenuItem
      Caption = 'Text'
      Hint = 'Sort as Text'
      OnClick = ext1Click
    end
    object Data1: TMenuItem
      Caption = 'Data'
      Hint = 'Sort as Data'
      OnClick = Data1Click
    end
    object Both1: TMenuItem
      Caption = 'Both'
      Hint = 'Sort as Text && Data'
      OnClick = Both1Click
    end
    object Default1: TMenuItem
      Caption = 'Default'
      Hint = 'Sort Default'
      OnClick = Default1Click
    end
  end
end
