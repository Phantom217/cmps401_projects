      *> Test Selections: if, if-else, nested if-else
      *> Logical Operators:     AND, OR, NOT
      *> Relational Operators:  <, >, =, <=, >=, NOT =
      *> Arithmatic Operations: COMPUTE (+, -, *, /)
      *>
      *> Program-ID:    .cob
      *> Author:        Tyler Oalman
      *> OS:            Arch Linux
      *> Compiler:      GNU Cobol

       identification division.
       program-id.    TSel.
       data division.
       working-storage section.
       01 m         pic 9 value 1.
       01 n         pic 9 value 2.
       01 o         pic 9 value 3.
       01 p         pic 9 value 4.
       01 q         pic 9 value 5.
       01 r         pic 9 value 6.
       procedure division.
           if p > m then
                 display "p > m".
           if q is less than n
                 display "q < n"
           else
                 display "q >= n".
           if m is not equal to n and o >= n then
                 compute r = m + n
                 display "r = ", r
           else
                 compute r = m - n
                 compute r = r * o + 3
                 if p = q or q not = r
                       compute r = r / 2
                       display "r = ", r.
           stop run.

      *> Input: No
      *> Output:
      *>    p > m
      *>    q >= n
      *>    r = 3
