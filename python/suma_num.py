def suma_num(*args):
    suma = 0
    for i in args:
        suma += i
    return suma

print(suma_num(1,2,3,4,5))

