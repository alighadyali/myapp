# C & C++ Makefile originally found here \
 https://spin.atomicobject.com/2016/08/26/makefile-c-projects/ \
 Added comments for reference \
 Added build targets for release and debugging \
 Added useful CFLAGS \
 Ali Ghadyali 2018 \

# Will get this name directly from eclipse build settings
TARGET_EXEC ?= target.out

# Will put all the object files in this directory
BUILD_DIR ?= ./build

# Will search for the source here recursively
SRC_DIRS ?= ./src
SRC_DIRS += ./inc

# Find all the files with matching extensions and put them in SRCS
SRCS := $(shell find $(SRC_DIRS) -name *.cpp -or -name *.c -or -name *.s)

# Object files from sources go to the build directory 
OBJS := $(SRCS:%=$(BUILD_DIR)/%.o)

# In the OBJS folder find all the dependency files suffix .d
DEPS := $(OBJS:.o=.d)

# Looks for SOURCE DIR names which contain .d files
INC_DIRS := $(shell find $(SRC_DIRS) -type d)

# Adds those directories to the include path
INC_FLAGS := $(addprefix -I,$(INC_DIRS))

# Adds a flag for linking ncurses library
LDFLAGS += -lncurses

# -MMD -MP generate dependency files next to .o
CPPFLAGS ?= $(INC_FLAGS) -MMD -MP
CPPFLAGS += -std=c++11

CPPFLAGS = -Wextra -Wall
# Turn this one off when you know youre doing something wrong and still want\
 to do it
#CPPFLAGS += -Werror

# adds runtime checks to all risky pointer operations to catch UB. This \
 effectively immunizes your program again buffer overflows and helps to \
 catch all kinds of dangling pointers.
#CFLAGS += -lasan

CPPFLAGS += -Wuninitialized

# warn for implicit conversions that may alter a value*
CPPFLAGS += -Wconversion

# warn whenever a local variable shadows another local variable, parameter or \
 global variable or whenever a built-in function is shadowed.
CPPFLAGS += -Wshadow

# warn if the compiler detects that code will never be executed
CPPFLAGS += -Wunreachable-code

# give string constants the type const char[length] so that copying the address\
 of one into a non-const char * pointer will get a warning.
CPPFLAGS += -Wwrite-strings

# Turn on Debugging \
 Turn off optimization \
 Useful for preprocessor macros debugging
DEBUGFLAGS := -g -O0 -save-temps

# g++ compiles both c and c++
CC = g++

# $@ Variable name for the target
# $< Variable name for the dependencies
$(BUILD_DIR)/$(TARGET_EXEC): $(OBJS)
	@echo Linking Object Files
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

# assembly
$(BUILD_DIR)/%.s.o: %.s
	$(MKDIR_P) $(dir $@)
	$(AS) $(ASFLAGS) -c $< -o $@

# c source
$(BUILD_DIR)/%.c.o: %.c
	@echo Building C Source Files
	$(MKDIR_P) $(dir $@)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

# c++ source
$(BUILD_DIR)/%.cpp.o: %.cpp
	@echo Building C++ Source Files
	$(MKDIR_P) $(dir $@)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@
	
.PHONY: clean

# Build command
all: $(BUILD_DIR)/$(TARGET_EXEC)
all: size

# Print size, shows text data bss dec
size: 
	size $(BUILD_DIR)/$(TARGET_EXEC)

# Debug Builds 
debug: CPPFLAGS += $(DEBUGFLAGS)
debug: all

# Release Builds
release: CPPFLAGS += -O3
release: all

# Simply delete everything from the build folder
clean:
	$(RM) -r $(BUILD_DIR)
	$(RM) -r *.ii *.s

# -include works just like include but ignores when there are no dependencies 
-include $(DEPS)

# Make parents directory if they do not exist
MKDIR_P ?= mkdir -p
