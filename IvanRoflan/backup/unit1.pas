unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;


type


  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure setMassivIJ();
    procedure getMassivIJ();
    procedure setMassivI();
    procedure getMassivI();
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public


  end;




var
  Form1: TForm1; i, j : integer;
  min, max : real;



implementation

{$R *.lfm}

{ TForm1 }

n := Edit1.Text;
m := Edit1.Text;

massivI = array [0..n] of real;
massivIJ = array [0..n, 0..m] of real;

procedure TForm1.setMassivIJ(var a : massivIJ);
var
  space, s : string;
begin
 s := '';
 for i := 0 to n do
  begin
      for j := 0 to m do
          begin
            a[i,j] := StrToFloat(InputBox('Окно программы', 'Введите числа массива: ', ''));
            if j <> 0 then
            space := ' / '
            else
            space := '';
            s := s + space + FloatToStr(a[i,j]);
          end;
      Memo1.Lines.Add('Заданный массив: ' + s);
      s := '';
  end;
end;
procedure TForm1.getMassivIJ(var a : massivIJ);
var
  space, s : string;
begin
 s := '';
 for i := 0 to n do
  begin
      for j := 0 to m do
          begin
            if j <> 0 then
            space := ' / '
            else
            space := '';
            s := s + space + FloatToStr(a[i,j]);
          end;
      Memo1.Lines.Add('Конечный массив: ' + s);
      s := '';
  end;
end;

procedure TForm1.setMassivI(var a : massivI);
var
  space, s : string;

begin
 s := '';
  for i := 0 to n do
  begin
    a[i] := StrToFloat(InputBox('Окно программы', 'Введите числа массива: ', ''));
    if i <> 0 then
            space := ' / '
            else
            space := '';
    s := s + space + FloatToStr(a[i]);
  end;
  Memo1.Lines.Add('Заданный массив: ' + s);
end;
procedure TForm1.getMassivI(var a : massivI);
var
  space, s : string;
begin
 s := '';
  for i := 0 to n do
  begin
    if i <> 0 then
            space := ' / '
            else
            space := '';
    s := s + space + FloatToStr(a[i]);
  end;
  Memo1.Lines.Add('Конечный массив: ' + s);
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage ('В заданном массиве A(N) найти произведение наибольшего и наименьшего элементов');
  setMassivI(A);

  max := A[i];
  min := A[i];
  for i := 0 to n do
  begin
    if max < A[i] then
    max := A[i];
    if min > A[i] then
    min := A[i];
  end;

  Memo1.Lines.Add ('Произведение равно: ' + FloatToStr(min) + ' * ' +
  FloatToStr(max) + ' = ' + FloatToStr(max*min));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage ('В заданном массиве A(N) найти сумму наибольшего и наименьшего элементов');
  setMassivI(A);

  max := A[i];
  min := A[i];
  for i := 0 to n do
  begin
    if max < A[i] then
    max := A[i];
    if min > A[i] then
    min := A[i];
  end;

  Memo1.Lines.Add ('Сумма равна: ' + FloatToStr(min) + ' + ' +
  FloatToStr(max) + ' = ' + FloatToStr(max+min));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  maxI, minI : integer;
begin
  ShowMessage ('В заданном массиве A(N) поменяйте местами наибольший и наименьший элементы');
  setMassivI(A);


  max := A[0];
  min := A[0];
  maxI := 0;
  minI := 0;
  for i := 0 to n do
          begin
            if max < A[i] then
            begin
              max := A[i];
              maxI := i;
            end;
            if min > A[i] then
            begin
              min := A[i];
              minI := i;
            end;
          end;


  A[minI] := max;
  A[maxI] := min;

  getMassivI(A);
  end;


procedure TForm1.Button4Click(Sender: TObject);
var
  specNum : string;
begin
 ShowMessage ('Выведите на печать номера элементов заданного массива A(N), удовлетворяющих условию 0<A[i]<1');
 setMassivI(A);

 specNum := '';
 for i := 0 to n do
 begin
   if (A[i] > 0) and (A[i] < 1) then
      specNum := specNum + inttostr(i) + ' ';
 end;

 if (specNum <> '') then
 Memo1.Lines.Add('Индексы элементов: ' + specNum)
 else
 Memo1.Lines.Add('Элементов с плавающей точкой нет');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  num : real;
begin
 ShowMessage ('Дан массив A(N). Получите массив B(N), i-й элемент которого равен среднему арифметическому первых i элементов массива');
 setMassivI(A);
 num := 0;
 for i := 0 to n do
 begin
   num := num + A[i];
   B[i] := num / (i+1);
 end;

 getMassivI(B);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  sum : real;
