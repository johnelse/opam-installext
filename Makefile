INSTALL_PATH=$(PREFIX)/bin/opam-installext

all: opam-installext

opam-installext: _build/installext.native
	cp $^ $@

_build/%:
	ocamlbuild -tags debug,use_unix $*

clean:
	rm -rf _build installext.native opam-installext

install:
	install opam-installext $(INSTALL_PATH)
