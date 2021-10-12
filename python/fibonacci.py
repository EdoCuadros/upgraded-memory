def string_larga(*args):
    max = 0
    contador = 0
    for i in args:
        for letra in i:
            contador +=1
        if contador > max:
            palabra = i

    return palabra

print(string_larga("hola","como","estas"))
