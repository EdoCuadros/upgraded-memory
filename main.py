import csv
import time

from Logic.base_datos import *





if __name__ == '__main__':
    path = "./Resources/MOCK_DATA (1).csv"
    with open(path) as archivo_data:
        entrada = csv.reader(archivo_data)
        result = list(entrada)

    baseDatos = BaseDatos()

    baseDatos.ListaClientes(result[1:])
    inicio = time.time()
    listaClientes = baseDatos.getLista()
    fin = time.time()

    #listaClientes.__str__()

    print("Tiempo:",fin - inicio,"segundos")

    print(baseDatos.search("7548496001"))
    print(baseDatos.search("2266717308"))
    print(baseDatos.search("1"))

    print(baseDatos.existIdentificacion("7548496001"))
    print(baseDatos.existIdentificacion("2266717308"))
    baseDatos.delete("8507040586")
    baseDatos.delete("5031533900")
    baseDatos.delete("8787556340")
    print(baseDatos.existIdentificacion("8787556340"))
    #listaClientes.__str__()
    print(baseDatos.getLista().getSize())



