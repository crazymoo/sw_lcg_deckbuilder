unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmProductsSelect }

  TfrmProductsSelect = class(TForm)
    Button1: TButton;
    sbxProducts: TScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function GetNumberProds: Integer;
    procedure SetNumberProds(val: Integer);
  private
    availProdsNum: Integer;
  public
    productNames: array of array[0..1] of String;
  published
    Property NumProducts: Integer read GetNumberProds write SetNumberProds;
  end;

var
  frmProductsSelect: TfrmProductsSelect;
  numProducts: Integer;

implementation

{$R *.lfm}

{ TfrmProductsSelect }

procedure TfrmProductsSelect.Button1Click(Sender: TObject);
begin
  Close();
end;

procedure TfrmProductsSelect.FormShow(Sender: TObject);
var
  x,y,i: Integer;
  cBox: TCheckBox;
  num: String;
begin
  x := 5; y := 5;
  for i:=0 to NumProducts - 1 do
  begin
    num := IntToStr(i);
    cBox := TCheckBox.Create(sbxProducts);
    cBox.Parent := sbxProducts;
    cBox.Left := x;
    cBox.Top := y;
    case i+1 of
      2..7: cBox.Caption := productNames[i,0] + ' (Hoth Cycle)';
      10..15: cBox.Caption := productNames[i,0] + ' (Echoes of the Force Cycle)';
      16..21: cBox.Caption := productNames[i,0] + ' (Rogue Squadron Cycle)';
      24..29: cBox.Caption := productNames[i,0] + ' (Endor Cycle)';
      31..36: cBox.Caption := productNames[i,0] + ' (Opposition Cycle)';
      37..42: cBox.Caption := productNames[i,0] + ' (Alliances Cycle)';
      else cBox.Caption := productNames[i,0];
    end;

    cBox.Name := 'chk' + num;
    y := y + 28;
  end;
end;

function TfrmProductsSelect.GetNumberProds: Integer;
begin
  result := availProdsNum;
end;

procedure TfrmProductsSelect.SetNumberProds(val: Integer);
begin
  availProdsNum := val;
end;

end.

