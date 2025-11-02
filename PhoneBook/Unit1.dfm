object MoveNode: TMoveNode
  Left = 418
  Top = 264
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Confirmation'
  ClientHeight = 165
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 5
    Width = 313
    Height = 28
    AutoSize = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 8
    Top = 130
    Width = 75
    Height = 25
    Caption = 'Apply'
    ModalResult = 6
    TabOrder = 0
  end
  object Button2: TButton
    Left = 243
    Top = 130
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 7
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 52
    Width = 311
    Height = 72
    Caption = ' Move method '
    ItemIndex = 1
    Items.Strings = (
      'Place first in Group'
      'Place last in Group')
    TabOrder = 2
  end
end
