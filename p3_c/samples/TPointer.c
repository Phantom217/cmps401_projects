/** Test Pointer
 *  Program-ID:     TPointer.c
 *  Author:         Tyler Oalman
 *  OS:             Arch Linux
 *  Compiler:       GNU C
 */

#include <stdio.h>

void main ()
{
	int n1, n2, n3;       //declare var names
	int *p1, *p2, *p3;    //declare pointers to integers

	p1 = &n1;             //assign "address of" n1 to p1
	p2 = &n2;             //assign "address of" n2 to p2
	p3 = &n3;             //assign "address of" n3 to p3

	/* Put values into memory locations pointed to by the ptrs */
	n1 = 5;
	*p2 = 7;              //assign 7 to "deference" p2
	*p3 = *p1 + *p2;

	/* Print out the addresses of the vars and their contents */
	printf("Address\t\t\t Content\t\t Dereference\n");
	printf("-------\t\t\t -------\t\t -----------\n");
	printf("&n1 = %p\t n1 = %d\n", &n1, n1);   // %p : address of pointer
	printf("&n2 = %p\t n2 = %d\n", &n2, n2);   // \t : tab, \n : new line
	printf("&n2 = %p\t n3 = %d\n", &n3, n3);   // %d : decimal format
	printf("&p1 = %p\t p1 = %p\t *p1 = %d\n", &p1, p1, *p1);
	printf("&p2 = %p\t p2 = %p\t *p2 = %d\n", &p2, p2, *p2);
	printf("&p3 = %p\t p3 = %p\t *p3 = %d\n", &p3, p3, *p3);
}

/** Output
 *  Address                Content               Dereference
 *  -------                -------               -----------
 *  &n1 = 0x7fff43021eb4   n1 = 5
 *  &n2 = 0x7fff43021eb8   n2 = 7
 *  &n2 = 0x7fff43021ebc   n3 = 12
 *  &p1 = 0x7fff43021ec0   p1 = 0x7fff43021eb4   *p1 = 5
 *  &p2 = 0x7fff43021ec8   p2 = 0x7fff43021eb8   *p2 = 7
 *  &p3 = 0x7fff43021ed0   p3 = 0x7fff43021ebc   *p3 = 12
 */
