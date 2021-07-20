from DATA.Incidente import Incidente
from Logic.AVLTree.AVLArbol import AVLArbol


class IncidenteDAO:
    def __init__(self):
        self.__path = None
        self.__arbol = AVLArbol()
        self.__incidente = Incidente("","", "", "", "")
        self.__root = None
        self.__archivo = None
        self.__id_increment = 0

    def crearAVL(self, archivo):
        for data in archivo:
            self.setIncidente(data)
            self.__root = self.__arbol.insert_node(self.__root, self.getIncidente().getId(), self.getIncidente())
            self.__id_increment += 1

    def insertarIncidente(self, client):
        self.setCliente(client)
        self.__root = self.__arbol.insert_node(self.__root, self.getIncidente().getId(), self.getIncidente())
        self.__id_increment += 1

    def getIncidente(self):
        return self.__cliente

    def setIncidente(self, data):
        self.__incidente= Incidente(int(data[0]), data[1], data[2], data[3], data[4])

    def getRoot(self):
        return self.__root

    def deleteIncidente(self,root, ID):
        self.__arbol.delete_node(root, ID)
        self.__id_increment -= 1

    def searchID(self,root, key):
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