object FORM_FRAGEN: TFORM_FRAGEN
  Left = 0
  Top = 0
  Caption = 'SHK-Pruefungsvorbereitung'
  ClientHeight = 468
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clHighlight
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 28
  object TLABEL_FRAGENFORM_THEMA: TLabel
    Left = 632
    Top = 24
    Width = 177
    Height = 33
    Alignment = taCenter
    Caption = 'Platzhalter f'#252'r Variable'
    Constraints.MinHeight = 33
    Constraints.MinWidth = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_FRAGENFORM_FRAGE: TLabel
    Left = 136
    Top = 120
    Width = 513
    Height = 73
    Alignment = taCenter
    Caption = 'Platzhalter f'#252'r Variable'
    Constraints.MinHeight = 73
    Constraints.MinWidth = 513
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TBUTTON_HAUPTMENUE_FRAGEN: TButton
    Left = 8
    Top = 16
    Width = 89
    Height = 41
    Caption = 'Hauptmen'#252
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = TBUTTON_HAUPTMENUE_FRAGENClick
  end
  object TBUTTON_FRAGENFORM_ANTWORT1: TButton
    Left = 40
    Top = 248
    Width = 321
    Height = 73
    Caption = 'Antwort 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = TBUTTON_FRAGENFORM_ANTWORT1Click
  end
  object TBUTTON_FRAGENFORM_ANTWORT4: TButton
    Left = 424
    Top = 352
    Width = 321
    Height = 73
    Caption = 'Antwort 4'
    TabOrder = 2
    OnClick = TBUTTON_FRAGENFORM_ANTWORT4Click
  end
  object TBUTTON_FRAGENFORM_ANTWORT3: TButton
    Left = 40
    Top = 352
    Width = 321
    Height = 73
    Caption = 'Antwort 3'
    TabOrder = 3
    OnClick = TBUTTON_FRAGENFORM_ANTWORT3Click
  end
  object TBUTTON_FRAGENFORM_ANTWORT2: TButton
    Left = 424
    Top = 248
    Width = 321
    Height = 73
    Caption = 'Antwort 2'
    TabOrder = 4
    OnClick = TBUTTON_FRAGENFORM_ANTWORT2Click
  end
end
