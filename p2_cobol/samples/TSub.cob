      *> Test Subprograms:  PERFORM, PERFORM UNTIL
      *>
      *> Program-ID:    Tub.cob
      *> Author:        Tyler Oalman
      *> OS:            Arch Linux
      *> Compiler:      GNU Cobol

       identification division.
       program-id.    TSub.
       data division.
       working-storage section.
       01 m     pic     9       value 2.
       procedure division.
           perform sub1.
           perform sub2 until m = 5.
           stop run.

       sub1.
           display "sub1".
       sub2.
           display "sub2".
           compute m = m + 1.

      *> Input: No
      *> Output:
      *>    sub1
      *>    sub2
      *>    sub2
      *>    sub2