begin
  ShowMessage('Дан целочисленный массив А размера N. Вывести сумму положительных элементов заданного массива A(N)');
  setMassivI(A);
  sum := 0;
  for i := 0 to n do
      if A[i] > 0 then
         sum := sum + A[i];
  Memo1.Lines.Add ('Сумма положительных чисел: ' + FloatToStr(sum));
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  sum : real;
begin
 ShowMessage('Дан целочисленный массив А размера N. Вывести сумму отрицательных элементов заданного массива A(N)');
 setMassivI(A);
 sum := 0;
 for i := 0 to n do
     if A[i] < 0 then
        sum := sum + A[i];
 Memo1.Lines.Add ('Сумма отрицательных чисел: ' + FloatToStr(sum));
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  Count : integer;
begin
 ShowMessage('Дан целочисленный массив А размера N. Вывести число отрицательных элементов заданного массива A(N)');
 setMassivI(A);
 Count := 0;
 for i := 0 to n do
     if A[i] < 0 then
       Count := Count + 1;
 Memo1.Lines.Add ('Число отрицательных элементов: ' + IntToStr(Count));
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  Count : integer;
begin
 ShowMessage('Дан целочисленный массив А размера N. Вывести число положительных элементов заданного массива A(N)');
 setMassivI(A);
 Count := 0;
 for i := 0 to n do
   if A[i] > 0 then
      Count := Count + 1;
 Memo1.Lines.Add ('Число положительных элементов: ' + IntToStr(Count));
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  Count, c : integer;
begin
 if Edit1.Text = '' then
   ShowMessage ('Для этой задачи необходимо ввести переменную "с"')
 else
 begin
   ShowMessage('Дан целочисленный массив А размера N. Найти количество элементов массива А, удовлетворяющих условию с<=A[i]');
   setMassivI(A);
   c := StrToInt(Edit1.Text);
   Count := 0;
 for i := 0 to n do
   if c <= A[i] then
      Count := Count + 1;
 Memo1.Lines.Add ('Число элементов, удовлетворяющих условию: ' + IntToStr(Count));
 end;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  Count, c : integer;
begin
 if Edit1.Text = '' then
   ShowMessage ('Для этой задачи необходимо ввести переменную "с"')
 else
 begin
   ShowMessage('Дан целочисленный массив А размера N. Найти количество элементов массива А, удовлетворяющих условию с>A[i]');
   setMassivI(A);
   c := StrToInt(Edit1.Text);
   Count := 0;
 for i := 0 to n do
   if c > A[i] then
      Count := Count + 1;
 Memo1.Lines.Add ('Число элементов, удовлетворяющих условию: ' + IntToStr(Count));
 end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 ShowMessage('Дан целочисленный массив А размера N. Найти максимальный элемент массива');
 setMassivI(A);
 max := A[0];
 for i := 0 to n do
   if max < A[i] then
     max := A[i];
 Memo1.Lines.Add('Максимальное элемент массива: ' + Floattostr(max));
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 ShowMessage('Дан целочисленный массив А размера N. Найти минимальный элемент массива');
 setMassivI(A);
 min := A[0];
 for i := 0 to n do
   if min > A[i] then
     min := A[i];
 Memo1.Lines.Add('Минимальный элемент массива: ' + Floattostr(min));
end;

procedure TForm1.Button14Click(Sender: TObject);
var
  num : integer;
begin
 ShowMessage('Дан целочисленный массив А размера N. Найти номер максимального элемента массива');
 setMassivI(A);
 max := A[0];
 for i := 0 to n do
   if max < A[i] then
      num := i + 1;
 Memo1.Lines.Add('Номер максимального элемента массива: ' + Inttostr(num));
end;

procedure TForm1.Button15Click(Sender: TObject);
var
  num : integer;
begin
 ShowMessage('Дан целочисленный массив А размера N. Найти номер минимального элемента массива');
 setMassivI(A);
 min := A[0];
 for i := 0 to n do
   if min > A[i] then
      num := i + 1;
 Memo1.Lines.Add('Номер минимального элемента массива: ' + Inttostr(num));
end;

procedure TForm1.Button16Click(Sender: TObject);
var
  c, count : integer;
  mult : real;
