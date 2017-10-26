#######################
### General Results ###
#######################
#######################

set termoption enhanced
set terminal pngcairo size 800,600 font ',12'
set xlabel "nodes"
set term png

###################
## links x nodes ##
###################

set title  "links x nodes"
set ylabel "links"
set output "mxn.png"

f(x) = a1 + a2*x**a3;
g(x) = b1 + b2*x**b3;

fit f(x) '10000.txt' using 2:4:6 via a1,a2,a3
fit g(x) '9000.txt'  using 2:4:6 via b1,b2,b3

plot "10000.txt" using 2:4:6 title '10000' with errorbars, \
     "10000.txt" using 2:4:6 title '9000' with errorbars, \
     f(x), g(x)

###################
## fsets x nodes ##
###################

set title  "fsets x nodes"
set ylabel "fsets"
set output "fxn.png"

f(x) = a1 + a2**(a3*x);
g(x) = b1 + b2**(b3*x);

fit f(x) '10000.txt' using 2:6:8 via a1,a2,a3
fit g(x) '9000.txt'  using 2:6:8 via b1,b2,b3

plot "10000.txt" using 2:6:8 title '10000' with errorbars, \
     "10000.txt" using 2:6:8 title '9000' with errorbars, \
     f(x), g(x)

###################
## multi x nodes ##
###################

set title  "multi x nodes"
set ylabel "% of multicoloring"
set output "mcxn.png"

f(x) = a1 + a2*x**a3;
g(x) = b1 + b2*x**b3;

fit f(x) '10000.txt' using 2:9:11 via a1,a2,a3
fit g(x) '9000.txt'  using 2:9:11 via b1,b2,b3

plot "10000.txt" using 2:9:11 title '10000' with errorbars, \
     "10000.txt" using 2:9:11 title '9000' with errorbars, \
     f(x), g(x)

###################
## objfn x nodes ##
###################

set title  "objfn x nodes"
set ylabel "objfn"
set output "zxn.png"

f(x) = a1 + a2*x**a3;
g(x) = b1 + b2*x**b3;

fit f(x) '10000.txt' using 2:12:14 via a1,a2,a3
fit g(x) '9000.txt'  using 2:12:14 via b1,b2,b3

plot "10000.txt" using 2:12:14 title '10000' with errorbars, \
     "10000.txt" using 2:12:14 title '9000' with errorbars, \
     f(x), g(x)
