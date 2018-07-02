var l,r,x,y,ans,n,d,c :integer ;
Function  gcd(a,b:integer):integer;
  var t:integer;
  begin
  while b<>0 do
    begin
        t := a mod b;
        a := b;
        b := t;
    end;
    gcd:=a;
  end;

begin
    readln(l,r,x,y);
    if (y mod x <> 0) then
      writeln(0);
    ans := 0;
    n := y div x;
    for d := 1 to round(sqrt(n)) do
        if (n mod d = 0) then
          begin
          c := n div d;
          if ((l <= c * x) and (c * x <= r) and (l <= d * x) and (d * x <= r) and (gcd(c, d) = 1)) then
            if (d * d = n) then ans+=1
                else ans += 2;
          end;

    writeln(ans);
end.