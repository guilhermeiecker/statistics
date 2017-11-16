#######################
### General Results ###
#######################
#######################

#set termoption enhanced
set terminal pngcairo size 800,600 font ',12'
set xlabel "nodes"
set term png

###################
## links x nodes ##
###################

set title  "links x nodes"
set ylabel "links"
set output "fit-mxn.png"
set key left

f(x) = a*x**b
a = 0; b = 1;

g(x) = c*x**d
c = 0; d = 1;

fit f(x) "10000.txt" using 2:4 via a, b;
fit g(x) "9000.txt"  u 2:4 via c, d;

plot "10000.txt" u 2:4:6 title '10000' w yerr, f(x),\
     "9000.txt"  u 2:4:6 title '9000'  w yerr, g(x)

###################
## fsets x nodes ##
###################

set title  "fsets x nodes"
set ylabel "fsets"
set output "fit-fxn.png"

a=0;b=1;
c=0;d=1;

fit f(x) "10000.txt" using 2:7 via a, b;
fit g(x) "9000.txt"  using 2:7 via c, d;

plot "10000.txt" using 2:7:9 title '10000' with errorbars, f(x),\
     "9000.txt"  using 2:7:9 title '9000'  with errorbars, g(x)

###################
## multi x nodes ##
###################

set title  "multi x nodes"
set ylabel "% of multicoloring"
set output "fit-mcxn.png"

a=0;b=1;
c=0;d=1;

fit f(x) "10000.txt" using 2:10 via a, b;
fit g(x) "9000.txt"  using 2:10 via c, d;

plot "10000.txt" using 2:10:12 title '10000', f(x),\
     "9000.txt"  using 2:10:12 title '9000', g(x)

###################
## objfn x nodes ##
###################

set title  "objfn x nodes"
set ylabel "objfn"
set output "fit-zxn.png"

a=0;b=1;
c=0;d=1;

fit f(x) "10000.txt" using 2:13 via a, b;
fit g(x) "9000.txt"  using 2:13 via c, d;

plot "10000.txt" using 2:13:15 title '10000' with errorbars, f(x),\
     "9000.txt"  using 2:13:15 title '9000'  with errorbars, g(x)

