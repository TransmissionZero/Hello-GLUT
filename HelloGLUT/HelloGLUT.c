/*
 * This is a very basic Windows C application for testing GLUT (and compatible
 * implementations such as freeglut). It displays a red square, and exits when
 * the escape key is pressed.
 */

#include <stdlib.h>
#include <GL/glut.h>
#include "Callbacks.h"

/* Main method */
int main(int argc, char** argv)
{
  glutInit(&argc, argv);

  /* Create a single window with a keyboard and display callback */
  glutCreateWindow("GLUT Test");
  glutKeyboardFunc(&keyboard);
  glutDisplayFunc(&display);

  /* Run the GLUT event loop */
  glutMainLoop();

  return EXIT_SUCCESS;
}
