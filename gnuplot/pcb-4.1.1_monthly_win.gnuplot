set term png
set output "pcb-4.1.1_monthly_win.png"
set title "pcbinst-4.1.1.exe downloads"
set style data linespoints
# set Y-axis
set yrange [0:]
set ylabel "Number of monthly downloads [-]"
set grid y
# set X-axis
set xlabel "Month"
set timefmt "%Y-%m"
set xdata time
set format x "%Y-%m"
set xrange ["2018-04":]
set grid x
set xtic rotate by 90 scale 0 offset 0.5,0
# plot data
plot 'data/pcb-4.1.1_monthly_win.data' using 1:2 title ""
# set output back to default
set output
# reset terminal type
set terminal pop

