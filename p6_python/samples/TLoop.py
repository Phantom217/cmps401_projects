"""
Test Loop: while, for, nested loops (Lists, Tuples, Sets, and Dictionaries)
Program-ID:     TLoop.py
Author:         Tyler Oalman
OS:             Arch Linux
Interpreter:    Python 3
"""

A = [1, 2, 'elephant', 1, ]  # list: A sequene of mutable objects
B = (1, 2, 3, )              # tuple: A sequence of immutable objects
C = set(A)                   # set: unordered collection, no duplication
# dictionary: associative array
D = {'apple': 'A', 'banana': 'B', 'carrot': 'C', }

print("Test while loop: list = ", A)
i = 0
while i < 4:
    print("A[", i, "] = ", A[i])
    i += 1

print("Test for loop range(): tuple = ", B)
for i in range(len(B)):
    print("B[", i, "] = ", B[i])

print("Test for loop: set = ", C)
for v in C:
    print(v)

print("Test for loop: dictionary = ", D)
for k, v in D.items():
    print(k, v)

E = [[10, 20, 30, ],
     [40, 50, 60, ],
     [70, 80, 90, ], ]

print("Test nested loop: No array in Python but similar to 2D array = ", E)
for i in range(len(E)):
    for j in range(len(E[i])):
        print(E[i][j])

print("Test list: concatenation")
F = A + ['B', 'C']
print(F)
print("Test list: insert")
F.insert(2, 'A')
print(F)
print("Test list: remove")
F.remove('B')
print(F)
