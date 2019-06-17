set term png enhanced size 648,400
set output outputfile

set autoscale
set title "Network Flow"
set xlabel "Percentage of maximum flow through the edges"
set ylabel "Percentage of maximum output flow"
set xrange [*:*] reverse
set yrange [0:105]
set ytics 10
set tics scale 0
set grid
show grid

set key left bottom #outside

plot  	inputfile every 1  using ($1):($2/0.14) title '1->2 1->3 2->4' with linespoints lt 1 lc rgb "blue" lw 2  pt 1 , \
        inputfile every 1  using ($3):($4/0.14) title '1->2 1->3 3->2' with linespoints lt 1 lc rgb "green" lw 2  pt 6 , \
      	inputfile every 1  using ($5):($6/0.14) title '1->2 3->2 2->4' with linespoints lt 1 lc rgb "orange" lw 2  pt 3 , \
        inputfile every 1  using ($7):($8/0.14) title '1->3 3->2 2->4' with linespoints lt 1 lc rgb "red" lw 2  pt 7 , \
        inputfile every 1  using ($9):($10/0.14) title '1->2 1->3 4->3' with linespoints lt 1 lc rgb "blue" lw 2  pt 8 , \
        inputfile every 1  using ($11):($12/0.14) title '1->2 2->4 4->3' with linespoints lt 1 lc rgb "green" lw 2  pt 9 , \
        inputfile every 1  using ($13):($14/0.14) title '1->2 3->2 4->3' with linespoints lt 1 lc rgb "orange" lw 2  pt 10 , \
        inputfile every 1  using ($15):($16/0.14) title '1->3 2->4 4->3' with linespoints lt 1 lc rgb "red" lw 2  pt 11 , \
        inputfile every 1  using ($17):($18/0.14) title '1->3 3->2 4->3' with linespoints lt 1 lc rgb "blue" lw 2  pt 4 , \
        inputfile every 1  using ($19):($20/0.14) title '3->2 2->4 4->3' with linespoints lt 1 lc rgb "green"  lw 2  pt 5
