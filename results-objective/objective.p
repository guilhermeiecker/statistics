#######################
### General Results ###
#######################
#######################

#set termoption enhanced
set terminal pngcairo size 1280,720 font ',12'
set xlabel "nodes"
set term png

###################
## objfn x nodes ##
###################

set title  "objfn x nodes (10km)"
set ylabel "objfn"
set output "zxn-10000.png"
set key left

plot "10000.txt" using 2:4:6 title 'TC', \
     "10000.txt" using 2:7:9 title 'MC'

set title  "objfn x nodes (9km)"
set ylabel "objfn"
set output "zxn-9000.png"
set key left

plot "9000.txt" using 2:4:6 title 'TC', \
     "9000.txt" using 2:7:9 title 'MC'


###################
## vazao x nodes ##
###################

set title  "vazao x nodes (10km)"
set ylabel "% of multicoloring"
set output "znxn-10000.png"

plot "10000.txt" using 2:10:12 title 'TC', \
     "10000.txt" using 2:13:15 title 'MC'

set title  "vazao x nodes (9km)"
set ylabel "% of multicoloring"
set output "znxn-9000.png"

plot "9000.txt" using 2:10:12 title 'TC', \
     "9000.txt" using 2:13:15 title 'MC'

