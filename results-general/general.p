set title "Average number of links x Number of nodes"
set term png
set output "mxn.png"
set xlabel "Number of nodes"
set ylabel "Average number of links"
plot "10000.txt" using 2:4:6 title '10000' with errorbars, \
     "9000.txt"  using 2:4:6 title '9000' with errorbars

set title "Average number of feasible sets x Number of nodes"
set term png
set output "fxn.png"
set xlabel "Number of nodes"
set ylabel "Average number of feasible sets"
plot "10000.txt" using 2:7:9 title '10000' with errorbars, \
     "9000.txt"  using 2:7:9 title '9000' with errorbars

set title "Percentage of Multicolored Networks x Number of nodes"
set term png
set output "mcxn.png"
set xlabel "Number of nodes"
set ylabel "% of Multicolored Networks"
plot "10000.txt" using 2:10:12 title '10000', \
     "9000.txt"  using 2:10:12 title '9000'

set title "Average Objective Function x Number of nodes"
set term png
set output "zxn.png"
set xlabel "Number of nodes"
set ylabel "Average objective function"
plot "10000.txt" using 2:13:15 title '10000' with errorbars, \
     "9000.txt"  using 2:13:15 title '9000' with errorbars

