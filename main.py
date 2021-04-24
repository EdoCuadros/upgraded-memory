import csv
import time

from Logic.base_datos import *





if __name__ == '__main__':
    path = "./Resources/MOCK_DATA (1).csv"
    with open(path) as archivo_data:
        entrada = csv.reader(archivo_data)
        result = list(entrada)

    baseDatos = BaseDatos()
    inicio = time.time()
    baseDatos.ListaClientes(result[1:])
    listaClientes = baseDatos.getLista()


    #listaClientes.__str__()
    fin = time.time()
    print("Tiempo:",fin - inicio,"segundos")

    print(baseDatos.searchCliente("7548496001"))
    print(baseDatos.searchCliente("2266717308"))
    print(baseDatos.searchCliente("1"))





