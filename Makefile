program_name = bashpass
test_iterations = 100

test:
	if type -P cracklib-check > /dev/null; then \
		echo "Testing $(test_iterations) iterations against cracklib..."; \
		for i in `seq 1 $(test_iterations)`; do \
			./$(program_name) -d /usr/share/myspell/en_US.dic | cracklib-check; \
		done \
	fi
	if type -P pwqcheck > /dev/null; then \
		echo "Testing $(test_iterations) iterations against pwqcheck..."; \
		for i in `seq 1 $(test_iterations)`; do \
			./$(program_name) -d /usr/share/myspell/en_US.dic | pwqcheck -1; \
		done \
	fi

install:
	install -m 755 $(program_name) /usr/bin/$(program_name)

