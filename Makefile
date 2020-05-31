obj-m += hello.o \
		 hello-2.o \
		 hello-3.o \
		 hello-4.o \
		 hello-5.o \
		 chardev.o

MAKE = /usr/bin/make

all:
	mkdir -p build/ && cp *.c Makefile build/ && $(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD)/build modules && rm -rf build/*.c build/Makefile

clean:
	rm -rf build