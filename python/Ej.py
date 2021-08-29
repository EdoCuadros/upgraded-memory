print("")

matrizInventario = [
                        ["Producto 1","Cantidad disponible","Precio"],
                        ["Producto 2","Cantidad disponible","Precio"],
                        ["Producto 3","Cantidad disponible","Precio"],
                        ["Producto 4","Cantidad disponible","Precio"],
                    ]

def matrizCompra():
    matrizCompra = []

    prod1 = input("Digite la cantidad de producto1 que desea comprar:")
    matrizCompra.append(prod1)

    prod2 = input("Digite la cantidad de producto2 que desea comprar:")
    matrizCompra.append(prod2)
    
    prod3 = input("Digite la cantidad de producto3 que desea comprar:")
    matrizCompra.append(prod3)

    prod4 = input("Digite la cantidad de producto4 que desea comprar:")
    matrizCompra.append(prod4)

    return matrizCompra

matrizCompra = matrizCompra()

print(matrizCompra)
