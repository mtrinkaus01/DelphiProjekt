object FORM_STATISTIK: TFORM_STATISTIK
  Left = 0
  Top = 0
  Caption = 'SHK-Pruefungsvorbereitung'
  ClientHeight = 472
  ClientWidth = 836
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object TLABEL_STATISTIK_FORM4: TLabel
    Left = 224
    Top = 56
    Width = 369
    Height = 57
    Alignment = taCenter
    Caption = 'Auswertung der Ergebnisse'
    Constraints.MinHeight = 57
    Constraints.MinWidth = 369
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object TBUTTON_HAUPTMENUE_STATISTIK: TButton
    Left = 8
    Top = 16
    Width = 89
    Height = 41
    Caption = 'Hauptmen'#252
    TabOrder = 0
    OnClick = TBUTTON_HAUPTMENUE_STATISTIKClick
  end
end
