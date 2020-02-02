all:compile test

clean:
	git clean -xdf

compile:
	gprbuild -p -j0 -P proj_sample.gpr

test:compile
	./bin/main
