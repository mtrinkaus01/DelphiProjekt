object FORM_THEMENBEREICHE: TFORM_THEMENBEREICHE
  Left = 0
  Top = 0
  Caption = 'SHK-Pr'#252'fungsvorbereitung'
  ClientHeight = 472
  ClientWidth = 836
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object TLABEL_TITEL_FORM2: TLabel
    Left = 256
    Top = 88
    Width = 280
    Height = 50
    Alignment = taCenter
    Caption = 'Themenbereiche '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_SANITAER: TLabel
    Left = 40
    Top = 200
    Width = 161
    Height = 23
    Alignment = taCenter
    Caption = 'Sanit'#228'r'
    Constraints.MinHeight = 23
    Constraints.MinWidth = 161
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_LUEFTUNG: TLabel
    Left = 432
    Top = 200
    Width = 161
    Height = 23
    Alignment = taCenter
    Caption = 'L'#252'ftung'
    Constraints.MinHeight = 23
    Constraints.MinWidth = 161
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_ALLGEMEIN: TLabel
    Left = 624
    Top = 200
    Width = 161
    Height = 23
    Alignment = taCenter
    Caption = 'Allgemein'
    Constraints.MinHeight = 23
    Constraints.MinWidth = 161
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_HEIZUNG: TLabel
    Left = 239
    Top = 200
    Width = 161
    Height = 23
    Alignment = taCenter
    Caption = 'Heizung'
    Constraints.MinHeight = 23
    Constraints.MinWidth = 161
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TBUTTON_SANITAER_STARTEN: TButton
    Left = 40
    Top = 248
    Width = 161
    Height = 129
    Caption = 'Simulation starten'
    TabOrder = 0
    OnClick = TBUTTON_SANITAER_STARTENClick
  end
  object TBUTTON_ALLGEMEIN_STARTEN: TButton
    Left = 624
    Top = 248
    Width = 161
    Height = 129
    Caption = 'Simulation starten'
    TabOrder = 1
    OnClick = TBUTTON_ALLGEMEIN_STARTENClick
  end
  object TBUTTON_LUEFTUNG_STARTEN: TButton
    Left = 432
    Top = 248
    Width = 161
    Height = 129
    Caption = 'Simulation starten'
    TabOrder = 2
    OnClick = TBUTTON_LUEFTUNG_STARTENClick
  end
  object TBUTTON_HEIZUNG_STARTEN: TButton
    Left = 239
    Top = 248
    Width = 161
    Height = 129
    Caption = 'Simulation starten'
    TabOrder = 3
    OnClick = TBUTTON_HEIZUNG_STARTENClick
  end
  object TBUTTON_HAUPTMENUE_THEMENBEREICHE: TButton
    Left = 8
    Top = 16
    Width = 89
    Height = 41
    Caption = 'Hauptmen'#252
    TabOrder = 4
    OnClick = TBUTTON_HAUPTMENUE_THEMENBEREICHEClick
  end
end
