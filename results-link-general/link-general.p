#######################
### General Results ###
#######################
#######################

#set termoption enhanced
set terminal pngcairo size 800,600 font ',12'
set xlabel "nodes"
set term png

###################
## fsets x nodes ##
###################

set title  "fsets x links"
set ylabel "fsets"
set output "fxm.png"
set key left

plot "10000.txt" using 2:4:6 title '10000' with errorbars, \
     "9000.txt"  using 2:4:6 title '9000'  with errorbars

###################
## multi x links ##
###################

set title  "multi x links"
set ylabel "% of multicoloring"
set output "mcxm.png"

plot "10000.txt" using 2:7:9 title '10000' with errorbars, \
     "9000.txt"  using 2:7:9 title '9000'  with errorbars

###################
## objfn x links ##
###################

set title  "objfn x links"
set ylabel "objfn"
set output "zxm.png"

plot "10000.txt" using 2:10:12 title '10000', \
     "9000.txt"  using 2:10:12 title '9000'
