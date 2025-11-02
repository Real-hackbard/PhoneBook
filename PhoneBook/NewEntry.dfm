object NewPhone: TNewPhone
  Left = 340
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'New subscriber...'
  ClientHeight = 317
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object Label3: TLabel
    Left = 26
    Top = 130
    Width = 79
    Height = 13
    Caption = 'Working phone :'
  end
  object Label4: TLabel
    Left = 38
    Top = 82
    Width = 67
    Height = 13
    Caption = 'Home phone :'
  end
  object Label5: TLabel
    Left = 49
    Top = 106
    Width = 56
    Height = 13
    Caption = 'Cell phone :'
  end
  object Label6: TLabel
    Left = 61
    Top = 178
    Width = 44
    Height = 13
    Caption = 'Address :'
  end
  object Label1: TLabel
    Left = 41
    Top = 202
    Width = 64
    Height = 13
    Caption = 'Date of birth :'
  end
  object Label7: TLabel
    Left = 71
    Top = 223
    Width = 34
    Height = 13
    Caption = 'Notes :'
  end
  object Label2: TLabel
    Left = 71
    Top = 154
    Width = 34
    Height = 13
    Caption = 'E-mail :'
  end
  object workphone: TEdit
    Left = 111
    Top = 127
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object homephone: TEdit
    Left = 111
    Top = 79
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object celular: TEdit
    Left = 111
    Top = 103
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object adress: TEdit
    Left = 111
    Top = 175
    Width = 249
    Height = 21
    TabOrder = 5
  end
  object date_r: TEdit
    Left = 111
    Top = 199
    Width = 249
    Height = 21
    TabOrder = 6
  end
  object notes: TMemo
    Left = 111
    Top = 223
    Width = 248
    Height = 49
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 371
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    ExplicitWidth = 367
    object Bevel1: TBevel
      Left = 0
      Top = 64
      Width = 371
      Height = 9
      Align = alBottom
      Shape = bsBottomLine
      ExplicitWidth = 365
    end
    object Label8: TLabel
      Left = 31
      Top = 45
      Width = 74
      Height = 13
      Caption = 'Name (title) :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 27
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Phone Book :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object name: TEdit
      Left = 111
      Top = 40
      Width = 249
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object grs: TComboBox
      Left = 111
      Top = 13
      Width = 249
      Height = 21
      Style = csDropDownList
      ImeMode = imDisable
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 111
    Top = 287
    Width = 107
    Height = 25
    Caption = 'Apply'
    ModalResult = 1
    TabOrder = 8
    OnClick = Button1Click
  end
  object mail: TEdit
    Left = 111
    Top = 151
    Width = 249
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 253
    Top = 287
    Width = 107
    Height = 25
    Caption = 'Cancel'
    ModalResult = 7
    TabOrder = 9
    OnClick = Button2Click
  end
  object ActionList1: TActionList
    Left = 24
    Top = 248
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
