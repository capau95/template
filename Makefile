HEADERS = kbfunc.h

all: kb kbfunc

kb: kb.o kbfunc.o
	gcc -o kb kb.o kbfunc.o
	
kb.o: kb.c
	gcc -c kb.c

kbfunc.o: kbfunc.c
	gcc -c kbfunc.c

clean: 
	-rm -f kb.o	
	-rm -f kbfunc.o
	-rm -f kb
