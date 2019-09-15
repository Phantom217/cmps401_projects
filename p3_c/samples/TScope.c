/** Test Scope:  global, local, block, and static variables
 *  Program-ID:  TScope.c
 *  Author:      Tyler Oalman
 *  OS:          Arch Linux
 *  Compiler:    GNU C
 */

#include <stdio.h>

int i = 1;							// globar var i

void func ()
{
	printf("func() global i = %d\n", i);
	static int j = 4;			//static var j
	j++;
	printf("func() static j = %d\n", j);
}

void main ()
{
	int i = 2;						// local var i
	 {
	 	 int i = 3;					// block var i
	 	 printf("block i = %d\n", i);
	 }
	 printf("main() i = %d\n", i);
	 func();
	func();
}
