CFLAGS = -Wall
worker: Sources/main.o Sources/worker.o
	clear; \
g++ Sources/main.o Sources/worker.o -o worker ;\
xterm -e "clear; ./worker"

main.o : Sources/main.cpp
	g++ -c Sources/main.cpp

worker.o : Sources/worker.cpp Sources/worker.h
	g++ -c Sources/worker.cpp Sources/worker.h

clean :
	rm worker Sources/*.o
