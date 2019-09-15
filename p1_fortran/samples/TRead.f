C Test Subprograms: READ (from users)
C Program-ID:       TRead.f
C Author:           Tyler Oalman
C OS:               Arch Linux
C Compiler:         gcc-fortran

      PROGRAM TRead
      INTEGER m
      REAL n
      WRITE (*,*) 'Enter an integer value for m'
      READ (*,*) m
      WRITE (*,*) 'm = ', m
      WRITE (*,*) 'Enter a real value for n'
      READ (*,*) n
      WRITE (*,*) 'n = ', (n / 2)
      END
C Input:    User Inputs
C Output:
C   Enter an integer value for m
C   5
C   m =     5
C   Enter a reall value for m
C   3.43
C   n =     1.71500003
