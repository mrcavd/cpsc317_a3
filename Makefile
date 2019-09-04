CC=gcc
CFLAGS=-g -Wall -std=gnu99

all: myftpd

myftpd: myftpd.o netbuffer.o server.o

myftpd.o: myftpd.c netbuffer.h server.h

netbuffer.o: netbuffer.c netbuffer.h
server.o: server.c server.h

clean:
	-rm -rf myftpd myftpd.o netbuffer.o server.o
cleanall: clean
	-rm -rf *~
