C Test Selections:  if, if-else, nested if-else
C Logical OperatorsL    .AND., .OR., .NOT.
C Relational Operators:
C   .LT.  (Less Than),  .GT.  (Greater Than),   .EQ.  (Equal to)
C   .LE.  (Less Equal), .GE.  (Greater Equal),  .NE.  (Not Equal)
C Program-ID:   TSel.f
C Author:       Tyler Oalman
C OS:           Arch Linux
C Compiler:     gcc-fortran

      PROGRAM TSel
      INTEGER m, n, o, p, q, r
      m = 1
      n = 2
      o = 3
      p = 4
      q = 5
      r = 6
      IF (p .GT. m) THEN
            WRITE (*,*) 'p > m '
      ENDIF
      IF (q .LT. n) THEN
            WRITE (*,*) 'q < n '
      ELSE
            WRITE (*,*) 'q >= n '
      ENDIF
      IF ((n .NE. n) .AND. (o .GE. n)) THEN
            r = m + n
            WRITE (*,*) 'r = ', r
      ELSE
            r = m - n
            WRITE (*,*) 'temp r 1 = ', r
            r = r * o + 3
            WRITE (*,*) 'temp r 2 = ', r
            IF ((p .EQ. q) .OR. (q .NE. r)) THEN
                  r = r / 2
                  WRITE (*,*) 'r = ', r
            ENDIF
      ENDIF
      END
C Input:    No
C Output:
C   p > m
C   q >= n
C   r =     3
