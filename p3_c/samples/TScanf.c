/** Test Data types and variables
 *  Program-ID:   TScanf.c
 *  Author:       Tyler Oalman
 *  OS:           Arch Linux
 *  Compiler:     GNU C
 */

#include <stdio.h>

void main ()
{
	int i;
	printf("Enter integer i: ");
	scanf("%d", &i);   // %d : decimal format, & : address of
	printf("i = %d\n", i);

	float f;
	printf("Enter float f: ");
	scanf("%f", &f);   // %f : float, & : address of
	printf("f = %f\n", f);

	double d;
	printf("Enter double d: ");
	scanf("%lf", &d);  // %f : float, & : address of
	printf("d = %lf\n", d);

	char s[80];
	printf("Enter string s[80]: ");
	scanf("%s", s);   // %s : string, NO address of (&)
	printf("s = %s\n", s);
	printf("s+1 = %s\n", s+1);
}
