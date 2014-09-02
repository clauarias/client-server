# This is a variable
CC=g++ -std=c++0x
ZMQ=/home/claudia/zmq
ZMQ_HDRS=$(ZMQ)/include
ZMQ_LIBS=$(ZMQ)/lib 

all: client server

client: client.c
	$(CC) -I$(ZMQ_HDRS) -c bank_client.c
	$(CC) -L$(ZMQ_LIBS) -o bank_client bank_client.o -lzmq -lczmq
	

server:  server.c
	$(CC) -I$(ZMQ_HDRS) -c bank_server.c
	$(CC) -L$(ZMQ_LIBS) -o bank_server bank_server.o -lzmq -lczmq

clean:
	rm -f bankclient.o bank_server.o bank_client bank_server *~







