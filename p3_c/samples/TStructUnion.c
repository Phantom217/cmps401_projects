/** Test Struct and Union
 *  Program-ID:	    TStuctUnion.c
 *  Author:					Tyler Oalman
 *  OS:							Arch Linux
 *  Compiler:				GNU C
 */

#include <stdio.h>

struct date
{
	int y, m, d;
};

union u			/** shared memory for vars, can have any data type **/
{
	int i, j;
};

void main ()
{
	struct date b[2];
	b[0].y = 1980; b[0].m = 10; b[0].d = 12;
	b[1].y = 1980; b[1].m = 10; b[1].d = 12;
	struct date *p;
	p = b;
	printf("b[0].y = %d\t (*p).y = %d\t p->y = %d\n", b[0].y, (*p).y, p->y);
	printf("b[0].m = %d\t (*p).m = %d\t p->m = %d\n", b[0].m, (*p).m, p->m);
	printf("b[0].d = %d\t (*p).d = %d\t p->d = %d\n", b[0].d, (*p).d, p->d);
	p++;
	printf("b[1].y = %d\t (*p).y = %d\t p->y = %d\n", b[1].y, (*p).y, p->y);
	printf("b[1].m = %d\t (*p).m = %d\t p->m = %d\n", b[1].m, (*p).m, p->m);
	printf("b[1].d = %d\t (*p).d = %d\t p->d = %d\n", b[1].d, (*p).d, p->d);

	union u q;
	union u *r = &q;
	q.i = 20;
	q.j = 30;
	printf("Test Union and Pointer\n");
	printf("q.i = %d\t (*r).i = %d\t r->i = %d\n", q.i, (*r).i, r->i);
	printf("q.j = %d\t (*r).j = %d\t r->j = %d\n", q.j, (*r).j, r->j);
}
