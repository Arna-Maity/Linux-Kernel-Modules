obj-m += hello.o hello-2.o hello-3.o hello-4.o hello-5.o

MAKE = /usr/bin/make

all:
	mkdir -p build/ && $(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules && mv *.o *.ko *.mod.c .hello* Module.symvers modules.order ./build

clean:
	rm -rf build