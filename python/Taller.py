def listaPrimos(n):
    primos = []
    for i in range(n+1):
        primos.append(i)

    i = 2

    for i in range(n**0.5):
        if i in primos:
            for j in range(2*i,n+1,i):
                if j in primos:
                    primos.remove(j)
    return primos    


n = float(100)
primos = listaPrimos(n)
print(primos)


