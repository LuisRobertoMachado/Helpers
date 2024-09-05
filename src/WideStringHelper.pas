unit WideStringHelper;

interface

type
  TWideStringHelper = record helper for WideString
  public
    procedure Concatenar(const ASubString: WideString; const Separator: WideString = '');
  end;

implementation

procedure TWideStringHelper.Concatenar(const ASubString: WideString; const Separator: WideString = '');
begin
  if Self = '' then
    Self := ASubString
  else
    Self := Self + Separator + ASubString;
end;

end.
