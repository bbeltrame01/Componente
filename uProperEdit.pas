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
  Result := AValue;
  for i:=1 to Length(AValue) do
  begin
    if (AValue[i] in ['a'..'z']) or (AValue[i] = ' ') then
    begin
      if (i=1) then
        LText := ToUpper(AValue[i])
      else if AValue[i-1]=' ' then
        LText := LText + ToUpper(AValue[i])
      else
        LText := LText + AValue[i];

      Result := LText;
    end;
  end;
end;

end.
