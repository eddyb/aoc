bin:
	mkdir $@

bin/%-1: %.rs %.in | bin
	rustc -C opt-level=3 $< -o $@

bin/%-2: %.rs %.in | bin
	rustc -C opt-level=3 --cfg part2 $< -o $@

%.out: bin/%
	$< | tee $@ || (rm $@ && exit 1)

.PRECIOUS: bin/%-1 bin/%-2
