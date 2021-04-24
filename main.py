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

    for data in result[1:]:
        #baseDatos.setCliente(data)
        cliente = Cliente(data[0], data[1], data[2], data[3], data[4], data[5],"", data[6], data[7])
        clientes.append(cliente)
    inicio = time.time()
    baseDatos.ListaClientes(result[1:])
    listaClientes = baseDatos.getLista()

    #inicio1 = time.time()
    listaClientes.__str__()
    fin = time.time()
    #fin1 = time.time()
    elemento = baseDatos.getCliente().getIdentificacion()
    print(elemento)
    print(fin - inicio)
    #print(fin1 - inicio1)
    print(listaClientes.getSize())
    listaClientes.pop()
    print(listaClientes.getSize())

