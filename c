def gen3(n):
    d1 = 2
    yield d1
    d2 = 1
    yield d2
    i = 2
    while i < n:
        a = d2
        d2 =  2 * d2 -3 * d1
        d1 = a

        i = i + 1
        yield d2

n = int(input())
for i in gen3(n):
    print(i)

# for i in gen3(10):
#     print(i)
