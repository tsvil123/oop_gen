import math
eps = 0.00001


def gen5(x):
    a = x
    S = x
    n = 0
    yield S, a
    i = 1
    def Fact(n):
        if n == 0:
            return 1
        else:
            return n * Fact(n-1)
    while True:
        n += 1
        a = (-1) * x**(2) * Fact(2 * n - 1) / (Fact(2*n+1)) * a
        S = S + a

        yield S, a

x = float(input())
for i, j in gen5(x ):
    if abs(j)<eps:
        print(i, j)
        break

# for i, j in gen5(math.pi / 2):
#     if abs(j)<eps:
#         print(i, j)
#         break
