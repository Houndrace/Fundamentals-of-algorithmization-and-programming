unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
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
  n = 5;
  m = 5;
var
  i, j: integer;
  A, B: array [1..n, 1..m] of integer;
begin
  for  i:= 1 to n do
   for j:= 1 to m do
    begin
     if i <> 0 then StringGrid1.Cells[i, 0] := intToStr(i);
        if j <> 0 then StringGrid1.Cells[0, j] := intToStr(j);
        A[i,j] := random(228);
       StringGrid1.Cells[i, j] := intToStr(A[i, j]);
    end;

  for  i:= 1 to n do
   for j:= 1 to m do
    begin
     if i <> 0 then StringGrid2.Cells[i, 0] := intToStr(i);
        if j <> 0 then StringGrid2.Cells[0, j] := intToStr(j);
         B[i, j] := - A[i, j];
       StringGrid2.Cells[i, j] := intToStr(B[i, j]);
    end;

end;

end.

