unit WideStringHelper;

interface

type
  TWideStringHelper = record helper for WideString
  private
    const Empty: widestring = '';
  public
    procedure Concatenar(const ASubString: WideString; const Separator: WideString = '');
    function IsEmpty: Boolean;
  end;
implementation

procedure TWideStringHelper.Concatenar(const ASubString: WideString; const Separator: WideString = '');
begin
  if Self = '' then
    Self := ASubString
  else
    Self := Self + Separator + ASubString;
end;

function TWideStringHelper.IsEmpty: Boolean;
begin
  Result := Self = Empty;
end;

end.
