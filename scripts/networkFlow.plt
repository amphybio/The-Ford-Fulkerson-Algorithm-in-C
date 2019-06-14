set term postscript portrait enhanced size 6.48in,4in color "Helvetica" 10 
set output outputfile

set autoscale                    
set title "Network Flow"
set xlabel "Max Flow Path Percentage"
set ylabel "Max Flow"
set xrange [*:*] reverse
set tics scale 0
set offset 0, 0, 1, 1
set key left bottom #outside

plot  	inputfile every 1  using ($1):($2) title '1 -> 2' with linespoints lt 1 lc rgb "blue" lw 2  pt 1 , \
        inputfile every 1  using ($3):($4) title '1 -> 3' with linespoints lt 1 lc rgb "green" lw 2  pt 6 , \
	inputfile every 1  using ($5):($6) title '2 -> 4' with linespoints lt 1 lc rgb "orange" lw 2  pt 3 , \
	inputfile every 1  using ($7):($8) title '3 -> 2' with linespoints lt 1 lc rgb "blue" lw 2  pt 4 , \
        inputfile every 1  using ($9):($10) title '4 -> 3' with linespoints lt 1 lc rgb "red"  lw 2  pt 5 
