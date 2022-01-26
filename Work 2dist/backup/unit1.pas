unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
const
  m = 3;
  n = 3;
var
  i, j, S: integer;
  A: array [1..n, 1..m] of integer;
begin
S := 0;
StringGrid1.DefaultRowHeight := 40;
StringGrid1.DefaultColWidth := StringGrid1.DefaultRowHeight;
  for  i:= 1 to m do
   for j:= 1 to n do
    begin
     if i <> 0 then StringGrid1.Cells[i, 0] := intToStr(i);
        if j <> 0 then StringGrid1.Cells[0, j] := intToStr(j);
          A[i, j] := StrToInt(StringGrid1.Cells[j, i]);
    end;
    for  i:= 1 to m do
   for j:= 1 to n do
  A[i, j] := StrToInt(StringGrid1.Cells[j, i]);
  for  i:= 1 to m do
   for j:= 1 to n do
    begin
     S := S + A[i, j];
     Memo1.Lines.Add(IntToStr(A[i, j]));
    end;
ShowMessage (IntToStr(S));


end;


end.

