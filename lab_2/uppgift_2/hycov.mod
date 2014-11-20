# Hannes och Yngves asbeströrsproblemmodell
param n;
param m;

var platta{1..n}, binary;

param a{1..m, 1..n};

minimize asbest: sum {i in 1..n} platta[i];
subject to minplatta{i in 1..m}:
	sum {j in 1..n} a[i, j] * platta[j] >= 1;

solve;

printf " *** Optimum: ***\n";
printf "Summa asbest: %d\n", sum {i in 1..n} platta[i];
printf{i in 1..n: platta[i] > 0} "Platta %d lyfts\n", i;

end;
