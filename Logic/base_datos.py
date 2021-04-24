from DATA.Cliente import Cliente
from Logic.Listas_Enlazadas.Linked_List import DLinkedList

class BaseDatos:
    def __init__(self):
        self.__data = None
        self.__cliente = Cliente("","","","","","","","","")
        self.__lista = DLinkedList()

    def getCliente(self):
        return self.__cliente

    def setCliente(self,data):
        self.__cliente=Cliente(data[0], data[1], data[2], data[3], data[4], data[5],"foto", data[6], data[7])

    def getLista(self):
        return self.__lista

    def ListaClientes(self,archivo):
        for data in archivo:
            self.setCliente(data)
            self.__lista.append(self.getCliente())

    def searchCliente(self,id):
        nodo = self.__lista.head
        while nodo.dato.getIdentificacion() != id:
            nodo = nodo.next
            if (nodo == self.__lista.tail):
                if (nodo.dato.getIdentificacion() == id):
                    return nodo.dato
                else:
                    return "!Not Found Client¡"

        return nodo.dato




