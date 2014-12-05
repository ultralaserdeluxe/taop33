param n := 10;
param m := 10;

var brade{1..n, 1..m}, binary;

maximize damer: sum {i in 1..n} sum {j in 1..m} brade[i, j];
subject to maxkolumn {i in 1..n}:
	sum {j in 1..m} brade[i, j] <= 1;
subject to maxrad {j in 1..m}:
	sum {i in 1..n} brade[i, j] <= 1;

subject to maxdiagonalposx {k in 0..9}:
	sum {i in 1..(10-k)} brade[i+k, i] <= 1;
subject to maxdiagonalposy {k in 1..8}:
	sum {i in 1..(10-k)} brade[i, i+k] <= 1;
subject to maxdiagonalnegy {k in 1..8}:
	sum {i in 1..(10-k)} brade[i, 11-k-i] <= 1;
subject to maxdiagonalnegx {k in 0..8}:
	sum {i in 1..(10-k)} brade[i+k, 11-i] <= 1;

solve;

printf " *** Optimum: ***\n";
printf "Summa Damer: %d\n", damer;

printf{i in 1..n, j in 1..m: brade[i, j] > 0} "Dam placeras på %d:%d \n", i, j;

end;
