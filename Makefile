KRELEASE ?= $(shell uname -r)
KBUILD ?= /lib/modules/$(KRELEASE)/build
obj-m := gpio-it87.o

modules:
	$(MAKE) -C $(KBUILD) M=$(PWD) modules

clean:
	$(MAKE) -C $(KBUILD) M=$(PWD) clean
