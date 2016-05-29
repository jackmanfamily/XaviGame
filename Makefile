#OBJS specifies which files to compile as part of the project
OBJS = Main.cpp

#CC specifies which compiler we're using
CC = g++

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
COMPILER_FLAGS = -w -std=gnu++0x --coverage -fprofile-arcs -ftest-coverage

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -lSDL2 -lcppunit -fprofile-arcs -lgcov

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = Main

#This is the target that compiles our executable
all : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)