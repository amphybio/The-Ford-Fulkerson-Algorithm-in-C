<<<<<<< HEAD
set term png enhanced size 648,400
set output outputfile

set autoscale
=======
set term png enhanced size 648,400 
set output outputfile

set autoscale                    
>>>>>>> d31f20cbaa7089d350a0e8fd296cd05052792556
set title "Network Flow"
set xlabel "Percentage of maximum flow through the edge"
set ylabel "Percentage of maximum output flow"
set xrange [*:*] reverse
set yrange [0:105]
set ytics 10
set tics scale 0
set grid
show grid

set key left bottom #outside

<<<<<<< HEAD
plot  	inputfile every 1  using ($1):($2/1.5) title '2 -> 3' with linespoints lt 1 lc rgb "blue" lw 2  pt 5 , \
        inputfile every 1  using ($3):($4/1.5) title '4 -> 5' with linespoints lt 1 lc rgb "green" lw 2  pt 6 , \
        inputfile every 1  using ($5):($6/1.5) title '6 -> 7' with linespoints lt 1 lc rgb "red"  lw 2  pt 1
=======
plot  	inputfile every 1  using ($1):($2/0.14) title '1 -> 3' with linespoints lt 1 lc rgb "blue" lw 2  pt 1 , \
        inputfile every 1  using ($3):($4/0.14) title '2 -> 4' with linespoints lt 1 lc rgb "green" lw 2  pt 6 , \
	inputfile every 1  using ($5):($6/0.14) title '1 -> 2' with linespoints lt 1 lc rgb "orange" lw 2  pt 3 , \
	inputfile every 1  using ($7):($8/0.14) title '3 -> 2' with linespoints lt 1 lc rgb "blue" lw 2  pt 4 , \
        inputfile every 1  using ($9):($10/0.14) title '4 -> 3' with linespoints lt 1 lc rgb "red"  lw 2  pt 5 
>>>>>>> d31f20cbaa7089d350a0e8fd296cd05052792556
