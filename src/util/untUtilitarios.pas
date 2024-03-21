unit untUtilitarios;

interface
type
  TUtilitario = class
    class function GetID : Integer;
  end;


implementation

uses
  System.sysUtils;

{ TUtilitario }
class function TUtilitario.GetID: Integer;
begin
  Result := Random(1000000);
end;

end.
