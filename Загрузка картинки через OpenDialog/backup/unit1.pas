unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    OpenDialog1: TOpenDialog;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute=true then
  Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

end.

