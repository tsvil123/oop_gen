def gen4(n):
    a1 = 0
    a2 = 1
    yield 0
    S = 4
    yield S
    for i in range(3, n+1):
        b = a2
        a2 = (a1 + i*a2)
        a1 = b
        S += 2**i * a2
        yield S

n = int(input())
for i in gen4(n):
    print(i)

# for i in gen4(10):
#     print(i)
