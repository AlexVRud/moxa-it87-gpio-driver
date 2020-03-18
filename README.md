# moxa-it87-gpio-driver

https://github.com/torvalds/linux/blob/v5.2/drivers/gpio/gpio-it87.c

## Install required packages

make, linux-headers-\<KERNEL_RELEASE>

```bash
apt install --no-install-recommends -qqy make
apt install --no-install-recommends -qqy linux-headers-$(uname -r)
```

## Build package

1. Run `make` to build kernel module
2. Once build successful, `gpio-it87.ko` could be found under current directory