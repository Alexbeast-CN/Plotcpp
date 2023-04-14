#!/bin/bash

# Set the data file name and output file name
DATA_FILE=data2d.txt
OUTPUT_FILE=output.png

# Use gnuplot to plot the data
gnuplot <<- EOF
set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 800, 600
set output '$OUTPUT_FILE'
set xlabel 'Time'
set ylabel 'Value'
set title 'Data Plot'
plot '$DATA_FILE' with lines
EOF
