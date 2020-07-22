all: c
	gcc -fsanitize=address,undefined -Iinclude  -DBASH_PLATFORM=BASH_32 *.c && ./a.out
c:
	rm -rf *.o *.out mike.c
