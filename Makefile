CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -Wshadow -Wconversion -Wsign-conversion -Wnull-dereference -Wdouble-promotion -Wformat=2

# Default build target
all:
	$(CC) $(CFLAGS) -o $(EXEC) $(SRC)

# Clean target to delete object files and executables
clean:
	rm -f *.o *.exe$(EXEC)

# Commands to run this makefile:
# make EXEC=executable_name SRC=filename.c	