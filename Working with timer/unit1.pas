unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Timer1: TTimer;
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1; x:integer; {объявление глобаной переменной "х"}

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true // проверка на активированный чекбокс
  then timer1.Enabled:=true
  else timer1.Enabled:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  x:=0; // при создании формы присвоение значения переменной "x"
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  x:=x+1;
  Label1.Caption:='Calculation: '+inttostr(x);
end;

end.

