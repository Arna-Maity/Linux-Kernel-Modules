obj-m += hello.o hello-2.o hello-3.o hello-4.o

MAKE = /usr/bin/make

all:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean