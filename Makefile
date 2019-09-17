KRELEASE ?= $(shell uname -r)
KBUILD ?= /lib/modules/$(KRELEASE)/build
obj-m := gpio-it87.o

modules:
	$(MAKE) -C $(KBUILD) M=$(PWD) modules

install: modules
	/usr/bin/install -D gpio-it87.ko /lib/modules/$(KRELEASE)/kernel/drivers/gpio/gpio-it87.ko
	/usr/bin/install -m 644 -D gpio-it87.conf /usr/lib/modules-load.d/gpio-it87.conf

clean:
	$(MAKE) -C $(KBUILD) M=$(PWD) clean
