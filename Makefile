all : main

main : main.o sum.o
	gcc -o main main.o sum.o

main.o : main.c sum.h
	gcc -o main.o -c main.c 

#-c: Indica que a compilação vai ser interrompida antes da linkagem
sum.o : sum.c sum.h
	gcc -o sum.o -c sum.c 

clean:
	rm -rf *.o main

run: main
	./main