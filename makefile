all:
		ldc ./unbase64.d
		rm *.o
build-docs:
	pandoc --standalone --to man unbase64.1.md -o man/unbase64.1
user-install: all
	cp ./unbase64 ~/.local/bin/unbase64
system-install: all
	cp ./unbase64 /usr/local/bin/unbase64
