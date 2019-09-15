/** Test Loop: while, for, nested loops (1-D Array and 2-D Array)
 *  Program-ID:     TLoop.c
 *  Author:         Tyler Oalman
 *  OS:             Arch Linux
 *  Compiler:       GNU C
 */

#include <stdio.h>

void main ()
{
	int i, j;
	int a[3] = {1, 2, 3};
	int b[3][3] = {{10, 20, 30},
                       {40, 50, 60},
                       {70, 80, 90}};
	int *p;

	printf("\nTest while loop: 1-D Array and Pointer\n");
	p = &a[0];
	i = 0;
	while (i < 3)
	{
		printf("a[%d] = %d, *p = %d\t", i, a[i], *p);
		++p;
		++i;
	}

	printf("\nTest for loop: 2-D Array and Pointer\n");
	p = &b[1][0];
	for (j = 0; j < 3; j++)
	{
		printf("b[1,%d] = %d, *p = %d\t", j, b[1][j], *p);
		++p;
	}

	printf("\nTest nested loop: 2-D Array and Pointer\n");
	p = &b[0][0];
	for (i = 0; i < 3; i++)
	{
		printf("\n");
		for (j = 0; j < 3; j++)
		{
			printf("b[%d,%d] = %d, *p = %d\t", i, j, b[i][j], *p);
			++p;
		}
	}
	printf("\n");
}
