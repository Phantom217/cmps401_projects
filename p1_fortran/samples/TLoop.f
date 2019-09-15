C Test Loops:   do-loop, if-goto-loop, nested loop
C Program-ID:   TLoop.f
C Author:       Tyler Oalman
C OS:           Arch Linux
C Compiler:     gcc-fortran

      PROGRAM TLoop
      INTEGER i, j, m, n
      INTEGER A(3, 4)
C Do-Loop:  The number of iterations is fixed at the beginning
C     DO label, loop-control-var = init-value, final-value, step-size
C         statements
C     label CONTINUE
      m = 1
      DO 10, i = 3, 6, 2
            m = m + i
10    CONTINUE
      WRITE (*,*) 'm = ', m
C if-goto-loop
      n = 1
      i = 3
20    IF (i .LE. 6) THEN
            n = n + i
            i = i + 2
            GOTO 20
      ENDIF
      WRITE (*,*) 'n = ', n
C nested Do-loop
      DO 40, i = 1, 3, 1
            DO 30, j = 1, 4, 1
                  A(i,j) = i + j
30          CONTINUE
40    CONTINUE
C nested if-goto-loop
      i = 1
50    IF (i .LE. 3) THEN
            j = 1
60          IF (j .LE. 4) THEN
                  WRITE (*,*) 'A (', i, ',', j, ') = ', A(i,j)
                  j = j + 1
                  GOTO 60
            ENDIF
            i = i + 1
            GOTO 50
      ENDIF
      END
C Input:    No
C Output:
C   m =            9
C   n =            9
C   A (           1 ,           1 ) =            2
C   A (           1 ,           2 ) =            3
C   A (           1 ,           3 ) =            4
C   A (           1 ,           4 ) =            5
C   A (           2 ,           1 ) =            3
C   A (           2 ,           2 ) =            4
C   A (           2 ,           3 ) =            5
C   A (           2 ,           4 ) =            6
C   A (           3 ,           1 ) =            4
C   A (           3 ,           2 ) =            5
C   A (           3 ,           3 ) =            6
C   A (           3 ,           4 ) =            7
