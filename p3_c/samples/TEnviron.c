/** Test Environment
 *  Program-ID:  TEnviron.c
 *  Author:      Tyler Oalman
 *  OS:          Arch Linux
 *  Compiler:    GNU C
 */

#include <stdio.h>

extern char **environ;   /* environment array */

void main ()
{
	char ** env = environ;
	/* step through environment */
	while (*env) { printf("%s\n",*env++); }
}
