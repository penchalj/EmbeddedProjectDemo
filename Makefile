build:
	gcc src/main.c -o build/app.elf

test:
	gcc src/main.c tests/test_main.c -o build/test_runner
	./build/test_runner

