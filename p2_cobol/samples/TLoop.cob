      *> Test Loops: PERFORM TIMES, PERMORM UNTIL, PERFORM VARYING, and
      *>             nested loop
      *> "PERFORM UNTIL" in Cobol like "while" in Java
      *> "PERFORM VARYING" (with the loop control) in Cobol like "for"
      *>             in Java
      *>
      *> Program-ID:    TLoop.cob
      *> Author:        Tyler Oalman
      *> OS:            Arch Linux
      *> Compiler:      GNU Cobol

       identification division.
       program-id.    TLoop.
       data division.
       working-storage section.
       01 m     pic     9       value 2.
       01 n     pic     9       value 2.
       01 o     pic     9       value 2.
       01 p     pic     9       value 2.
       01 q     pic     9       value 2.
       01 r     pic     9       value 2.
       procedure division.
           perform 3 times
                 compute m = m + 1
                 display "m = ", m
           end-perform.
           perform until n = 4
                 compute n = n + 1
                 display "n = ", n
           end-perform.
      *> "PERFORM VARYING" Here p is the loop control
           perform varying p from 0 by 1 until q = 4
                 compute q = q + 1
                 display "p = ", p, ", q = ", q
           end-perform.
      *> nested loop
           perform 3 times
                 perform 2 times
                       compute r = r + 1
                 end-perform
           end-perform.
           display "r = ", r.

           stop run.

      *> Input: No
      *> Output:
      *>    m = 3
      *>    m = 4
      *>    m = 5
      *>    n = 3
      *>    n = 4
      *>    p = 0, q = 3
      *>    p = 1, q = 4
      *>    r = 8
