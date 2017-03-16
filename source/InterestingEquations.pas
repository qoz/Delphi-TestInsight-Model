unit InterestingEquations;

interface

type
 TMyEquations = class
  public
    function Equation(const T, A, B, C, D : Double): Double;
    function IsZero: integer;
  end;

//function Equation(const T, A, B, C, D : Double): Double;

implementation
uses
  System.SysUtils;

{ TInterestingEquations }

function TMyEquations.IsZero: integer;
begin
  result := 0;
end;

function TMyEquations.Equation(const T, A, B, C, D : Double): Double;
begin
  Result := Double.MaxValue;   // should get test failure when asserting  = 0
end;

end.
