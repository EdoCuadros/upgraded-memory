import time

from DATA.Cliente import Cliente
from Logic.Listas_Enlazadas.Linked_List import DLinkedList

class BaseDatos:
    def __init__(self):
        self.__data = None
        self.__cliente = Cliente("","","","","","","","","")
        self.__lista = DLinkedList()

    def getCliente(self):
        return self.__cliente
    def setCliente1(self,cliente):
        self.__lista.append(cliente)
    def setCliente(self,data):
        self.__cliente=Cliente(data[0], data[1], data[2], data[3], data[4], data[5],"foto", data[6], data[7])

    def getLista(self):
        return self.__lista

    def ListaClientes(self,archivo):
        for data in archivo:
            self.setCliente(data)
            self.__lista.append(self.getCliente())

    def delete(self,id):
        inicio = time.time()
        element = self.search(id)
        if(element!="!Not Found Client¡"):
            self.__lista.pop(element)
        fin = time.time()
        #print("Tiempo:", fin - inicio, "segundos")
    def existIdentificacion(self,id):
        return self.search(id) != "!Not Found Client¡"

    def actualizarCliente(self,Nombre, Apellido, identificacion, correo, password, telefono, direccion):
        aux = self.search(identificacion)
        aux.setNombre(Nombre)
        aux.setApellido(Apellido)
        aux.setIdentificacion(identificacion)
        aux.setCorreo(correo)
        aux.setPassword(password)
        aux.setTelefono(telefono)
        aux.setDireccion(direccion)

    def search(self,id):
        inicio = time.time()
        nodo = self.__lista.head
        while nodo.dato.getIdentificacion() != id:
            nodo = nodo.next
            if (nodo == self.__lista.tail):
                if (nodo.dato.getIdentificacion() == id):
                    return nodo.dato
                else:
                    return "!Not Found Client¡"
        fin = time.time()
        #print("Tiempo:", fin - inicio, "segundos")
        return nodo.dato




