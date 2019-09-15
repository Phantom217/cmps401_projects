      *> Test Data types and variables
      *> 3 Data types: Alphabetic (PIC A), Alphanumeric (PIC X), Numeric
      *> (PIC 9)
      *>
      *> Program-ID:    TVar.cob
      *> Author:        Tyler Oalman
      *> OS:            Arch Linux
      *> Compiler:      OpenCOBOL

       identification division.
       program-id.    TVar.
       data division.
       working-storage section.
       01 m     picture xxxx.
       01 n     pic x(4).
       01 o     pic aaaa value "DEFG".
       01 p     pic a(4) value spaces.
       01 q     pic 99.99 value zeros.
       01 r     pic 99.99.
       procedure division.
           move "ABCD" to m.
           move 1234 to n.
           move "HIJK" to p.
           move 12.34 to q.
           move 56.78 to r.
           display m.
           display n.
           display o.
           display p.
           display q.
           display r.
           stop run.

      *> Input: No
      *> Output:
      *>    ABCD
      *>    1234
      *>    DEFG
      *>    HIJK
      *>    12.34
      *>    56.78
