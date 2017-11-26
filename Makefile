# This is the Makefile for Hello GLUT. It builds the Hello GLUT executable.

# Directories containing C headers. Edit to match path containing freeglut headers.
INCLUDE_DIRS = -I"C:\Program Files\Common Files\freeglut\include"

# Directories containing import libraries. Edit to match path containing freeglut libs.
LIB_DIRS = -L"C:\Program Files\Common Files\freeglut\lib"

# Warnings to be raised by the C compiler
WARNS = -Wall

# Names of tools to use when building
CC = gcc

# Compiler and linker flags
CFLAGS = -O3 -std=c99 -D _WIN32_IE=0x0500 -D WINVER=0x500 ${WARNS} ${INCLUDE_DIRS}
LDFLAGS = -s -lfreeglut -lopengl32 -Wl,--subsystem,windows ${LIB_DIRS}

# Object files to create Hello GLUT exe
OBJS = obj/Callbacks.o \
       obj/HelloGLUT.o

.PHONY: all clean

all: bin/HelloGLUT.exe

clean:
	if exist obj\*.o            del obj\*.o
	if exist bin\HelloGLUT.exe  del bin\HelloGLUT.exe

obj:
	@if not exist obj mkdir obj

bin:
	@if not exist bin mkdir bin

bin/HelloGLUT.exe: ${OBJS} | bin
	${CC} -o "$@" ${OBJS} ${LDFLAGS}

obj/%.o: HelloGLUT/%.c | obj
	${CC} ${CFLAGS} -c $< -o $@

# Dependencies
obj/HelloGLUT.o: HelloGLUT/Callbacks.h
obj/Callbacks.o: HelloGLUT/Callbacks.h
