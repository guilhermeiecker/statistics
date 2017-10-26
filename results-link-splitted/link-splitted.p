########################
### Splitted Results ###
########################
########################

set termoption enhanced
set terminal pngcairo size 800,600 font ',12'
set xlabel "nodes"
set term png
set key left

###################
## fsets x links ##
###################

set title "fsets x links (10000m)"
set output "fxm-10000.png"
set ylabel "fsets"
plot "10000.txt" using 2:4:6 title 'traditional coloring', \
     "10000.txt" using 2:11:13 title 'multicoloring'

set title "fsets x links (9000m)"
set output "fxm-9000.png"
set ylabel "fsets"
plot "9000.txt" using 2:4:6 title 'traditional coloring', \
     "9000.txt" using 2:11:13 title 'multicoloring'

###################
## objfn x links ##
###################

set title "objfn x links (10000m)"
set output "zxm-10000.png"
set ylabel "objfn"
plot "10000.txt" using 2:7:9 title 'traditional coloring', \
     "10000.txt" using 2:14:16 title 'multicoloring'

set title "objfn x links (9000m)"
set output "zxm-9000.png"
set ylabel "objfn"
plot "9000.txt" using 2:7:9 title 'traditional coloring', \
     "9000.txt" using 2:14:16 title 'multicoloring'
