build:
	mkdir -p build
	gcc src/main.c src/functions.c -o build/app.elf

test:
	mkdir -p build
	gcc src/functions.c tests/test_main.c -o build/test_runner
	./build/test_runner

