import math

def toString(s):
    i = 0
    n = 0
    m = ""
    for c in reversed(s):
        n = n + int(c) * 2**i
        if i == 7:
            m = chr(n) + m
            n = 0
            i = 0
        else:
            i = i + 1
    return m

msg = '001100000111010001100101011101000111010000110001'
print(msg)
print(toString(msg))