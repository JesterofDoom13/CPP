CFLAGS = -Wall
all: Sources/main.o Sources/worker.o
    g++ $CFALGS Sources/main.o Sources/worker.o -o worker

main.o : Sources/main.cpp
    g++ -c Sources/main.cpp

Worker.o : Sources/worker.cpp Sources/worker.h
    g++ -c Sources/worker.cpp Sources/worker.h

clean :
    rm worker Sources/*.o
