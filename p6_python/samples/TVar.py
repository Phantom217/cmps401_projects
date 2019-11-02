"""
Test Variables: No declaration
Program-ID:     TVar.py
Author:         Tyler Oalman
OS:             Arch Linux
Interpreter:    Python 3
"""

i1 = 1
i2 = 2
f1 = 3.3
f2 = 4.4
c = 'a'
s = "bcd"

f1 = i1  # implicit casting
i2 = f2  # no type checking
c = c + " " + s + " efg"  # Concatenation Operator `+`
s = len(s)

print("i1 = ", i1)
print("i2 = ", i2)
print("f1 = ", f1)
print("f2 = ", f2)
print("c  = ", c)
print("s  = ", s)

''' Output
        i1 = 1
        i2 = 4.4
        f1 = 1
        f2 = 4.4
        c  = a bcd efg
        s  = 3
'''
