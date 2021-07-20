import csv

from DATA.Cliente import Cliente
from Logic.AVLTree.AVLArbol import AVLArbol


class ClienteDAO:
    def __init__(self):
        self.__path = None
        self.__arbol = AVLArbol()
        self.__cliente = Cliente("", "", "", "", "", "", "", "", "")
        self.__root = None
        self.__archivo = None
        self.__id_increment = 0

    def crearAVL(self, archivo):
        for data in archivo:
            self.setCliente(data)
            self.__root = self.__arbol.insert_node(self.__root, self.getClient().getIdentificacion(), self.getCliente())
            self.__id_increment += 1

    def insertarClient(self, client):
        self.setCliente(client)
        self.__root = self.__arbol.insert_node(self.__root, self.getCliente().getIdentificacion(), self.getCliente())
        self.__id_increment += 1

    def getCliente(self):
        return self.__cliente

    def setCliente(self, data):
        self.__cliente= Cliente(int(data[0]), data[1], data[2], data[3], data[4], data[5], "foto", data[6],
                                             data[7])

    def getRoot(self):
        return self.__root

    def deleteCliente(self, root, ID):
        self.__arbol.delete_node(root, ID)
        self.__id_increment -= 1

    def searchID(self, root, key):
        temp = root
        try:
            if temp.key == key:
                return temp.data
            elif key < temp.key:
                return self.searchID(temp.left, key)
            elif key > temp.key:
                return self.searchID(temp.right, key)
        except Exception:
            return "!Not found¡"

    def obtenerPrimero(self):
        return self.__arbol.getMinValueNode(self.__root)

    def existIdentificacion(self, ident):
        if(self.searchID(self.getRoot(),ident).getIdentificacion() == ident):
            return True
        return False

    def agregarClienteArchivo(self):
        myData = self.getCliente().toStringData().split(",")
        myFile = open('../Resources/Data_Cliente/Tabla_Clientees.csv', 'w')
        with myFile:
            writer = csv.writer(myFile)
            writer.writerow(u for u in myData)
        print(">>>>>>>>>>>>>>>  ¡Se creó exitosamente! <<<<<<<<<<<<<<<<")

    def __str__(self, currPtr, indent, last):
        self.__arbol.printHelper(currPtr, indent, last)

    def correolibre(self, ID):
        pass