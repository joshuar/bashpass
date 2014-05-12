program_name = bashpass
test_iterations = 100

test: test-cracklib test-pwqcheck

test-cracklib:
	cd tests && ./cracklib.sh $(test_iterations)

test-pwqcheck:
	cd tests && ./cracklib.sh $(test_iterations)

install:
	install -m 755 $(program_name) /usr/bin/$(program_name)

