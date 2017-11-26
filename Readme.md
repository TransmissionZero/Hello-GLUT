# Hello GLUT

## Table of Contents

- [Introduction](#introduction)
- [Building with MinGW](#building-with-mingw)
- [Building with MSVC](#building-with-msvc)
- [Terms of Use](#terms-of-use)
- [Problems?](#problems)
- [Changelog](#changelog)

## Introduction

This application is an example Windows GUI application, written to demonstrate how to build
[freeglut](http://freeglut.sourceforge.net/) applications with MinGW and MSVC. It accompanies the
[Using freeglut or GLUT with MinGW](http://www.transmissionzero.co.uk/computing/using-glut-with-mingw/) article on
[Transmission Zero](http://www.transmissionzero.co.uk/).

The application demonstrates how to process key presses and how to display a basic shape in a window. It doesn't attempt
to do anything fancy, as it's really just a "Hello world!" example.

Although the application targets freeglut, there's no reason why it can't use a compatible alternative GLUT
implementation, e.g. Nate Robins' GLUT for Win32. Similarly, it should be possible to cross-compile the application on a
non-Windows machine, compile the application to target a non-Windows machine, or build with tools other than MinGW and
MSVC. However, some changes to the Makefile will likely be needed.

## Building with MinGW

Before you start, changes to the Makefile may be needed. Firstly, the "INCLUDE_DIRS" and "LIB_DIRS" may need to be
updated if your GLUT header files and import libraries are in a different location. Secondly, the "LDFLAGS" flags may
need to be changed if you're not using freeglut. For example, if you're using GLUT for Win32, change "-lfreeglut" to
"-lglut32".

To build the application on a Windows machine, open a command prompt, change to the directory containing the Makefile,
and type "mingw32-make". The application should be compiled, linked, and output as "bin/HelloGLUT.exe". The appropriate
GLUT DLL will either need to be in the same directory as the executable, or will need to be in a directory referenced in
your "%PATH%" environment variable.

## Building with MSVC

Before you start, changes to the project may be needed. Firstly, the "Include Directories" and "Library Directories"
settings under "VC++ Directories", and the "Environment" setting under "Debugging" may need to be updated if your GLUT
header files, import libraries, and DLLs are in a different location. Secondly, the "Additional Dependencies" under
"Linker" -> "Input" may need to be changed if you're not using freeglut. For example, if you're using GLUT for Win32,
change "freeglut.lib" to "glut32.lib".

To build the application in Visual Studio, select the configuration and platform from the drop-down menu, and use
"Build Solution" from the "Build" menu.

The solution was created in Visual Studio 2017, but it should open in any version of Visual Studio from 2010 SP1
onwards.

Note: The project has precompiled headers disabled. This was done to ensure the project can be built with both MinGW and
MSVC. There is no reason why you can't use precompiled headers with freeglut in MSVC.

## Terms of Use

Refer to "License.txt" for terms of use.

## Problems?

If you have any problems or questions, please ensure you have read this readme file and the
[Using freeglut or GLUT with MinGW](http://www.transmissionzero.co.uk/computing/using-glut-with-mingw/) article. If you
are still having trouble, you can [get in contact](http://www.transmissionzero.co.uk/contact/).

## Changelog

1. 2016-08-28: Version 1.0
  - Initial release.

Transmission Zero
2016-08-28
