#######################
### General Results ###
#######################
#######################

#set termoption enhanced
set terminal pngcairo size 1280,720 font ',12'
set xlabel "nodes"
set term png
set key left

f(x) = a*x**b;
g(x) = c*x**d;

###################
## objfn x nodes ##
###################

set title  "objfn x nodes (10km)"
set ylabel "objfn"
set output "fit-zxn-10000.png"

a=0;b=1;
c=0;d=1;

fit f(x) "10000.txt" u 2:4 via a, b;
fit g(x) "10000.txt" u 2:7 via c, d;

plot "10000.txt" using 2:4:6 title 'TC', f(x),\
     "10000.txt" using 2:7:9 title 'MC', g(x)

set title  "objfn x nodes (9km)"
set ylabel "objfn"
set output "fit-zxn-9000.png"

a=0;b=1;
c=0;d=1;

fit f(x) "9000.txt" u 2:4 via a,b;
fit g(x) "9000.txt" u 2:7 via c,d;

plot "9000.txt" using 2:4:6 title 'TC', f(x),\
     "9000.txt" using 2:7:9 title 'MC', g(x)

###################
## vazao x nodes ##
###################

set title  "vazao x nodes (10km)"
set ylabel "% of multicoloring"
set output "fit-znxn-10000.png"

a=0;b=1;
c=0;d=1;

fit f(x) "10000.txt" u 2:10 via a, b;
fit g(x) "10000.txt" u 2:13 via c, d;

plot "10000.txt" using 2:10:12 title 'TC', f(x),\
     "10000.txt" using 2:13:15 title 'MC', g(x)

set title  "vazao x nodes (9km)"
set ylabel "% of multicoloring"
set output "fit-znxn-9000.png"

a=0;b=1;
c=0;d=1;

fit f(x) "10000.txt" u 2:10 via a, b;
fit g(x) "10000.txt" u 2:13 via c, d;

plot "9000.txt" using 2:10:12 title 'TC', f(x),\
     "9000.txt" using 2:13:15 title 'MC', g(x)

