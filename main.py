import csv
import time

from Logic.base_datos import *
if __name__ == '__main__':
    path = "./Resources/MOCK_DATA (1).csv"
    with open(path) as archivo_data:
        entrada = csv.reader(archivo_data)
        result = list(entrada)
    clientes = DLinkedList()
    baseDatos = BaseDatos()
    clientes2 = DLinkedList()
    inicio = time.time()
    for data in result[1:]:
        baseDatos.setCliente(data)
        cliente = Cliente(data[0], data[1], data[2], data[3], data[4], data[5],"", data[6], data[7])
        clientes.append(cliente)

    listaClientes = baseDatos.ListaClientes(result[1:])

    fin = time.time()
    #inicio1 = time.time()
    listaClientes.__str__()
    #fin1 = time.time()

    print(fin - inicio)
    #print(fin1 - inicio1)
    print(listaClientes.getSize())
    listaClientes.pop()
    print(listaClientes.getSize())

