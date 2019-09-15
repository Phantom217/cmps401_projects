C Display "Hello" on your screen
C Program-ID:   TSimple.f
C Author:       Tyler Oalman
C OS:           Arch Linux
C Compiler:     gcc-fortran
C Note:
C The following instructions are used to
C       edit, compile, and run this program
C   $ vim       TSimple.f
C   $ gfortran  TSimple.f
C   $ ./a.out

C The first 6 character positions on each line
C   are reserved for statement labels
      PROGRAM TSimple
C UNIT=* selects the standard output file which is
C   normally your own terminal;
C FMT=* selects a default output layout
            WRITE (UNIT=*,FMT=*) 'Hello'
C An abbreviated form
            WRITE (*,*) 'Hello'
            END
C Input:    No
C Output:
C       Hello
C       Hello
