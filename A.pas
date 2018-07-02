var m:array of int64;
n,i,sum:int64;
begin
readln(n);
setlength(m,n);
for i:=0 to n-1 do
  read(m[i]);
sort(m);
sum:=0;
if m[0]<>0 then sum:=1;
for i:=1 to n-1 do
  if (m[i]<>0)and(m[i]<>m[i-1]) then sum+=1;
writeln(sum);
end.