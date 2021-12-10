unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    ColorDialog1: TColorDialog;
    Image1: TImage;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1; Drug : boolean;

implementation

{$R *.lfm}

{ TForm1 }
////////////////////////////Drawing/////////////////////////////////////////////
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Drug:=true;
  Canvas.MoveTo(x,y);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if Drug=true
  then Canvas.LineTo(x,y);

end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Drug:=false;
end;
////////////////////////////////////////////////////////////////////////////////
procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  if OpenDialog1.Execute=true
  then Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  ColorDialog1.Execute;
  Canvas.Pen.Color:=ColorDialog1.Color;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
var
  Thickness: integer;
begin
  Thickness:= strtoint (Inputbox('Window', 'Enter: ', ''));
  Canvas.Pen.Width:= thickness;

end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
     Canvas.FillRect(Image1.ClientRect);
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

end.

