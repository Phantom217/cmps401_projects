/** Test Strtok Function
 *     Split a string into tokens by separators (delimiters)
 *  Program-ID:  TStrtok.c
 *  Author:      Tyler Oalman
 *  OS:          Arch Linux
 *  Compiler:    GNU C
 */

#include <string.h>
#include <stdio.h>

#define MAX_BUFFER    1024           /* max line buffer */
#define MAX_ARGS        64           /* max # args */
#define SEPARATORS    " \t\n"        /* token separators */

void main ()
{
	char cmd[MAX_BUFFER] = "ls -al";
	char* args[MAX_ARGS];              /* pointers to arg strings */
	int i;

	args[0] = strtok(cmd, SEPARATORS); /* tokenize input */
	printf("args[0] = %s\n", args[0]);
	for (i = 0; args[i] = strtok(NULL, SEPARATORS); i++)
	{
		printf("args[%d] = %s\n", i, args[i]);
	}
}
