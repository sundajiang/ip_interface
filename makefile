
#CC = arm-linux-gcc
CC = gcc

objects = ip_interface.o  mr_common.o

ip_interface:$(objects)
	$(CC) -g -o ip_interface $(objects) -lpthread
ip_interface.o:ip_interface.c
	$(CC) -c -g ip_interface.c -o ip_interface.o
mr_common.o:mr_common.c
	$(CC) -c -g mr_common.c -o mr_common.o

clean:
	rm *.o ip_interface
