default:
	@cat makefile

synthetic_data:
	wget https://gist.githubusercontent.com/Niarfe/25100a860cbb660150a3fec87378d8ac/raw/b280768fc7ad782c65f0e714017af2f05ba88ef2/synthetic_data.csv

square_wave:
	gnuplot -e "set datafile separator ','; set term png; set output 'square_wave.png'; plot 'synthetic_data.csv' using 1:2 with lines"

fibonacci:
	gnuplot -e "set datafile separator ','; set term png; set output 'fibonacci.png'; plot 'synthetic_data.csv' using 1:3 with lines"

clear:
	rm fibonacci.png || true
	rm square_wave.png || true
	rm synthetic_data.csv || true

.PHONY: all_images
all_images: square_wave fibonacci


