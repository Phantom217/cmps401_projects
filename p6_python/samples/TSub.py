"""
Test Subprograms:   Call by Value and Call by Reference
Program-ID:         TSub.py
Author:             Tyler Oalman
OS:                 Arch Linux
Interpreter:        Python 3
"""


def func1(i):
    i = i + 1


def func2(i):
    i = i + 2
    return i


def func3(i, j):
    i = i + 3
    j[0] = j[1] + 4


print("Test call by value")
m = 1
func1(m)
print("func1() m = ", m)
n = func2(m)
print("func2() n = ", n)

print("Test call by reference: list")
a = [10, 20, 30, ]
func3(a[1], a)
print("func3() a =", a)

''' Output
        Test call by value
        func1() m = 1
        func2() n = 3
        Test call by reference: list
        func3() a = [24, 20, 30]
'''
