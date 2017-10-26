########################
### Splitted Results ###
########################
########################

set termoption enhanced
set terminal pngcairo size 800,600 font ',12'
set xlabel "nodes"
set term png

###################
## links x nodes ##
###################

set title "links x nodes (10000m)"
set output "links-10000.png"
set ylabel "links"
plot "10000.txt" using 2:4:6 title 'traditional coloring', \
     "10000.txt" using 2:14:16 title 'multicoloring'

set title "links x nodes (9000m)"
set output "links-9000.png"
set ylabel "links"
plot "9000.txt" using 2:4:6 title 'traditional coloring', \
     "9000.txt" using 2:14:16 title 'multicoloring'

###################
## fsets x nodes ##
###################

set title "fsets x nodes (10000m)"
set output "fsets-10000.png"
set ylabel "fsets"
plot "10000.txt" using 2:4:6 title 'traditional coloring', \
     "10000.txt" using 2:14:16 title 'multicoloring'

set title "fsets x nodes (9000m)"
set output "fsets-9000.png"
set ylabel "fsets"
plot "9000.txt" using 2:7:9 title 'traditional coloring', \
     "9000.txt" using 2:17:19 title 'multicoloring'

###################
## objfn x nodes ##
###################

set title "objfn x nodes (10000m)"
set output "objfn-10000.png"
set ylabel "objfn"
plot "10000.txt" using 2:10:12 title 'traditional coloring', \
     "10000.txt" using 2:20:22 title 'multicoloring'

set title "objfn x nodes (9000m)"
set output "objfn-9000.png"
set ylabel "objfn"
plot "9000.txt" using 2:10:12 title 'traditional coloring', \
     "9000.txt" using 2:20:22 title 'multicoloring'
