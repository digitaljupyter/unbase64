all:
		ldc ./unbase64.d
		rm *.o
user-install: all
	cp ./unbase64 ~/.local/bin/unbase64
system-install: all
	cp ./unbase64 /usr/local/bin/unbase64
