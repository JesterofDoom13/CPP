run: main.o worker.o
	clear; \
g++ main.o worker.o -o worker ;\
xterm -e "clear; ./worker"

main.o : main.cpp
	g++ -c main.cpp

worker.o : worker.cpp worker.h
	g++ -c worker.cpp worker.h

clean :
	rm worker *.o *.gch
