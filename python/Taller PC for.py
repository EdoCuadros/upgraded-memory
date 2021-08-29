def primos(n):
    primos = []
    for i in range(2,n+1):
        primos.append(i)

    i = 2
    while i <= n**0.5:
        if i in primos:
            for j in range(2*i,n+1,i):
                if j in primos:
                    primos.remove(j)
        i += 1
    return primos

primos = primos(29)
print(primos[-1])