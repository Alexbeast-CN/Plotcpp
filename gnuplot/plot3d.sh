#!/bin/bash

# Set the data file name and output file name
DATA_FILE=data.txt
OUTPUT_FILE=output.png

# Use gnuplot to plot the data
gnuplot <<- EOF
set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 800, 600
set output '$OUTPUT_FILE'
set xlabel 'x'
set ylabel 'y'
set zlabel 'z'
set ticslevel 0
set view 60,30,1,1
set pm3d depthorder hidden3d 2
set palette rgbformulae 22,13,-31
splot '$DATA_FILE' with lines
EOF