begin
 if Edit1.Text = '' then
   ShowMessage ('Для этой задачи необходимо ввести переменную "с"')
 else
 begin
   ShowMessage('Дан целочисленный массив А размера N. Найти произведение элементов массива А, удовлетворяющих условию с<=А[i]');
   setMassivI(A);
   c := StrToInt(Edit1.Text);
   mult := 1;
   count := 0;
 for i := 0 to n do
   if c <= A[i] then
   begin
      mult := mult * A[i];
      count := count + 1;
   end;
 if (count <> 1) and (count <> 0) then
     Memo1.Lines.Add ('Произведение элементов, удовлетворяющих условию: ' + FloatToStr(mult))
 else if count = 0 then
      Memo1.Lines.Add('Произведение элементов найти невозможно - элементов, удовлетворяющих условию нет')
 else
     Memo1.Lines.Add ('Произведение элементов найти невозможно - только один элемент удовлетворяет условию: ');
 end;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  c, count : integer;
  mult : real;
begin
 if Edit1.Text = '' then
   ShowMessage ('Для этой задачи необходимо ввести переменную "с"')
 else
 begin
   ShowMessage('Дан целочисленный массив А размера N. Найти произведение элементов массива А, удовлетворяющих условию с>А[i]');
   setMassivI(A);
   c := StrToInt(Edit1.Text);
   mult := 1;
   count := 0;
 for i := 0 to n do
   if c > A[i] then
   begin
      mult := mult * A[i];
      count := count + 1;
   end;
 if (count <> 1) and (count <> 0) then
     Memo1.Lines.Add ('Произведение элементов, удовлетворяющих условию: ' + FloatToStr(mult))
 else if count = 0 then
      Memo1.Lines.Add('Произведение элементов найти невозможно - элементов, удовлетворяющих условию нет')
 else
     Memo1.Lines.Add ('Произведение элементов найти невозможно - только один элемент удовлетворяет условию: ');
 end;
end;

procedure TForm1.Button18Click(Sender: TObject);
var
  d, count : integer;
begin
  if Edit2.Text = '' then
    ShowMessage ('Для этой задачи необходимо ввести переменную "d"')
  else
  ShowMessage ('Дан целочисленный массив А размера N. Найти сколько элементов массива А удовлетворяют условию: a[i]<=d');
  setMassivI(A);
  d := StrToInt(Edit2.Text);
  count := 0;
for i := 0 to n do
  if A[i] < d then
     count := count + 1;
Memo1.Lines.Add ('Число элементов, удовлетворяющих условию: ' + IntToStr(count));
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  c, count : integer;
  sum : real;
begin
 if Edit1.Text = '' then
   ShowMessage ('Для этой задачи необходимо ввести переменную "с"')
 else
 begin
   ShowMessage('Дан целочисленный массив А размера N. Найти сумму элементов массива А, удовлетворяющих условию с<=a[i]');
   setMassivI(A);
   c := StrToInt(Edit1.Text);
   sum := 0;
   count := 0;
 for i := 0 to n do
   if c <= A[i] then
   begin
      sum := sum + A[i];
      count := count + 1;
   end;
 if (count <> 1) and (count <> 0) then
     Memo1.Lines.Add ('Сумма элементов, удовлетворяющих условию: ' + FloatToStr(sum))
 else if count = 0 then
      Memo1.Lines.Add('Сумму элементов найти невозможно - элементов, удовлетворяющих условию нет')
 else
     Memo1.Lines.Add ('Сумму элементов найти невозможно - только один элемент удовлетворяет условию: ');
 end;
end;

procedure TForm1.Button20Click(Sender: TObject);
var
  c, count : integer;
  sum : real;
begin
 if Edit1.Text = '' then
   ShowMessage ('Для этой задачи необходимо ввести переменную "с"')
 else
 begin
   ShowMessage('Дан целочисленный массив А размера N. Найти сумму элементов массива А, удовлетворяющих условию с>a[i]');
   setMassivI(A);
   c := StrToInt(Edit1.Text);
   sum := 0;
   count := 0;
 for i := 0 to n do
   if c > A[i] then
   begin
      sum := sum + A[i];
      count := count + 1;
   end;
 if (count <> 1) and (count <> 0) then
     Memo1.Lines.Add ('Сумма элементов, удовлетворяющих условию: ' + FloatToStr(sum))
 else if count = 0 then
      Memo1.Lines.Add('Сумму элементов найти невозможно - элементов, удовлетворяющих условию нет')
 else
     Memo1.Lines.Add ('Сумму элементов найти невозможно - только один элемент удовлетворяет условию: ');
 end;
end;

end.
