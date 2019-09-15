/** Test Selections:       if, if-else, nested if-else
 *  Logical Operators:     &&, ||, !
 *  Relational Operators:  <, >, ==, <=, >=, !=
 *  Program-ID:     TSel.c
 *  Author:         Tyler Oalman
 *  OS:             Arch Linux
 *  Compiler:       GNU C
 */

#include <stdio.h>

void main ()
{
	int i1=1, i2=2, i3=3, i4=4, i5=5, i6=6;

	/* Test a simple if */
	if (i4 > i1) { printf("i4 > i1\n"); }

	/* Test if-else */
	if ((i5 < i2) && (i3 >= i2)) { printf("(i5 < i2) && (i3 >= i2(\n"); }
	else { printf("(i5 >= i2) || (i3 < i2)\n"); }

	/* Test nested if-else */
	if (i1 != i2) { printf("(i1 != i2)\n"); }
	else
	{
		if ((i4 == i5) || (i5 != i6))
		{
			printf("(i1 == i2) && ((i4 == i5) || (i5 != i6))");
		}
	}
}
