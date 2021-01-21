CC = gcc
RM = rm -f

filcirc: filcirc.c
	$(CC) filcirc.c -o filcirc -lm

filcirc.csv: filcirc
	./filcirc > filcirc.csv

plot: filcirc.csv
	gnuplot filcirc.gp

clean:
	$(RM) filcirc filcirc.csv
