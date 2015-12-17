bin:
	mkdir $@

bin/%: %.rs %.in | bin
	rustc -C opt-level=3 $< -o $@

%.out: bin/%
	$< > $@ || (rm $@ && exit 1)

.PRECIOUS: bin/%