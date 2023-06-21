unit Statistik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Hauptmenue, Vcl.Buttons;

type
  TFORM_STATISTIK = class(TForm)
    TLABEL_STATISTIK_FORM4: TLabel;
    TBUTTON_HAUPTMENUE_STATISTIK: TButton;
    procedure TBUTTON_HAUPTMENUE_STATISTIKClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  FORM_STATISTIK: TFORM_STATISTIK;

implementation

{$R *.dfm}

procedure TFORM_STATISTIK.TBUTTON_HAUPTMENUE_STATISTIKClick(Sender: TObject);
begin
      FORM_STATISTIK.Hide;
      FORM_HAUPTMENUE.Show;
end;

end.
