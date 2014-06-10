program_name = bashpass
test_iterations = 100

test: test-cracklib test-pwqcheck

test-cracklib:
	cd tests && time ./cracklib.sh $(test_iterations)

test-pwqcheck:
	cd tests && time ./pwqcheck.sh $(test_iterations)

install:
	install -m 755 $(program_name) /usr/bin/$(program_name)

