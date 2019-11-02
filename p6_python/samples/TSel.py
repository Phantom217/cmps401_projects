"""
Test Selections:    `if`, `if-else`, nested `if-else`
Logical Operators:  `and`, `or`, `not` (invalid: `&&`, `||`, `!`)
Relational Operators:   `<`, `>`, `==`, `<=`, `>=`, `!=`
Program-ID:         TSel.py
Author:             Tyler Oalman
OS:                 Arch Linux
Interpreter:        Python 3
"""


I1 = 1
I2 = 2
I3 = 3
I4 = 4
I5 = 5
I6 = 6

# Test a simple `if`
if I4 > I1:
    print("I4 > I1")

# Test `if-else`
if (I5 < I2) and (I3 >= I2):
    print("(I5 < I2) and (I3 >= I2)")
else:
    print("(I5 >= I2) and (I3 < I2)")

# Test nested `if-else`
if I1 != I2:
    print("(I1 != I2)")
elif (I4 == I5) or (I5 != I6):
    print("(I1 == I2) and (I4 == i5) or (I5 != I6)")

''' Output
        I4 > I1
        (I5 >= I2) or (I3 < I2)
        (I1 != I2)
'''
