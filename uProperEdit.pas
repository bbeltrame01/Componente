unit uProperEdit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, System.Character,
  System.StrUtils;

type
  TProperEdit = class(TEdit)
  public
    { Public declarations }
    function FormatString(AValue: String): String;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Bruno', [TProperEdit]);
end;

{ TProperEdit }

function TProperEdit.FormatString(AValue: String): String;
var
  i: Integer;
  LText: String;
begin
  LText := '';
  for i := 1 to Length(AValue) do
    begin
      if (i = 1) or ((AValue[i - 1] = ' ') and (AValue[i] in ['a'..'z'])) then
        LText := LText + ToUpper(AValue[i])
      else
        LText := LText + AValue[i];
    end;
  Result := LText;
end;

end.
