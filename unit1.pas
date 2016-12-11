unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;
  //StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    imgCard1: TImage;
    imgCard2: TImage;
    imgCard3: TImage;
    imgCard4: TImage;
    imgCard5: TImage;
    imgCard6: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

uses
  main;

{ TForm2 }

procedure TForm2.FormMouseDown(Sender: TObject; Button: TMouseButton);
begin
  if Button = mbRight then Close;
end;

procedure TForm2.FormResize(Sender: TObject);
var
  cWidth, cHeight: Integer;
begin
  imgCard1.Left:=Round((setView.Width / 2) - ((setView.Width * 0.26)/2));
  imgCard1.Width:=Round(setView.Width * 0.45);
  imgCard1.Height:=Round(setView.Height * 0.43);

  cWidth:= Round(setView.Width / 5) - 3;
  cHeight:= Round(setView.Height * 0.55);

  imgCard2.Top:=setView.Height-cHeight;
  imgCard2.Left:=2;
  imgCard2.Width:=cWidth;
  imgCard2.Height:=cHeight;

  imgCard3.Top:=setView.Height-cHeight;
  imgCard3.Left:=(cWidth)+4;
  imgCard3.Width:=cWidth;
  imgCard3.Height:=cHeight;

  imgCard4.Top:=setView.Height-cHeight;
  imgCard4.Left:=(cWidth*2)+6;
  imgCard4.Width:=cWidth;
  imgCard4.Height:=cHeight;

  imgCard5.Top:=setView.Height-cHeight;
  imgCard5.Left:=(cWidth*3)+8;
  imgCard5.Width:=cWidth;
  imgCard5.Height:=cHeight;

  imgCard6.Top:=setView.Height-cHeight;
  imgCard6.Left:=(cWidth*4)+10;
  imgCard6.Width:=cWidth;
  imgCard6.Height:=cHeight;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
end;


procedure TForm2.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i:=0 to recordCount-1 do
  begin
    if (cardDB[i].setNumber = selectedSet) and (cardDB[i].cardInSet = '1') then
      begin
        imgCard1.Picture.LoadFromFile('DBFiles\images\'+cardDB[i].cardPic);
      end;
    if (cardDB[i].setNumber = selectedSet) and (cardDB[i].cardInSet = '2') then
      begin
        imgCard2.Picture.LoadFromFile('DBFiles\images\'+cardDB[i].cardPic);
      end;
    if (cardDB[i].setNumber = selectedSet) and (cardDB[i].cardInSet = '3') then
      begin
        imgCard3.Picture.LoadFromFile('DBFiles\images\'+cardDB[i].cardPic);
      end;
    if (cardDB[i].setNumber = selectedSet) and (cardDB[i].cardInSet = '4') then
      begin
        imgCard4.Picture.LoadFromFile('DBFiles\images\'+cardDB[i].cardPic);
      end;
    if (cardDB[i].setNumber = selectedSet) and (cardDB[i].cardInSet = '5') then
      begin
        imgCard5.Picture.LoadFromFile('DBFiles\images\'+cardDB[i].cardPic);
      end;
    if (cardDB[i].setNumber = selectedSet) and (cardDB[i].cardInSet = '6') then
      begin
        imgCard6.Picture.LoadFromFile('DBFiles\images\'+cardDB[i].cardPic);
      end;
  end;
end;

end.

