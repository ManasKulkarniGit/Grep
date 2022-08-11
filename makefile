
mygrep : main.o grep.o ll.o
	cc main.o grep.o ll.o -o mygrep
main.o : main.c ll.h grep.h
	cc -c main.c -wall
grep.o : grep.c grep.h ll.h ll.o
	cc -c grep.c -Wall
ll.o : ll.c ll.h
	cc -c ll.c -Wall
clean :
	rm *.o