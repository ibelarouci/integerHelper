program project1;

{$mode objfpc}{$H+}
{$modeswitch TypeHelpers}

uses

SysUtils;

type
TTypeHelper = type helper(TIntegerHelper) for Integer
  procedure SetZero;
  function test :string;
end;

procedure TTypeHelper.SetZero;
begin
  self:= 0;
end;
function TTypeHelper.test:string;
begin
 result:= 'test';
end;



var i:integer;
    s:String;
begin
    s:='10';
    //i:=strtoint(s);
    i:=s.ToInteger;

    i.SetZero;


    //s:=inttostr(i) ;
    s:=i.ToString;
    s:=i.test;


    writeln('s = ',s)
end.

