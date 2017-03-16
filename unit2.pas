unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Globals;

type

  { TfrmProductsSelect }

  TfrmProductsSelect = class(TForm)
    Button1: TButton;
    sbxProducts: TScrollBox;
    procedure CheckBoxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function GetNumberProds: Integer;
    procedure SetNumberProds(val: Integer);
  private
    availProdsNum: Integer;
  published
    Property NumProducts: Integer read GetNumberProds write SetNumberProds;
  end;

var
  frmProductsSelect: TfrmProductsSelect;
  numProducts: Integer;

implementation

{$R *.lfm}

{ TfrmProductsSelect }

procedure TfrmProductsSelect.CheckBoxClick(Sender: TObject);
var
  numString: String;
  num: Integer;
begin
  numString := TCheckBox(Sender).Name;
  numString := Copy(numString, 4, 99);
  num := StrToInt(numString);
  if (TCheckbox(Sender).Checked) then
    selectedProducts[num,1] := '1'
  else
    selectedProducts[num,1] := '0';
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
      2..7: cBox.Caption := selectedProducts[i,0] + ' (Hoth Cycle)';
      10..15: cBox.Caption := selectedProducts[i,0] + ' (Echoes of the Force Cycle)';
      16..21: cBox.Caption := selectedProducts[i,0] + ' (Rogue Squadron Cycle)';
      24..29: cBox.Caption := selectedProducts[i,0] + ' (Endor Cycle)';
      31..36: cBox.Caption := selectedProducts[i,0] + ' (Opposition Cycle)';
      37..42: cBox.Caption := selectedProducts[i,0] + ' (Alliances Cycle)';
      else cBox.Caption := selectedProducts[i,0];
    end;
    cBox.Name := 'chk' + num;
    cBox.OnClick := @CheckBoxClick;
    if selectedProducts[i,1] = '1' then
      cBox.State := cbChecked;
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

