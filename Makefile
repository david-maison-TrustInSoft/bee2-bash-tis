all:
	gcc -fsanitize=address,undefined -Iinclude  -DBASH_PLATFORM=BASH_32 *.c
