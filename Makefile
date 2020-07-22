all:
	gcc -fsanitize=address,undefined -Iinclude -DU32_SUPPORT -DBASH_PLATFORM=BASH_32 *.c && ./a.out
