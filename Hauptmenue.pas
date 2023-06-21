unit Hauptmenue;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Themenbereiche, Fragen, math, System.Character,
  System.StrUtils;

type
  TFORM_HAUPTMENUE = class(TForm)
    TBUTTON_PRUEFUNGSSIMULATION: TButton;
    TLABEL_TITEL: TLabel;
    TBUTTON_THEMENASWAHL: TButton;
    TBUTTON_NORMALER_MODUS: TButton;
    TLABEL_HAUPTMENUEFORM_PRUEFUNGSTITEL: TLabel;
    TLABEL_THEMENAUSWAHL: TLabel;
    TLABEL_NORMALERMODUS: TLabel;
    procedure TBUTTON_PRUEFUNGSSIMULATIONClick(Sender: TObject);
    procedure TBUTTON_NORMALER_MODUSClick(Sender: TObject);
    procedure TBUTTON_THEMENASWAHLClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure FragenUndAntwortenBefuellenPruefungsModus(i: Integer);
    procedure FragenUndAntwortenBefuellenNormalermodus(i: Integer);
  end;

var
  FORM_HAUPTMENUE: TFORM_HAUPTMENUE;
  FragenArray : array [1..100,1..7] of String;
  RichtigeAntwortenArray : array [1..100] of String;
  FragenArrayNachGewichtung : array of array of array of String;
  F : textfile;
  iRow, iCol, iComma, i, j, FragenCounter : integer;
  sLine, sName, Capcheck, letzterBuchstabeCaps, richtigeAntwort, format_string, token : String;

implementation

{$R *.dfm}
//Funktion zum Füllen der Labels (Frage + 4 Antworten) bei der Fragen Form
Procedure TFORM_HAUPTMENUE.FragenUndAntwortenBefuellenPruefungsmodus(i: Integer);
begin
    FORM_FRAGEN.TLABEL_FRAGENFORM_FRAGE.Caption := FragenArray[i,1];
    FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT1.Caption := FragenArray[i,2];
    FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT2.Caption := FragenArray[i,3];
    FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT3.Caption := FragenArray[i,4];
    FORM_FRAGEN.TBUTTON_FRAGENFORM_ANTWORT4.Caption := FragenArray[i,5];
end;

Procedure TFORM_HAUPTMENUE.FragenUndAntwortenBefuellenNormalermodus(i: Integer);
var
zaehler, zaehler2, zaehler3 : Integer;
wievielteFrage : String;
begin
    zaehler := 0;
    zaehler2 := 0;
    while zaehler < Length(FragenArray) do
    begin
          zaehler3 := 0;
          wievielteFrage := IntToStr(wieOftButtonGedrueckt);
          if FragenArray[zaehler3,6] = wievielteFrage then
          begin

               inc(zaehler2);
          end;
          inc(zaehler);
    end;
end;

Procedure ArrayBefuellen();
var
zaehler, k, l : Integer;
begin
      //CSV Datei auslesen und in Array schreiben
      AssignFile(F, 'C:\Users\test\Desktop\fabiprojekt\Fragen.csv');
      Reset(F);
      iRow := 0;
      FragenCounter := 1;
      j := 1;
      zaehler := 0;

      while (not eof(F)) do
      begin
        readln(F, sLine);
        //sLine = Stahlrohr?;Seitenschneider;Gewindemuffe;Tigersäge;GEWINDESCHNEIDKLUPPE;gewichtung1;Allgemein
        inc(iRow);
        //Jeweilige Zeile der CSV wird aufgeteilt bei jedem ";" und wird in jeweiliges Array-Element geschrieben
        for iCol := 1 to 6 do
        begin
            iComma := pos(';', sLine);
            sName := Copy(sLine, 1, iComma -1);
            Delete(sLine, 1, iComma);
            FragenArray[iRow,iCol] := sName;
        end;

        FragenArray[iRow, 7] := sLine;

        for i := 2 to 5 do
        begin
            Capcheck := AnsiRightStr(FragenArray[iRow, i],1);
            letzterBuchstabeCaps := ToUpper(Capcheck);

            if Capcheck = letzterBuchstabeCaps  then
            begin
                 format_string := Uppercase(Copy(FragenArray[iRow,i],1,1)) + Lowercase(Copy(FragenArray[iRow, i],2,Length(FragenArray[iRow,i])));
                 FragenArray[iRow,i] := format_string;
                 RichtigeAntwortenArray[j] := format_string;
                 inc(j);
            end;
        end;

        {Nochmal diese Schleifen checken...
        if FragenArray[iRow, 6] = 'gewichtung1' then
        begin
            for k := 1 to 7 do
            begin
              for l := 1 to 7 do
              begin
                  FragenArrayNachGewichtung[zaehler,k, l] := FragenArray[k,l];
                  inc(zaehler);
              end;
            end;
        end
        else if FragenArray[iRow, 6] = 'gewichtung2' then
        begin
            for k := 1 to 7 do
            begin
              for l := 1 to 7 do
              begin
                  FragenArrayNachGewichtung[zaehler,k, l] := FragenArray[k,l];
                  inc(zaehler);
              end;
            end;
        end; }

      end;
      CloseFile(F);
end;

procedure TFORM_HAUPTMENUE.TBUTTON_NORMALER_MODUSClick(Sender: TObject);
begin
      token := 'NormalerModusAusgewählt';
      ArrayBefuellen();
      FragenUndAntwortenBefuellenPruefungsmodus(RandomRange(1,10));

      FORM_HAUPTMENUE.Hide;
      FORM_FRAGEN.Show;
      FORM_FRAGEN.TLABEL_FRAGENFORM_THEMA.Caption := 'Normaler Modus';
end;

procedure TFORM_HAUPTMENUE.TBUTTON_PRUEFUNGSSIMULATIONClick(Sender: TObject);
begin
      ArrayBefuellen();
      FragenUndAntwortenBefuellenPruefungsmodus(RandomRange(1,10));

      FORM_HAUPTMENUE.Hide;
      FORM_FRAGEN.Show;
      FORM_FRAGEN.TLABEL_FRAGENFORM_THEMA.Caption := 'Prüfungssimulation';

end;

procedure TFORM_HAUPTMENUE.TBUTTON_THEMENASWAHLClick(Sender: TObject);
begin
      token := 'Themenbereich';
      FORM_HAUPTMENUE.Hide;
      FORM_THEMENBEREICHE.Show;
end;

end.
