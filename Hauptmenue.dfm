object FORM_HAUPTMENUE: TFORM_HAUPTMENUE
  Left = 0
  Top = 0
  Caption = 'SHK-Pruefungsvorbereitung'
  ClientHeight = 454
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object TLABEL_TITEL: TLabel
    Left = 168
    Top = 72
    Width = 441
    Height = 50
    Alignment = taCenter
    Caption = 'SHK-Pr'#252'fungsvorbereitung'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_HAUPTMENUEFORM_PRUEFUNGSTITEL: TLabel
    Left = 56
    Top = 200
    Width = 209
    Height = 23
    Alignment = taCenter
    Caption = 'Pr'#252'fungssimulation'
    Constraints.MinHeight = 23
    Constraints.MinWidth = 209
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_THEMENAUSWAHL: TLabel
    Left = 568
    Top = 200
    Width = 209
    Height = 23
    Alignment = taCenter
    Caption = 'Themenauswahl'
    Constraints.MinHeight = 23
    Constraints.MinWidth = 209
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TLABEL_NORMALERMODUS: TLabel
    Left = 312
    Top = 200
    Width = 209
    Height = 23
    Alignment = taCenter
    Caption = 'Normaler Modus'
    Constraints.MinHeight = 23
    Constraints.MinWidth = 209
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TBUTTON_PRUEFUNGSSIMULATION: TButton
    Left = 56
    Top = 248
    Width = 209
    Height = 153
    Caption = 'Simulation starten'
    TabOrder = 0
    OnClick = TBUTTON_PRUEFUNGSSIMULATIONClick
  end
  object TBUTTON_THEMENASWAHL: TButton
    Left = 568
    Top = 248
    Width = 209
    Height = 153
    Caption = 'Zur Themenauswahl'
    TabOrder = 1
    OnClick = TBUTTON_THEMENASWAHLClick
  end
  object TBUTTON_NORMALER_MODUS: TButton
    Left = 312
    Top = 248
    Width = 209
    Height = 153
    Caption = 'Normalen Modus starten'
    TabOrder = 2
    OnClick = TBUTTON_NORMALER_MODUSClick
  end
end
