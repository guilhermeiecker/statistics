set title "Average Links for 10000m2"
set term png
set output "links-10000.png"
set xlabel "Number of nodes"
set ylabel "Average number of links"
plot "10000.txt" using 2:4:6 title 'traditional coloring', \
     "10000.txt" using 2:14:16 title 'multicoloring'

set title "Average Links for 9000m2"
set term png
set output "links-9000.png"
set xlabel "Number of nodes"
set ylabel "Average number of links"
plot "9000.txt" using 2:4:6 title 'traditional coloring', \
     "9000.txt" using 2:14:16 title 'multicoloring'

set title "Average Feasible Sets for 10000m2"
set term png
set output "fsets-10000.png"
set xlabel "Number of nodes"
set ylabel "Average number of feasible sets"
plot "10000.txt" using 2:7:9 title 'traditional coloring', \
     "10000.txt" using 2:17:19 title 'multicoloring'

set title "Average Feasible Sets for 9000m2"
set term png
set output "fsets-9000.png"
set xlabel "Number of nodes"
set ylabel "Average number of feasible sets"
plot "9000.txt" using 2:7:9 title 'traditional coloring', \
     "9000.txt" using 2:17:19 title 'multicoloring'

set title "Average Objective Function for 10000m2"
set term png
set output "objfn-10000.png"
set xlabel "Number of nodes"
set ylabel "Average objective function"
plot "10000.txt" using 2:10:12 title 'traditional coloring', \
     "10000.txt" using 2:20:22 title 'multicoloring'

set title "Average Objective Function for 9000m2"
set term png
set output "objfn-9000.png"
set xlabel "Number of nodes"
set ylabel "Average objective function"
plot "9000.txt" using 2:10:12 title 'traditional coloring', \
     "9000.txt" using 2:20:22 title 'multicoloring'

