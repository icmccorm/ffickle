.PHONY: default
default: all
.DEFAULT_GOAL := all
all:
	@(cd early && cargo build)
	@(cd late && cargo build)
	@(cargo dylint list)
clean:
	@(rm -rf ./test > /dev/null)
	@(rm -f all_sorted.csv)
	@(rm -f visited_sorted.csv)

