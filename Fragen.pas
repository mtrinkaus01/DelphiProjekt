unit Fragen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, strUtils, math;

type
  TFORM_FRAGEN = class(TForm)
    TLABEL_FRAGENFORM_THEMA: TLabel;
    TLABEL_FRAGENFORM_FRAGE: TLabel;
    TBUTTON_HAUPTMENUE_FRAGEN: TButton;
    TBUTTON_FRAGENFORM_ANTWORT1: TButton;
    TBUTTON_FRAGENFORM_ANTWORT4: TButton;
    TBUTTON_FRAGENFORM_ANTWORT3: TButton;
    TBUTTON_FRAGENFORM_ANTWORT2: TButton;
    procedure TBUTTON_HAUPTMENUE_FRAGENClick(Sender: TObject);
    procedure TBUTTON_FRAGENFORM_ANTWORT1Click(Sender: TObject);
    procedure TBUTTON_FRAGENFORM_ANTWORT2Click(Sender: TObject);
    procedure TBUTTON_FRAGENFORM_ANTWORT3Click(Sender: TObject);
    procedure TBUTTON_FRAGENFORM_ANTWORT4Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  FORM_FRAGEN: TFORM_FRAGEN;
  wieOftButtonGedrueckt : Integer;

implementation
uses Hauptmenue;
{$R *.dfm}

//Prozedur, um die falschen Antworten auszublenden
procedure AntwortAusgewaehlt();
begin
      wieOftButtonGedrueckt := 0;
      if MatchStr(FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT1.Caption, RichtigeAntwortenArray) then
      begin
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT2.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT3.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT4.Caption := '';
      end
      else if MatchStr(FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT2.Caption, RichtigeAntwortenArray) then
      begin
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT1.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT3.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT4.Caption := '';
      end
      else if MatchStr(FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT3.Caption, RichtigeAntwortenArray) then
      begin
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT1.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT2.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT4.Caption := '';
      end
      else if MatchStr(FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT4.Caption, RichtigeAntwortenArray) then
      begin
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT1.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT2.Caption := '';
           FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT3.Caption := '';
      end;

end;

procedure  PageAktualisieren();
begin
      if wieOftButtonGedrueckt < 10 then
      begin
            if token = 'NormalerModusAusgewählt' then
            begin
                AntwortAusgewaehlt();
                inc(wieOftButtonGedrueckt);
                sleep(1500);
                FORM_HAUPTMENUE.FragenUndAntwortenBefuellenPruefungsmodus(RandomRange(1,10));
            end
            else if token = 'Themenbereich' then
            begin
                AntwortAusgewaehlt();
                inc(wieOftButtonGedrueckt);
                sleep(1500);
                FORM_HAUPTMENUE.FragenUndAntwortenBefuellenPruefungsmodus(RandomRange(1,10));
            end
            else
            begin
                AntwortAusgewaehlt();
                inc(wieOftButtonGedrueckt);
                sleep(1500);
                FORM_HAUPTMENUE.FragenUndAntwortenBefuellenPruefungsmodus(RandomRange(1,10));
            end;
      end;
      Exit;
end;

procedure TFORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT1Click(Sender: TObject);
begin
     PageAktualisieren();
end;


procedure TFORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT2Click(Sender: TObject);
begin
      PageAktualisieren();
end;

procedure TFORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT3Click(Sender: TObject);
begin
      PageAktualisieren();
end;

procedure TFORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT4Click(Sender: TObject);
begin
      PageAktualisieren();
end;

procedure TFORM_FRAGEN.TBUTTON_HAUPTMENUE_FRAGENClick(Sender: TObject);
begin
      FORM_FRAGEN.Hide;
      FORM_HAUPTMENUE.Show;
end;

end.
