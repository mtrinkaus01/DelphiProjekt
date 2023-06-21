unit Themenbereiche;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFORM_THEMENBEREICHE = class(TForm)
    TLABEL_TITEL_FORM2: TLabel;
    TBUTTON_SANITAER_STARTEN: TButton;
    TBUTTON_ALLGEMEIN_STARTEN: TButton;
    TBUTTON_LUEFTUNG_STARTEN: TButton;
    TBUTTON_HEIZUNG_STARTEN: TButton;
    TLABEL_SANITAER: TLabel;
    TLABEL_LUEFTUNG: TLabel;
    TLABEL_ALLGEMEIN: TLabel;
    TLABEL_HEIZUNG: TLabel;
    TBUTTON_HAUPTMENUE_THEMENBEREICHE: TButton;
    procedure TBUTTON_HAUPTMENUE_THEMENBEREICHEClick(Sender: TObject);
    procedure TBUTTON_SANITAER_STARTENClick(Sender: TObject);
    procedure TBUTTON_HEIZUNG_STARTENClick(Sender: TObject);
    procedure TBUTTON_LUEFTUNG_STARTENClick(Sender: TObject);
    procedure TBUTTON_ALLGEMEIN_STARTENClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  FORM_THEMENBEREICHE: TFORM_THEMENBEREICHE;

implementation
uses Hauptmenue, Fragen;
{$R *.dfm}

procedure TFORM_THEMENBEREICHE.TBUTTON_ALLGEMEIN_STARTENClick(Sender: TObject);
begin
      FORM_THEMENBEREICHE.Hide;
      FORM_FRAGEN.Show;
end;

procedure TFORM_THEMENBEREICHE.TBUTTON_HAUPTMENUE_THEMENBEREICHEClick(
  Sender: TObject);
begin
      FORM_THEMENBEREICHE.Hide;
      FORM_HAUPTMENUE.Show;
end;

procedure TFORM_THEMENBEREICHE.TBUTTON_HEIZUNG_STARTENClick(Sender: TObject);
begin
      FORM_THEMENBEREICHE.Hide;
      FORM_FRAGEN.Show;
end;

procedure TFORM_THEMENBEREICHE.TBUTTON_LUEFTUNG_STARTENClick(Sender: TObject);
begin
      FORM_THEMENBEREICHE.Hide;
      FORM_FRAGEN.Show;
end;

procedure TFORM_THEMENBEREICHE.TBUTTON_SANITAER_STARTENClick(Sender: TObject);
begin
      FORM_THEMENBEREICHE.Hide;
      FORM_FRAGEN.Show;
end;

end.
