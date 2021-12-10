unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, ClipBrd;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Image2: TImage;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture); // копирование картинки Assign'ом в ClipBoard
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  OpenDialog1.Execute; // открываем папки на пк
  image1.Picture.LoadFromFile (OpenDialog1.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if ClipBoard.HasFormat(cf_picture) = true
  then image2.Picture.Assign(ClipBoard);
end;


end.

