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
set output "mxn.png"
set key left

plot "10000.txt" using 2:4:6 title '10000' with errorbars, \
     "9000.txt"  using 2:4:6 title '9000'  with errorbars

###################
## fsets x nodes ##
###################

set title  "fsets x nodes"
set ylabel "fsets"
set output "fxn.png"

plot "10000.txt" using 2:7:9 title '10000' with errorbars, \
     "9000.txt"  using 2:7:9 title '9000'  with errorbars

###################
## multi x nodes ##
###################

set title  "multi x nodes"
set ylabel "% of multicoloring"
set output "mcxn.png"

plot "10000.txt" using 2:10:12 title '10000', \
     "9000.txt"  using 2:10:12 title '9000'

###################
## objfn x nodes ##
###################

set title  "objfn x nodes"
set ylabel "objfn"
set output "zxn.png"

plot "10000.txt" using 2:13:15 title '10000' with errorbars, \
     "9000.txt"  using 2:13:15 title '9000'  with errorbars
