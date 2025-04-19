# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -O2

# Object files stored in BUILD_DIR
# (patsubst pattern, replacement, text)
OBJ = $(patsubst %.c, $(BUILD_DIR)/%.o, $(SRC))

# Default target
all: $(EXE)

# Ensure the build directory exists, then link object files into the executable
$(EXE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# Rule to compile source files into object files inside BUILD_DIR
$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -rf *.exe
	@echo "Cleaned up: $(EXE)"

# Phony targets
.PHONY: all clean
