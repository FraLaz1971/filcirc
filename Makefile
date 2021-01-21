CC = gcc
RM = rm -f

filcirc: filcirc.c
	$(CC) filcirc.c -o filcirc -lm

filcirc.csv: filcirc
	./filcirc > filcirc.csv

plot: filcirc.csv
	gnuplot filcirc.gp

ring: filcirc.csv
	awk -f ring.awk filcirc.csv |  gnuplot -p -e "plot '-'"

top: filcirc.csv
	awk -f top.awk filcirc.csv |  gnuplot -p -e "plot '-'"

bottom: filcirc.csv
	awk -f bottom.awk filcirc.csv |  gnuplot -p -e "plot '-'"

left: filcirc.csv
	awk -f left.awk filcirc.csv |  gnuplot -p -e "plot '-' with lines"

right: filcirc.csv
	awk -f right.awk filcirc.csv |  gnuplot -p -e "plot '-' with lines"

clean:
	$(RM) filcirc filcirc.csv
