CXX = g++

#name of your game
TARGET_PATH = ./bin/
TARGET_NAME = BASE-SFML-APP
TARGET = $(TARGET_PATH)$(TARGET_NAME).exe

SRCS = $(wildcard src/*.cpp) $(wildcard src/*/*.cpp)
OBJS = $(SRCS:.cpp=.o)

#options
OPTIMIZATION = -O0
DEBUG_MODE = -g
STANDARD = -std=c++17
WARNINGS = -Wall -Wextra
CXXFLAGS = $(STANDARD) $(WARNINGS) $(OPTIMIZATION) $(DEBUG_MODE)

SFML_FLAGS = -lsfml-graphics -lsfml-window -lsfml-system
#put here your path to sfml-lib folder
SFML_LIB = -L C:/Compilers/SFML-2.5.1/lib 
LIB_FLAGS = $(SFML_FLAGS)

INC = -I ./include
#put here your path to sfml-include folder
SFML_INC = -I C:/Compilers/SFML-2.5.1/include 
ALL_INC = $(INC) $(SFML_INC)


.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $@ $(LIB_FLAGS) $(SFML_LIB)
.cpp.o:
	$(CXX) -c $< -o $@ $(ALL_INC) $(CXXFLAGS)

clean:
	rm -rf $(OBJS)