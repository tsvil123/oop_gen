def gen2(n):
    P = 1/2
    yield P
    for i in range(2, n+1):
        P *= 1/(1+i)
        yield P

n = int(input())
for i in gen2(n):
    print(i)

# for i in gen2(10):
#     print(i)
