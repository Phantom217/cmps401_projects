"""
Test File I/O:      Read, Write
An example program which
    reads (TFileIn.dat) records from an input file,
    displays the records,
    and writes them to a sequential file (TFileOut.dat).
Program-ID:         TFile.py
Author:             Tyler Oalman
OS:                 Arch Linux
Interpreter:        Python 3
"""

fIn = open("TFileIn.dat", "r")
fOut = open("TFileOut.dat", "w")
for line in fIn.read().splitlines():
    print(line)
    fOut.write(line + "\n")

fIn.close()
fOut.close()

''' Output
# TFileIn.dat
    abcd
    efg
# TFileOut.dat
    abcd
    efg
# Screen Outputs
    abcd
    efg
'''
