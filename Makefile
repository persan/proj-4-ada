GCC=$(shell which gcc)
PREFIX?=$(shell dirname $(shell dirname ${GCC}}))

-include Makefile.conf

all:compile

clean:
	git clean -xdf
test:compile
	${MAKE} -C examples/simple all

compile:
	gprbuild -p -j0 -P proj.gpr
generate:
	@rm -rf src/gen .gen; mkdir -p .gen src/gen
	@echo "#include <proj.h>" >.gen/gen.cpp
	@cd  .gen; gcc -c gen.cpp -fdump-ada-spec -fada-spec-parent=libproj
	@sed -f libproj.sed .gen/* -i
	@cp  .gen/*-proj_h.ads src/gen/
uninstall:
	@-gprinstall --uninstall proj --prefix=${DESTDIR}${PREFIX} >/dev/null 2>&1;true

install:uninstall
	gprinstall -p -P proj.gpr --prefix=${DESTDIR}${PREFIX}
Makefile.conf:${GCC} Makefile
	@echo "export PATH=${PATH}" >${@}

x:
	@echo ${PREFIX}
