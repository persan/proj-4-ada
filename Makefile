all:
clean:
test:
compile:

generate:
	@rm -rf src/gen .gen; mkdir -p .gen src/gen
	@echo "#include <proj_api.h>" >.gen/gen.cpp
	@cd  .gen; gcc -c gen.cpp -fdump-ada-spec -fada-spec-parent=libproj
	@sed -f libproj.sed .gen/* -i
	@cp  .gen/*-proj_api_h.ads src/gen/
