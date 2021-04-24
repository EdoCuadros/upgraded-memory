from DATA.Cliente import Cliente
from Logic.Listas_Enlazadas.Linked_List import DLinkedList

class BaseDatos:
    def __init__(self):
        self.__data = None
        self.__cliente = None

    def getCliente(self):
        return self.__cliente
    def setCliente(self,data):
        self.__cliente=Cliente(data[0], data[1], data[2], data[3], data[4], data[5],"", data[6], data[7])


    def ListaClientes(self,archivo):
        lista = DLinkedList()
        for data in archivo:
            self.setCliente(data)
            lista.append(self.getCliente())
        return lista