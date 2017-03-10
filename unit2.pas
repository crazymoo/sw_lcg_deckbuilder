unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmProductsSelect }

  TfrmProductsSelect = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmProductsSelect: TfrmProductsSelect;

implementation

{$R *.lfm}

{ TfrmProductsSelect }

procedure TfrmProductsSelect.Button1Click(Sender: TObject);
begin
  Close();
end;

end.

