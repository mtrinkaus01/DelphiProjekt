program Project1;

uses
  Vcl.Forms,
  Hauptmenue in 'Hauptmenue.pas' {FORM_HAUPTMENUE},
  Themenbereiche in 'Themenbereiche.pas' {FORM_THEMENBEREICHE},
  Fragen in 'Fragen.pas' {FORM_FRAGEN},
  Statistik in 'Statistik.pas' {FORM_STATISTIK};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFORM_HAUPTMENUE, FORM_HAUPTMENUE);
  Application.CreateForm(TFORM_THEMENBEREICHE, FORM_THEMENBEREICHE);
  Application.CreateForm(TFORM_FRAGEN, FORM_FRAGEN);
  Application.CreateForm(TFORM_STATISTIK, FORM_STATISTIK);
  Application.Run;
end.
