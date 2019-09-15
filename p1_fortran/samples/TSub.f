C Test Subprograms: FUNCTION
C Program-ID:       TSub.f
C Author:           Tyler Oalman
C OS:               Arch Linux
C Compiler:         gcc-fortran

      PROGRAM TSub
      INTEGER m, n
      INTEGER sub1, sub2
      m = sub1()
      WRITE (*,*) 'm = ', m
      m = 2
      n = 3
      n = sub2(m, n) + 4
      WRITE (*,*) 'n = ', n
      END

      FUNCTION sub1() RESULT (r)
            INTEGER r
            r = 1
      END
      FUNCTION sub2(p, q) RESULT (r)
            INTEGER p, q, r
            r = p + q
      END
C Input:    No
C Output:
C   m =         1
C   n =         9
