unit EquationTest;

(*
 Install TestInsight from http://testinsight.dsharp.org/
 Steps to create a starting point unit : New > Other > DunitX Project
   check all boxes to have Setup, Teardown and test units automatically created

 Then in IDE's Project Manager window, right click on project and select 'TestInsight project'
  this sets up the dpr properly - no need to follow the blcg steps in the link below

 Then append code with steps from
   https://parnassus.co/unit-testing-with-testinsight/
   (It's a little hard to follow because he starts with DUnit and converst to TestInsight)

 See 'InterestingEquations' unit in this project for the equations being tested
*)

interface

uses
  DUnitX.TestFramework,
  InterestingEquations;

type

  [TestFixture]
  TMyTestObject = class(TObject)
  strict private
   FMyEquations: TMyEquations;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestTemperatureRange;
    [Test]
    procedure TestZero;

  end;

const
  MinT = 280;
  MaxT = 550;
  A = 0.08745;
  B = 0.25984;
  C = 550.0;
  D = 0.29643;

implementation



procedure TMyTestObject.Setup;
begin
    FMyEquations := TMyEquations.Create;
end;

procedure TMyTestObject.TearDown;
begin
    FMyEquations := nil;
end;

procedure TMyTestObject.TestTemperatureRange;
const
  NumPartitions = 10;
var
  T : Double;
  I : Integer;
begin
  for I := 0 to NumPartitions do begin
    T := MinT + ((MaxT - MinT) * (I / NumPartitions));
    Assert.AreEqual<Double>(0, FMyEquations.Equation(T, A, B, C, D));
  end;
end;

procedure TMyTestObject.TestZero;
begin
   Assert.AreEqual(0, FMyEquations.IsZero);
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);
end.

