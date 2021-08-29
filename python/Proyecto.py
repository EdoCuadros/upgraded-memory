

Dueño = ["Eduardo",41971]


def matrizNombres(matrizInventario):
        nombre = input("Digite su nombre:")
        id = int(input("Digite su identificación:"))
        entrada = [nombre,id]
        if entrada == Dueño:
            print("Bienvenido, {}".format(Dueño))
            for i in matrizInventario:
                nuevaCantidad = input("Digite la cantidad actual de {}".format(matrizInventario[i][0]))
        else:
            print("Bienvenido a la tienda, {}".format(nombre))





matrizInventario = [     # Producto, Cantidad, precio
    ["Arepas",5, 300],
    ["Huevos", 10, 100],
    ["Empanadas", 1, 50],
    ["Pan", 3, 150],
                    ]


def matrizCantidad(matrizInventario):

    matrizCantidad = []

    prod1 = int(input("Digite la cantidad de {} que desea comprar:".format(matrizInventario[0][0])))
    if matrizInventario[0][1] < prod1:
        print("Por el momento solo hay {} disponibles.".format(matrizInventario[0][1]))
    matrizCantidad.append(prod1)

    prod2 = int(input("Digite la cantidad de {} que desea comprar:".format(matrizInventario[1][0])))
    if matrizInventario[1][1] < prod2:
        print("Por el momento solo hay {} disponibles.".format(matrizInventario[1][1]))
    matrizCantidad.append(prod2)

    prod3 = int(input("Digite la cantidad de {} que desea comprar:".format(matrizInventario[2][0])))
    if matrizInventario[2][1] < prod3:
        print("Por el momento solo hay {} disponibles.".format(matrizInventario[2][1]))
    matrizCantidad.append(prod3)

    prod4 = int(input("Digite la cantidad de {} que desea comprar:".format(matrizInventario[3][0])))
    if matrizInventario[0][1] < prod4:
        print("Por el momento solo hay {} disponibles.".format(matrizInventario[3][1]))
    matrizCantidad.append(prod4)

    return matrizCantidad


def matrizCompra(matrizCantidad,matrizInventario):
    matrizCompra = []
    precioTotal = 0
    for i in range(4):
        precio = matrizCantidad[i] * matrizInventario[i][2]
        matrizCompra.insert(i, precio)
        precioTotal += precio

    return matrizCompra, precioTotal

def bienvenida(matrizInventario):
    print("Bienvenido a la tienda. Estos son los productos que tenemos disponibles")
    print("Producto",'\t',"Cantidad disponible",'\t','\t'"Precio" )
    print("--------------------------------------------------")
    for fila in range(4):
        for columna in range(3):
            print(matrizInventario[fila][columna],'\t','\t','\t',end=" ")
        print()



bienvenida(matrizInventario)
matrizNombres(matrizInventario)
matrizCantidad = matrizCantidad(matrizInventario)
matrizCompra, precioTotal = matrizCompra(matrizCantidad, matrizInventario)

print("El precio a pagar es:", precioTotal)
