      *> Test File I/O: READ, WRITE
      *> An example program which
      *>    reades (TFileIn.dat) records from an input file
      *>    displays the records,
      *>    and writes (TFileOut.dat) them to a sequential file.
      *>
      *> Program-ID:    .cob
      *> Author:        Tyler Oalman
      *> OS:            Arch Linux
      *> Compiler:      GNU Cobol

       identification division.
       program-id.    TFile.
       environment division.
       input-output section.
       file-control.
           select myInFile assign to "TFileIn.dat".
           select myOutFile assign to "TFileOut.dat".
       data division.
       file section.
       fd myInFile.
       01 inRecord.
           02   m   pic xx.
           02   n   pic x(2).
           02   o   pic 99.
           02   p   pic 9(2).
           02   q   pic x.
       fd myOutFile.
       01 outRecord.
           02   r   pic xx.
           02   s   pic x(2).
           02   t   pic 99.
           02   u   pic 9(2).
           02   v   pic x.
       working-storage section.
       01   w   pic x(3)    value "YES".
       procedure division.
           open input myInFile.
           open output myOutFile.
           perform subRead
           perform until w = "NO"
                 move m to r
                 move n to s
                 compute t = o + 1
                 compute u = p - 2
                 move q to v
                 display "r = ", r, ", s = ", s, ", t = ", t, ", u = ",
                 u
                 write outRecord
                 perform subRead
            end-perform.
           close myInFile.
           close myOutFile.
           stop run.
       subRead.
           read myInFile
                 at end
                       move "NO" to w
                  not at end
                        display "m = ", m, ",n = ", n, ",o = ", o,
                        ",p = ", p
           end-read.

      *> Input:
      *>    file "TFileIn.dat"
      *>            abcd1234
      *>            efgh5678
      *> Output: file "TFileOut.dat" and display on screen:
      *>    file "TFileOut.dat"
      *>            abcd1332
      *>            efgh5776
      *>    Screen
      *>            m = ab,n = cd,o = 12,p = 34
      *>            r = ab,s = cd,t = 13,u = 32
      *>            m = ef,n = gh,o = 56,p = 78
      *>            r = ef,s = gh,t = 57,u = 76


