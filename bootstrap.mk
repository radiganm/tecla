#!/usr/bin/make -f
## boostrap.mk (for tecla)
## Mac Radigan

.PHONY: bootstrap build update packages-apt install
.DEFAULT_GOAL := bootstrap

bootstrap:
	#autoreconf --force --install

bulid: bootstrap
	./configure --without-man-pages && make

install: build
	sudo make install

update:
	$(MAKE) -C ./submodules update

packages-apt:

## *EOF*
